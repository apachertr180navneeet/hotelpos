<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Functions;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Session;
use ZipArchive;
use Config;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Reader\Exception;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Worksheet\Drawing;
class ImportController extends Controller {
    public $settings;
    public function __construct() {
        $this->settings = Functions::settings();
        $this->middleware(function ($request, $next){
                Config::set("database.connections.mysql", [
                    "driver" => "mysql",
                    "host" => "localhost",
                    "port" => "3306",
                    "database"=> session('dataBaseName'),
                    "username" => session('dbUser'),
                    "password" => session('dbPassword'),
                ]);
                DB::purge('mysql');
    
            return $next($request);
        });
    }
    public static function permissionStaticPage($menuId) {
        return Functions::permissionStaticPage($menuId);
    }
    public static function showAllDbTables() {
        $dbname = DB::connection()->getDatabaseName();
        $sql = "SELECT t.TABLE_NAME AS myTables FROM INFORMATION_SCHEMA.TABLES AS t WHERE t.TABLE_SCHEMA = '$dbname' ORDER BY t.TABLE_NAME ASC";
        $results = DB::select($sql);
        $columnArr = array();
        $array = array("databaseBackup", "filters", "filter_types", "menus", "modules");
        foreach (Functions::arrayConvert($results) as $row) {
            if (!in_array($row['myTables'], $array)) {
                $columnArr[] = $row['myTables'];
            }
        }
        return $columnArr;
    }
    public function export() {
        require 'public/backend/phpspreadsheet/autoload.php';
        $loanData = DB::table($_POST['tableName'])->get()->toArray();
        $spreadsheet = new Spreadsheet();
        $activeWorksheet = $spreadsheet->getActiveSheet();
        $i = 0;
        $alphas = range('A', 'Z');
        $data = "";
        $columnName = "";
        $vi = 0;
        foreach ($_POST['column'] as $column) {
            if($column == 'permission'){
                 continue;
            }
            if ($column != "0") {
                $columnName .= "{$column}";
                $columnName .= ",";
                $columns[] = $column;
                $activeWorksheet->setCellValue($alphas[$i] . "1", $column);
                $activeWorksheet->getColumnDimension($alphas[$i++])->setAutoSize(true);

            }
            if($_POST['columnName'][$vi]!=''){
                    $columnName .= "{$_POST['columnName'][$vi]}";
                    $columnName .= ",";
                    $columns[] = $_POST['table'][$vi]."--".$_POST['columnName'][$vi];
                    $activeWorksheet->setCellValue($alphas[$i] . "1", $column);
                    $activeWorksheet->getColumnDimension($alphas[$i++])->setAutoSize(true);
            }
            $vi++;
        }
        $rows_count = 2;
        $results = Functions::getData($_POST['tableName']);
        if (!empty($results)) {
            foreach ($results as $columnValue) {
                $abc = 0;
                foreach ($columns as $column) {

                    if (str_contains($column, '--')) { 
                        $explode = explode("--",$column);
                        $newIndex = $abc-1;
                        $foriegn = Functions::getDataWhere($explode[0],$columns[$newIndex],$columnValue[$columns[$newIndex]]);
                        if(!empty($foriegn[0])){
                            $activeWorksheet->setCellValue($alphas[$abc++] . $rows_count, $foriegn[0][$explode[1]]);
                        }else{
                            $activeWorksheet->setCellValue($alphas[$abc++] . $rows_count, 'No Data');
                        }
                        
                    }else{
                        $activeWorksheet->setCellValue($alphas[$abc++] . $rows_count, $columnValue[$column]);
                    }
                    
                    
                }
                $rows_count++;
            }
        }
        $Excel_writer = new Xlsx($spreadsheet);
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="' . $_POST['tableName'] . '' . date("Y-m-d") . '.xlsx"');
        header('Cache-Control: max-age=0');
        $Excel_writer->save('php://output');
        exit;
    }
    public function exportExcelOrders() {
        require 'public/backend/phpspreadsheet/autoload.php';
        $_POST['tableName'] = 'orders';
        $_POST['column'] = array(
            'orderId',
            'customerId',
            'firstName',
            'lastName',
            'name',
            'email',
            'mobile',
            'shippingAddress',
            'paymentMethod',
            'paymentStatus',
            'subTotal',
            'discount',
            'couponAmount',
            'shipping',
            'total',
            'dateAdded',
        );
        $spreadsheet = new Spreadsheet();
        $activeWorksheet = $spreadsheet->getActiveSheet();
        $i = 0;
        $alphas = range('A', 'Z');
        $data = "";
        $columnName = "";
        foreach ($_POST['column'] as $column) {
            if ($column != "0") {
                $columnName .= "{$column}";
                $columnName .= ",";
                $columns[] = $column;
                $activeWorksheet->setCellValue($alphas[$i] . "1", $column);
                $activeWorksheet->getColumnDimension($alphas[$i++])->setAutoSize(true);
            }
        }
        $rows_count = 2;
        if($_POST['startDate']!="" AND $_POST['endDate']!=""){
            $results = DB::select("SELECT * FROM `orders` WHERE dateAdded BETWEEN '".$_POST['startDate']."' AND '".$_POST['endDate']."'");
        }else{
            $results = DB::select("SELECT * FROM `orders`");
        }
        
        $results = Functions::arrayConvert($results);
        //$results = Functions::getData($_POST['tableName']);
        if (!empty($results)) {
            foreach ($results as $columnValue) {
                $abc = 0;
                foreach ($columns as $column) {
                    if ($column == "insertedBy" and $columnValue[$column] > 0) {
                        $user = Functions::getDataWhere("users", "userId", $columnValue[$column]);
                        if (!empty($user[0])) {
                            $columnName .= $user[0]['user_name'];
                        }
                        else {
                            $columnName .= 'No User Data';
                        }
                    }
                    else {
                        if($column=='shippingAddress'){
                            $json = json_decode($columnValue[$column],true);
                            unset($json['addressId']);
                            unset($json['firstName']);
                            unset($json['lastName']);
                            unset($json['customerId']);
                            unset($json['cityId']);
                            unset($json['districtId']);
                            unset($json['stateId']);
                            unset($json['countryId']);
                            unset($json['default']);
                            unset($json['status']);
                            
                            if(isset($json['name'])){
                                $name = $json['name'].",";
                                $name .= $json['company'].",";
                                $name .= $json['email'].",";
                                $name .= $json['mobile'].",";
                                $name .= $json['address1'].",";
                                $name .= $json['address2'].",";
                                $name .= $json['district'].",";
                                $name .= $json['city'].",";
                                $name .= $json['pincode'].",";
                                $name .= $json['state'];
                            }else{
                                $name = "";
                            }
                            $activeWorksheet->setCellValue($alphas[$abc++] . $rows_count, $name);
                        }else{
                            $activeWorksheet->setCellValue($alphas[$abc++] . $rows_count, $columnValue[$column]);
                        }
                        
                    }
                    
                }
                $rows_count++;
                /*$jsonDecode = json_decode($columnValue['products'],true);
                $activeWorksheet->setCellValue("A" . $rows_count,'Heading');
                foreach($jsonDecode as $product){
                    $activeWorksheet->setCellValue("A" . $rows_count,$columnValue['orderId']);
                    $activeWorksheet->setCellValue("B" . $rows_count,$product['productId']);
                    $activeWorksheet->setCellValue("C" . $rows_count,$product['heading']);
                }*/
            }
        }
        $myWorkSheet = new \PhpOffice\PhpSpreadsheet\Worksheet\Worksheet($spreadsheet, 'Products');
        $spreadsheet->addSheet($myWorkSheet, 1);
        $spreadsheet->setActiveSheetIndex(1);
        $activeWorksheet = $spreadsheet->getActiveSheet();
        $activeWorksheet->setCellValue("A1", 'Sno');
        $activeWorksheet->setCellValue("B1", 'OrderID');
        $activeWorksheet->setCellValue("C1", 'ProductId');
        $activeWorksheet->setCellValue("D1", 'Heading');
        $activeWorksheet->setCellValue("E1", 'Code');
        $activeWorksheet->setCellValue("F1", 'Quantity');
        $activeWorksheet->setCellValue("G1", 'SalePrice');
        $activeWorksheet->setCellValue("H1", 'Total');
        $activeWorksheet->setCellValue("I1", 'DateAdded');
        $rows_count = 2;
        
        if($_POST['startDate']!="" AND $_POST['endDate']!=""){
            $results = DB::select("SELECT * FROM `orders` WHERE dateAdded BETWEEN '".$_POST['startDate']."' AND '".$_POST['endDate']."'");
        }else{
            $results = DB::select("SELECT * FROM `orders`");
        }
        
        $results = Functions::arrayConvert($results);
        if (!empty($results)) {
            $v = 1;
            foreach ($results as $columnValue) {
                $jsonDecode = json_decode($columnValue['products'],true);
                foreach($jsonDecode as $product){
                    $activeWorksheet->setCellValue("A" . $rows_count,$v++);
                    $activeWorksheet->setCellValue("B" . $rows_count,$columnValue['orderId']);
                    $activeWorksheet->setCellValue("C" . $rows_count,$product['productId']);
                    $activeWorksheet->setCellValue("D" . $rows_count,$product['heading']);
                    $activeWorksheet->setCellValue("E" . $rows_count,$product['code']);
                    $activeWorksheet->setCellValue("F" . $rows_count,$product['quantity']);
                    $activeWorksheet->setCellValue("G" . $rows_count,$product['salePrice']);
                    $activeWorksheet->setCellValue("H" . $rows_count,$product['total']);
                    $activeWorksheet->setCellValue("I" . $rows_count,$columnValue['dateAdded']);
                    $rows_count++;
                }
            }
        }
        
        
        $Excel_writer = new Xlsx($spreadsheet);
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="' . $_POST['tableName'] . '' . date("Y-m-d") . '.xlsx"');
        header('Cache-Control: max-age=0');
        $Excel_writer->save('php://output');
        exit;
    }
    public static function columnNamesAll($table) {
        $sql = "SHOW COLUMNS FROM $table";
        $results = DB::select($sql);
        $columnArr = array();
        foreach (Functions::arrayConvert($results) as $row) {
            $columnArr[] = $row;
        }
        return $columnArr;
    }
    public function exportAllColumns() {
        $segments = request()->segments();
        $reffer = end($segments);
        $data = "";
        $columnName = "";
        $_POST['column'] = $this->columnNamesAll($segments[2]);
        foreach ($_POST['column'] as $column) {
            if ($column != "0") {
                $columnName .= "{$column['Field']}";
                $columnName .= ",";
                $columns[] = $column['Field'];
            }
        }
        $columnName = substr($columnName, 0, -1);
        $columnName .= "\n";
        $data = $columnName;
        $results = Functions::getData($segments[2]);
        foreach ($results as $columnValue) {
            foreach ($columns as $column) {
                $columnName .= $columnValue[$column] . ",";
            }
            $columnName = substr($columnName, 0, -1);
            $columnName .= "\n";
        }
        $file = 'public/export/export.csv';
        file_put_contents($file, $columnName);
        chmod($file, 0777);
        $this->writetofile("export.csv");
    }
    public function writetofile($myFile) {
        if (!file_exists('public/export/' . $myFile)) {
            echo 'file missing';
        }
        else {
            header('HTTP/1.1 200 OK');
            header('Cache-Control: no-cache, must-revalidate');
            header("Pragma: no-cache");
            header("Expires: 0");
            header("Content-type: text/csv");
            header("Content-Disposition: attachment; filename=$myFile");
            readfile('public/export/' . $myFile);
            exit;
        }
    }
    public function columnNames() {
        $columns = Functions::columnNames($_POST['table']);
        $i = 1;
        foreach ($columns as $column) {
            if ($column['Field'] == 'permission' || $column['Field'] == 'saltDescription' || $column['Field'] == 'desciptionOne' || $column['Field'] == 'desciptionTwo' || $column['Field'] == 'dateModified' || $column['Field'] == 'shippingAddressId' || $column['Field'] == 'paymentAddressId' || $column['Field'] == 'address' || $column['Field'] == 'wishlist'|| $column['Field'] == 'cart'|| $column['Field'] == 'password'|| $column['Field'] == 'passwordResetToken') {
                continue;
            }
            echo '<tr>';
            echo '<td width="20%"><strong>' . $i++ . '</strong></td>';
            echo '<td width="20%"><strong>' . $column['Field'] . '</strong></td>';
            echo '<td width="20%"><input type="text" class="form-control" name="table[]"></td>';
            echo '<td width="20%"><input type="text" class="form-control" name="columnName[]"></td>';
            echo '<td align="right"><input type="checkbox" class="anpfevkffg" value="' . $column['Field'] . '" name="column[]"></td>';
            echo '</tr>';
        }
    }
    public function importExport(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $data['settings'] = $this->settings;
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $data['controllerHeading'] = "Export";
        $chechkMenuStatus = Functions::getDataWhereAll('menus', "link", 'import-export') [0];
        if($chechkMenuStatus['status']==0){
            return redirect('/admin/page-not-found');
        }
        $permission = $this->permissionStaticPage(26);
        if (empty($permission)) {
            return view('admin.no-permission')->with($data);
        }
        else {
            if (!isset($permission['view']) || $permission['view'] == 0) {
                return view('admin.no-permission')->with($data);
            }
            else {
                $data['permission'] = $permission;
                return view('admin.import-export')->with($data);
            }
        }
    }
    public function exportOrdersView(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $data['settings'] = $this->settings;
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $data['controllerHeading'] = "Export Orders";
        $chechkMenuStatus = Functions::getDataWhereAll('menus', "link", 'export-orders') [0];
        if($chechkMenuStatus['status']==0){
            return redirect('/admin/page-not-found');
        }
        $permission = $this->permissionStaticPage(82);
        if (empty($permission)) {
            return view('admin.no-permission')->with($data);
        }
        else {
            if (!isset($permission['view']) || $permission['view'] == 0) {
                return view('admin.no-permission')->with($data);
            }
            else {
                $data['permission'] = $permission;
                return view('admin.export-orders')->with($data);
            }
        }
    }
    public function import(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $data['settings'] = $this->settings;
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $data['controllerHeading'] = "Import";
        $chechkMenuStatus = Functions::getDataWhereAll('menus', "link", 'import') [0];
        if($chechkMenuStatus['status']==0){
            return redirect('/admin/page-not-found');
        }
        $permission = $this->permissionStaticPage(25);
        if (empty($permission)) {
            return view('admin.no-permission')->with($data);
        }
        else {
            if (!isset($permission['view']) || $permission['view'] == 0) {
                return view('admin.no-permission')->with($data);
            }
            else {
                $data['permission'] = $permission;
                return view('admin.import')->with($data);
            }
        }
    }
    public function importExcelFileInDatabase() {
        $data['settings'] = $this->settings;
        $data['method'] = "Import";
        $data['controller'] = $this;
        require 'public/backend/phpspreadsheet/autoload.php';
        $spreadsheet = new Spreadsheet();
        $inputFileType = 'Xlsx';
        $reader = \PhpOffice\PhpSpreadsheet\IOFactory::createReader($inputFileType);
        $reader->setReadDataOnly(true);
        $worksheetData = $reader->listWorksheetInfo($_POST['file']);
        $reader->setLoadSheetsOnly($_POST['sheetName']);
        $spreadsheet = $reader->load($_POST['file']);
        $worksheet = $spreadsheet->getActiveSheet();
        $columns = $worksheet->toArray();
        $columnsCount = count((is_countable($columns) ? $columns : []));
        $count = count((is_countable($columns[0]) ? $columns[0] : []));
        $minus = $columnsCount - 1;
        $packs = 0;
        $packsArray = array();
        for ($a = 1;$a < $columnsCount;$a++) {
            if (trim($columns[$a][0]) != "") {
                for ($i = 0;$i < $count;$i++) {
                    if (isset($columns[$a][$i]) and trim($columns[$a][$i]) != "") {
                        if ($columns[0][$i] == "description") {
                            $insert[$columns[0][$i]] = $columns[$a][$i];
                        }
                        else {
                            $insert[$columns[0][$i]] = $columns[$a][$i];
                        }
                    }
                    else {
                        unset($insert[$columns[0][$i]]);
                    }
                }
                if ($_POST['sheetName'] != "packs" and $_POST['sheetName'] != "relatedProducts") {
                    $countProduct = DB::select("SELECT COUNT(*) AS total FROM " . $_POST['sheetName'] . " WHERE " . $columns[0][0] . " = '" . $columns[$a][0] . "'");
                    $countProduct = Functions::arrayConvert($countProduct);
                    if ($countProduct[0]['total'] == 1) {
                        $insert["update_id"] = $columns[$a][0];
                        $insert["where_column"] = $columns[0][0];
                        if ($_POST['sheetName'] == "products" || $_POST['sheetName'] == "categories") {
                            //$insert['seo'] = $this->seoUrlCheck($this->seoUrl($insert['heading']),$_POST['sheetName'],"seo");
                            
                        }
                    }
                    else {
                        unset($insert["update_id"]);
                        unset($insert["where_column"]);
                        if ($_POST['sheetName'] == "products" || $_POST['sheetName'] == "categories") {
                            $insert['seo'] = $this->seoUrlCheck($this->seoUrl($insert['heading']), $_POST['sheetName'], "seo");
                        }
                    }
                    if ($_POST['sheetName'] == "products") {
                        if ($insert['salePrice'] < 1) {
                            $insert['finalPrice'] = $insert['regularPrice'];
                        }
                        else {
                            $insert['finalPrice'] = $insert['salePrice'];
                        }
                        if ($insert['categoryId'] > 0) {
                            $insert['originalCategoryId'] = $insert['categoryId'];
                            $insert['categoryId'] = $this->getAllParentCategory($insert['categoryId']);
                        }
                        if ($countProduct[0]['total'] == 0) {
                            $insert['image'] = "public/assets/uploads/products/" . $insert['productId'] . ".webp";
                            for ($t = 1;$t < 11;$t++) {
                                $img = "public/assets/uploads/products/" . $insert['productId'] . "-" . $t . ".webp";
                                if (file_exists($img)) {
                                    echo $img;
                                    $images[$insert["productId"]][] = $img;
                                }
                                else {
                                    break;
                                }
                            }
                        }
                        else {
                            $insert['image'] = "public/assets/uploads/products/" . $insert['productId'] . ".webp";
                            for ($t = 1;$t < 11;$t++) {
                                $img = "public/assets/uploads/products/" . $insert['productId'] . "-" . $t . ".webp";
                                if (file_exists($img)) {
                                    $images[$insert["productId"]][] = $img;
                                }
                                else {
                                    break;
                                }
                            }
                        }
                    }
                    //if ($packs == 0) {
                    Functions::setData($_POST['sheetName'], $insert);
                    //}
                    //print_r($images);
                    
                }
                if ($_POST['sheetName'] == "packs") {
                    $productArray = Functions::getDataWhere("products", "productId", $insert['productId']);
                    if (!empty($productArray[0])) {
                        $productPackArray = Functions::getDataWhere("packs", "packId", $insert['packId']);
                        $packsArray[$insert['productId']]['productId'][] = $insert['productId'];
                        $packsArray[$insert['productId']]['heading'][] = $productArray[0]['heading'];
                        $packsArray[$insert['productId']]['size'][] = $insert['size'];
                        $packsArray[$insert['productId']]['quantity'][] = $insert['quantity'];
                        $packsArray[$insert['productId']]['price'][] = $insert['price'];
                        $packsArray[$insert['productId']]['message'][] = $insert['message'];
                        $packsArray[$insert['productId']]['sortOrder'][] = $insert['sortOrder'];
                        $packsArray[$insert['productId']]['packId'][] = $insert['packId'];
                        if (!empty($productPackArray[0])) {
                            $dataPack['packId'] = $insert['packId'];
                            $dataPack['productId'] = $insert['productId'];
                            $dataPack['heading'] = $productArray[0]['heading'];
                            $dataPack['size'] = $insert['size'];
                            $dataPack['quantity'] = $insert['quantity'];
                            $dataPack['price'] = $insert['price'];
                            $dataPack['message'] = $insert['message'];
                            $dataPack['sortOrder'] = $insert['sortOrder'];
                            $dataPack['update_id'] = $insert['packId'];
                            $dataPack['where_column'] = 'packId';
                            Functions::setData("packs", $dataPack);
                        }
                        else {
                            if (isset($dataPack['update_id'])) {
                                unset($dataPack['update_id']);
                                unset($dataPack['where_column']);
                            }
                            $dataPack['packId'] = $insert['packId'];
                            $dataPack['productId'] = $insert['productId'];
                            $dataPack['heading'] = $productArray[0]['heading'];
                            $dataPack['size'] = $insert['size'];
                            $dataPack['quantity'] = $insert['quantity'];
                            $dataPack['price'] = $insert['price'];
                            $dataPack['message'] = $insert['message'];
                            $dataPack['sortOrder'] = $insert['sortOrder'];
                            Functions::setData("packs", $dataPack);
                        }
                    }
                }
                if ($_POST['sheetName'] == "relatedProducts") {
                    $insert["update_id"] = $columns[$a][0];
                    $insert["where_column"] = $columns[0][0];
                    $relateds[$insert["productId"]][] = $insert['relatedProductId'];
                }
            }
        }
        if (!empty($packsArray)) {
            foreach ($packsArray as $key => $value) {
                $array['where_column'] = "productId";
                $array['update_id'] = $key;
                $array['extra'] = json_encode(array("packId" => $packsArray[$key]['packId'], "size" => $packsArray[$key]['size'], "quantity" => $packsArray[$key]['quantity'], "price" => $packsArray[$key]['price'], "sortOrder" => $packsArray[$key]['sortOrder'], "message" => $packsArray[$key]['message']));
                Functions::setData('products', $array);
            }
        }
        if (!empty($images)) {
            unset($insert);
            foreach ($images as $key => $value) {
                $insert["update_id"] = $key;
                $insert["where_column"] = "productId";
                $insert['relatedImages'] = json_encode($value);
                Functions::setData('products', $insert);
            }
        }
        if (!empty($relateds)) {
            unset($insert);
            foreach ($relateds as $key => $value) {
                $insert["update_id"] = $key;
                $insert["where_column"] = "productId";
                $insert['relatedProducts'] = json_encode($value);
                Functions::setData('products', $insert);
            }
        }
        echo json_encode(array("status" => "success"));
    }
    public function seoUrl($string, $separator = '-') {
        $accents_regex = '~&([a-z]{1,2})(?:acute|cedil|circ|grave|lig|orn|ring|slash|th|tilde|uml);~i';
        $special_cases = array('&' => 'and', "'" => '');
        $string = mb_strtolower(trim($string), 'UTF-8');
        $string = str_replace(array_keys($special_cases), array_values($special_cases), $string);
        $string = preg_replace($accents_regex, '$1', htmlentities($string, ENT_QUOTES, 'UTF-8'));
        $string = preg_replace("/[^a-z0-9]/u", "$separator", $string);
        $string = preg_replace("/[$separator]+/u", "$separator", $string);
        return $string;
    }
    public function seoUrlCheck($string, $table, $field) {
        $count = Functions::getDataWhere($table, $field, $string);
        if (!empty($count[0])) {
            $string = $string . " " . mt_rand(111111111, 999999999);
        }
        return Functions::seoUrl($string);
    }
    public function importExcel() {
        $data['settings'] = $this->settings;
        $data['method'] = "Import";
        $data['controller'] = $this;
        require 'public/backend/phpspreadsheet/autoload.php';
        $spreadsheet = new Spreadsheet();
        $inputFileType = 'Xlsx';
        $inputFileName = $_POST['fileName'];
        $reader = \PhpOffice\PhpSpreadsheet\IOFactory::createReader($inputFileType);
        $reader->setReadDataOnly(true);
        $worksheetData = $reader->listWorksheetInfo($inputFileName);
        for ($v = 0;$v < count($worksheetData);$v++) {
            unset($post);
            $reader->setLoadSheetsOnly($worksheetData[$v]['worksheetName']);
            $spreadsheet = $reader->load($inputFileName);
            $worksheet = $spreadsheet->getActiveSheet();
            $columns = $worksheet->toArray();
            $columnsCount = count((is_countable($columns) ? $columns : []));
            $count = count((is_countable($columns[0]) ? $columns[0] : []));
            for ($a = 1;$a < $columnsCount;$a++) {
                for ($i = 0;$i < $count;$i++) {
                    $count2 = \DB::table(strtolower($worksheetData[$v]['worksheetName']))->where($columns[0][0], $columns[$a][0])->count();
                    if ($count2 > 0) {
                        $post['update_id'] = $columns[$a][0];
                        $post['where_column'] = $columns[0][0];
                    }
                    else {
                        unset($post['update_id']);
                        unset($post['where_column']);
                    }
                    $post[$columns[0][$i]] = $columns[$a][$i];
                }
                unset($post[$columns[0][0]]);
                Functions::setData(strtolower($worksheetData[$v]['worksheetName']), $post);
            }
        }
        echo json_encode(array("status" => "success"));
    }
    public function uploadExcel() {
        $file['name'] = $_FILES['file']['name'];
        $file['type'] = $_FILES['file']['type'];
        $file['tmp_name'] = $_FILES['file']['tmp_name'];
        $file['error'] = $_FILES['file']['error'];
        $file['size'] = $_FILES['file']['size'];
        $this->showExcelSheets($this->uploadExcelFile($file) ['message']);
    }
    public function uploadExcelFile($file) {
        $settings = DB::table('settings')->select('*')->where("settingId", 1)->get()->toArray();
        $target_dir = 'public/backend/excel/';
        $rand = mt_rand(111111111, 999999999);
        $target_file = $target_dir . $rand . basename($file["name"]);
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
        $target_file = $target_dir . $rand . "." . $imageFileType;
        if ($file["size"] > $settings[0]->allowedImageSize) {
            $size = $settings[0]->allowedImageSize / 1000;
            $message = "Sorry, Your File Is Too Large, Allowed File Size Is " . $size . " KB";
            return array("status" => "error", "message" => $message);
            $uploadOk = 0;
        }
        if ($uploadOk == 1) {
            move_uploaded_file($file["tmp_name"], $target_file);
        }
        return array("status" => "success", "message" => $target_file);
    }
    public function showExcelSheets($inputFileName) {
        $data['settings'] = $this->settings;
        $data['method'] = "Import";
        $data['controller'] = $this;
        require 'public/backend/phpspreadsheet/autoload.php';
        $spreadsheet = new Spreadsheet();
        $inputFileType = 'Xlsx';
        $reader = \PhpOffice\PhpSpreadsheet\IOFactory::createReader($inputFileType);
        $reader->setReadDataOnly(true);
        $worksheetData = $reader->listWorksheetInfo($inputFileName);
        $i = 0;
        foreach ($worksheetData as $worksheet) {
            if ($i == 0) {
                echo '<div class="btn btn-warning rfyemuxbrk clyddgcpuj" style="margin-right:10px;" data-file="' . $inputFileName . '" data-sheet="' . $worksheet['worksheetName'] . '">' . ucwords(str_replace("_", " ", $worksheet['worksheetName'])) . '</div>';
            }
            else {
                echo '<div class="btn btn-warning rfyemuxbrk" style="margin-right:10px;" data-file="' . $inputFileName . '" data-sheet="' . $worksheet['worksheetName'] . '">' . ucwords(str_replace("_", " ", $worksheet['worksheetName'])) . '</div>';
            }
            $i++;
        }
    }
    public function showExcelSheetData() {
        $data['settings'] = $this->settings;
        $data['method'] = "Import";
        $data['controller'] = $this;
        require 'public/backend/phpspreadsheet/autoload.php';
        $spreadsheet = new Spreadsheet();
        $inputFileType = 'Xlsx';
        $reader = \PhpOffice\PhpSpreadsheet\IOFactory::createReader($inputFileType);
        $reader->setReadDataOnly(true);
        $worksheetData = $reader->listWorksheetInfo($_POST['file']);
        $reader->setLoadSheetsOnly($_POST['sheetName']);
        $spreadsheet = $reader->load($_POST['file']);
        $worksheet = $spreadsheet->getActiveSheet();
        $columns = $worksheet->toArray();
        $columnsCount = count((is_countable($columns) ? $columns : []));
        $count = count((is_countable($columns[0]) ? $columns[0] : []));
        $table = '<table class="table table-bordered" style="margin-top:30px;">';
        for ($a = 0;$a < $columnsCount;$a++) {
            $table .= '<tr>';
            for ($i = 0;$i < $count;$i++) {
                if ($a == 0) {
                    $table .= '<th>' . $columns[0][$i] . '</th>';
                }
                else {
                    $table .= '<td>' . $columns[$a][$i] . '</td>';
                }
            }
            $table .= '</tr>';
            if ($a == 2) {
                break;
            }
        }
        $table .= '</table>';
        echo $table;
    }
    public function uploadImages(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $data['settings'] = $this->settings;
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $data['controllerHeading'] = "Upload Images";
        $permission = $this->permissionStaticPage(27);
        if (empty($permission)) {
            return view('admin.no-permission')->with($data);
        }
        else {
            if (!isset($permission['view']) || $permission['view'] == 0) {
                return view('admin.no-permission')->with($data);
            }
            else {
                $data['permission'] = $permission;
                return view('admin.upload-images')->with($data);
            }
        }
    }
    public function submitUploadZipFolder(Request $request) {
        $valid['file'] = 'required|max:300000';
        $validator = validator($request->all(), $valid);
        if ($validator->fails()) {
            $html = "";
            $errors = Functions::arrayConvert($validator->errors());
            $i = 1;
            foreach ($errors as $key => $value) {
                foreach ($value as $key1 => $value1) {
                    $html .= '<p style="color:white">' . $i++ . ") " . $value1 . '</p>';
                }
            }
            return json_encode(array("status" => "false", "message" => $html));
        }
        unset($_POST['_token']);
        //print_r($_FILES);
        echo $this->uploadImagesFolderZip($_FILES['file']);
    }
    public function uploadImagesFolderZip($file) {
        $target_dir = 'public/assets/uploads/';
        $rand = mt_rand(111111111, 999999999);
        $target_file = $target_dir . $rand . basename($file["name"]);
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
        $target_file = $target_dir . $rand . "." . $imageFileType;
        if ($uploadOk == 1) {
            move_uploaded_file($file["tmp_name"], $target_file);
            $zip = new ZipArchive;
            $res = $zip->open($target_file);
            if ($res === true) {
                $zip->extractTo('public/assets/uploads/');
                $zip->close();
                unlink($target_file);
            }
            else {
                return json_encode(array("status" => "error", "message" => "Unable to extract folder"));
            }
        }
        return json_encode(array("status" => "success", "message" => $target_file));
    }
    public function replace_extension() {
        $files = array_diff(scandir("public/assets/uploads/products/"), array('.', '..'));
        foreach ($files as $file) {
            $explode = explode(".", $file);
            if ($explode[1] != 'webp') {
                rename("public/assets/uploads/products/" . $file, "public/assets/uploads/products/" . $explode[0] . '.webp');
            }
        }
    }
    public static function getAllParentCategory($categoryId) {
        while ($categoryId) {
            $category = Functions::getDataWhere("categories", "categoryId", $categoryId);
            if (!empty($category[0])) {
                $catgoryArray[] = $categoryId;
            }
            $categoryId = $category[0]['parentId'];
            if ($category[0]['parentId'] == 0) {
                return implode(",", array_reverse($catgoryArray));
                break;
            }
        }
    }
    public static function getData($table) {
        return Functions::getData($table);
    }
    public static function getDataWhereOrderBy($table, $where, $value, $orderBy, $orderValue) {
        return Functions::getDataWhereOrderBy($table, $where, $value, $orderBy, $orderValue);
    }
    public static function getDataWhere($table, $where, $value) {
        return Functions::getDataWhere($table, $where, $value);
    }
    public static function getDataWhereSelectBox($table, $where, $value, $operator) {
        return Functions::getDataWhereSelectBox($table, $where, $value, $operator);
    }
    public static function getDataOrderBy($table, $where, $value) {
        return Functions::getDataOrderBy($table, $where, $value);
    }
    public static function message($messageId) {
        return Functions::message($messageId);
    }
}