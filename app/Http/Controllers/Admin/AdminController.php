<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Functions;
use App\Http\Controllers\Admin\PosController;
use App\Mail\SendMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use Config;
use Session;
use Mail;
use Cookie;
class AdminController extends Controller {
    public $settings;
    public $storeSettings;
    public function __construct(Request $request) {
        $this->settings = Functions::settings();
        $this->middleware(function ($request, $next) {
            Config::set("database.connections.mysql", ["driver" => "mysql", "host" => "localhost", "port" => "3306", "database" => session('dataBaseName'), "username" => session('dbUser'), "password" => session('dbPassword'), ]);
            DB::purge('mysql');
            return $next($request);
        });
    }
    public function index(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $data['settings'] = $this->settings;
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $data['customers'] = DB::table('customers')->where('storeId', Session::get('storeId'))->where('userId', Session::get('userId'))->where('softDelete', 0)->where('status', 1)->count();
        $data['ordersCount'] = DB::table('order')->where('storeId', Session::get('storeId'))->where('salesUserId', Session::get('userId'))->where('softDelete', 0)->where('status', 1)->count();
        
        $orderTotal = DB::select("SELECT SUM(total) FROM `order` WHERE storeId='" . Session::get('storeId') . "' AND salesUserId = '".$userId."'");
        $orderTotal = Functions::arrayConvert($orderTotal);
        $data['sales'] = $orderTotal[0]['SUM(total)'];

        $data['subscribers'] = 0;
        $data['popupMessages'] = Functions::getDataWhere("popup_message_list","userId,viewed",Session::get("userId").',0');
        //print_r($data['popupMessages']);
        foreach (Functions::showAllDbTables() as $table) {
            $columns = $this->columnNamesByTable($table);
            $query = DB::select("SELECT * FROM tables WHERE tableName='" . $table . "'");
            $query = Functions::arrayConvert($query);
            if (!empty($query)) {
                DB::update("UPDATE tables SET primaryKeyName='" . $columns[0]['Field'] . "',columns='" . json_encode($columns) . "' WHERE tableId='" . $query[0]['tableId'] . "'");
            }
            else {
                DB::insert("INSERT INTO tables SET tableName='" . $table . "',primaryKeyName='" . $columns[0]['Field'] . "',columns='" . json_encode($columns) . "'");
            }
        }
        return view('admin.dashboard')->with($data);
    }
    public static function getCurrencySymbol() {
        $globalSettings = Functions::settings();
        return Functions::getDataWhere("currencies", "currencyId",$globalSettings['defaultCurrency'])[0]['symbol'];
    }
    public function getDataBaseName() {
        echo Session::get("dataBaseName");
    }
    public function filters() {
        $query = DB::select("SELECT * FROM filters WHERE getDataFrom='" . $_POST['tableName'] . "'");
        $query = Functions::arrayConvert($query);
        echo json_encode(array("primaryColumn" => $query[0]['primaryColumn'], "columnToFetch" => json_decode($query[0]['columnToFetch'], true)));
    }
    public function getFilterForm() {
        $query = DB::select("SELECT * FROM filters WHERE fieldNameReadonly='" . $_POST['fieldNameReadonly'] . "'");
        $query = Functions::arrayConvert($query);
        $query = $this->jsonToArray($query, "additionalAttributes");
        echo json_encode(array("status" => "success", "data" => $query[0]));
    }
    public static function arrayConvert($query) {
        return Functions::arrayConvert($query);
    }
    public function filterForm() {
        $query = DB::select("SELECT * FROM filters WHERE fieldNameReadonly = '" . $_POST['fieldNameReadonly'] . "'");
        $query = Functions::arrayConvert($query);
        unset($_POST['_token']);
        if (!empty($query[0])) {
            if (!isset($_POST['additionalAttributes'])) {
                $_POST['additionalAttributes'] = "";
            }
            else {
                $_POST['additionalAttributes'] = json_encode($_POST['additionalAttributes']);
            }
            $_POST['update_id'] = $query[0]['filterId'];
            $_POST['where_column'] = 'filterId';
            Functions::setData("filters", $_POST);
        }
        else {
            if (!isset($_POST['additionalAttributes'])) {
                $_POST['additionalAttributes'] = "";
            }
            else {
                $_POST['additionalAttributes'] = json_encode($_POST['additionalAttributes']);
            }
            Functions::setData("filters", $_POST);
        }
        echo json_encode(array("status" => "success"));
    }
    public function createFieldsInTable($table, $keys, $length) {
        foreach ($keys as $key => $field) {
            DB::insert("ALTER TABLE " . $table . " ADD " . $key . " VARCHAR( " . $length . " )");
        }
        DB::insert("ALTER TABLE " . $table . " ADD status int(1)");
    }
    public function uploadExcel() {
        $file['name'] = $_FILES['file']['name'];
        $file['type'] = $_FILES['file']['type'];
        $file['tmp_name'] = $_FILES['file']['tmp_name'];
        $file['error'] = $_FILES['file']['error'];
        $file['size'] = $_FILES['file']['size'];
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
    public static function encrypt($string) {
        return Functions::encrypt($string);
    }
    public static function decrypt($string) {
        return Functions::decrypt($string);
    }
    public static function getData($table) {
        return Functions::getData($table);
    }
    public static function setData($table,$array) {
        return Functions::setData($table,$array);
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
    public function unlinkImage() {
        if (unlink($_POST['link'])) {
            echo json_encode(array("status" => "success"));
        }
        else {
            echo json_encode(array("status" => "error"));
        }
    }
    public static function columnNames() {
        $columns = Functions::columnNames($_POST['table']);
        $i = 1;
        foreach ($columns as $column) {
            echo '<tr>';
            echo '<td width="33%"><strong>' . $i++ . '</strong></td>';
            echo '<td width="33%"><strong>' . $column['Field'] . '</strong></td>';
            echo '<td align="right"><input type="checkbox" value="' . $column['Field'] . '" name="column[]"></td>';
            echo '</tr>';
        }
    }
    public static function columnNamesByTable($table) {
        $columns = Functions::columnNames($table);
        return $columns;
    }
    public static function showAllDbTables() {
        return Functions::showAllDbTables();
    }
    public function export() {
        if ($_POST['tableName'] == "") {
            Session::flash('message-success', 'Please select table name to export data');
            Session::flash('alert-class', 'alert-danger');
            return redirect('/admin/import-export');
        }
        $data = "";
        $columnName = "";
        foreach ($_POST['column'] as $column) {
            if ($column != "0") {
                $columnName .= "{$column}";
                $columnName .= ",";
                $columns[] = $column;
            }
        }
        $columnName = substr($columnName, 0, -1);
        $columnName .= "\n";
        $data = $columnName;
        $results = Functions::getData($_POST['tableName']);
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
    public function import() {
        if ($_POST['tableName'] == "" || $_FILES["import"]["tmp_name"] == "") {
            Session::flash('message-success', 'Please select table name or CSV file properly');
            Session::flash('alert-class', 'alert-danger');
            return redirect('/admin/import-export');
        }
        $csvAsArray = array_map('str_getcsv', file($_FILES["import"]["tmp_name"]));
        $columnNameNew = "";
        foreach ($csvAsArray[0] as $columnName) {
            $columnNameNew .= $columnName . ",";
        }
        $columns = substr($columnNameNew, 0, -1);
        $csvAsArray = array_values($csvAsArray);
        if ($_POST['tableName'] != "" and $_FILES["import"]["tmp_name"] != "") {
            for ($i = 0;$i < count($csvAsArray);$i++) {
                $value = "";
                if ($i > 0) {
                    foreach ($csvAsArray[$i] as $val) {
                        $value .= "'" . $val . "',";
                    }
                    $values = substr($value, 0, -1);
                    try {
                        $sql = "INSERT INTO {$_POST['tableName']} ($columns) VALUES ($values)";
                        DB::insert($sql);
                    }
                    catch(\Exception $e) {
                        Session::flash('message-success', $e->getMessage());
                        Session::flash('alert-class', 'alert-danger');
                        return redirect('/admin/import-export');
                    }
                }
            }
        }
        if ($_POST['tableName'] == "" || $_FILES["import"]["tmp_name"] == "") {
            Session::flash('message-success', 'Please select table name or CSV file properly');
            Session::flash('alert-class', 'alert-danger');
        }
        else {
            Session::flash('message-error', 'File imported successfully');
            Session::flash('alert-class', 'alert-success');
        }
        return redirect('/admin/import-export');
    }
    public function page(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $segments = request()->segments();
        $lastSegment = end($segments);
        $data['controller'] = $this;
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['settings'] = $this->settings;
        $content = Functions::getDataWhere('modules', "moduleName", ucwords($lastSegment)) [0];
        $chechkMenuStatus = Functions::getDataWhereAll('menus', "moduleId", $content['moduleId']) [0];
        if ($chechkMenuStatus['status'] == 0) {
            return redirect('/admin/page-not-found');
        }
        $data['moduleId'] = $content['moduleId'];
        $data['controllerHeading'] = $content['pageHeading'];
        $data['controllerClassName'] = strtolower($content['moduleName']);
        $data['tableName'] = $content['moduleTable'];
        $data['tableIdColumn'] = $content['moduleFirstColumn'];
        $data['pageName'] = $content['pageHeading'];
        $data['hideAdd'] = $content['hideAdd'];
        $data['hideAction'] = $content['hideAction'];
        $data['copyTable'] = $content['copyTable'];
        $data['addButtonText'] = $content['addButtonText'];
        $data['copyButtonText'] = $content['copyButtonText'];
        $data['modules'] = array();
        $data['modules'] = json_decode($content['moduleData'], true);
        $menuData = (json_decode($content['moduleData'], true));
        $columns = array();
        $menuData = Functions::reArrangeColumnBySortOrder($menuData);
        if (!empty($menuData)) {
            foreach ($menuData['showInList'] as $key => $value) {
                if ($value == "Yes") {
                    $columns['columnName'][] = $menuData['columnName'][$key];
                    if (isset($menuData['columnCustomName'][$key])) {
                        $columns['columnNameHeading'][] = $menuData['columnCustomName'][$key];
                    }
                    else {
                        $columns['columnNameHeading'][] = Functions::getUpperCasePosition($menuData['columnName'][$key]);
                    }
                }
            }
        }
        $data['modules'] = $columns;
        $data['menuData'] = $menuData;
        $permission = $this->permission($menuData['moduleId']);
        if (empty($permission)) {
            return view('admin.no-permission')->with($data);
        }
        else {
            if (!isset($permission['view']) || $permission['view'] == 0) {
                return view('admin.no-permission')->with($data);
            }
            else {
                if (!isset($permission['edit']) || $permission['edit'] == 0) {
                    $data['hide_add'] = 1;
                }
                $data['permission'] = $permission;
                return view('admin.page')->with($data);
            }
        }
    }
    public function pageNotFound(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/');
        }
        $data['settings'] = $this->settings;
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $data['controllerHeading'] = "Page Not Found";
        return view('admin.page-not-found')->with($data);
    }
    public function login(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId != "") {
            return redirect('/admin/');
        }
        $data['settings'] = $this->settings;
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        return view('admin.login')->with('settings', $this->settings);
    }
    public function logout(Request $request) {
        session()->flush();
        return redirect('/admin/login');
    }
    public function register(Request $request) {
        $data['settings'] = $this->settings;
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        return view('admin.register')->with($data);
    }
    public function languageMessage(Request $request) {
        $data['settings'] = $this->settings;
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $data['messages'] = Functions::getData("messages");
        return view('admin.language-message')->with($data);
    }
    public function saveLanguageMessage(Request $request) {
        $array[$_POST['column']] = $_POST['word'];
        $array['update_id'] = $_POST['id'];
        $array['where_column'] = "messageId";
        Functions::setData("messages",$array);
        echo json_encode(array("status" => "success", "message" => "success"));
    }
    public function loginVerify(Request $request) {
        $valid['email'] = 'required|email';
        $valid['password'] = 'required';
        $validator = validator($request->all(), $valid);
        if ($validator->fails()) {
            $html = "";
            $errors = Functions::arrayConvert($validator->errors());
            $i = 1;
            foreach ($errors as $key => $value) {
                foreach ($value as $key1 => $value1) {
                    $html .= '<p>' . $i++ . ") " . $value1 . '</p>';
                }
            }
            return json_encode(array("status" => "false", "message" => $html));
        }
        //$users = DB::connection('login')->table('users')->select('*')->where("userEmail", $_POST['email'])->where("userPassword", Functions::hash($_POST['password']))->get()->toArray();
        $date = date("Y-m-d");
        $users = DB::connection('login')->select("SELECT * FROM users WHERE email='" . $_POST['email'] . "' AND password='" . Functions::hash($_POST['password']) . "' ");
        $users = Functions::arrayConvert($users);
        if (!empty($users[0])) {
            
            if ($users[0]["status"] == 1) {
                
                if (strtotime($date) < strtotime($users[0]['dateStopAccessingPos'])) {

                    $request->session()->put('userId', $users[0]["databaseUserId"]);
                    $request->session()->put('databaseUserId', $users[0]["userId"]);
                    $request->session()->put('userName', $users[0]["name"]);
                    $request->session()->put('userEmail', $users[0]["email"]);
                    $request->session()->put('userMobile', $users[0]["mobile"]);
                    $request->session()->put('superAdmin', $users[0]["superAdmin"]);
                    $request->session()->put('dataBaseName', $users[0]["dbName"]);
                    $request->session()->put('dbUser', $users[0]["dbUser"]);
                    $request->session()->put('dbPassword', $users[0]["dbPassword"]);
                    $request->session()->put('languageId', 'message');
                    $request->session()->put('roleId', $users[0]["roleId"]);
                    $request->session()->put('loginToken', $users[0]["loginToken"]);
                    $request->session()->put('storeId', 1);
                    Config::set("database.connections.mysql", ["driver" => "mysql", "host" => "localhost", "port" => "3306", "database" => session('dataBaseName'), "username" => session('dbUser'), "password" => session('dbPassword') ]);
                    DB::purge('mysql');
                    if ($users[0]["roleId"] != 1 and $users[0]["superAdmin"] == 'No') {
                        //Config::set("database.connections.mysql", ["driver" => "mysql", "host" => "localhost", "port" => "3306", "database" => $users[0]["dbName"], "username" => $users[0]('dbUser'), "password" => $users[0]('dbPassword')]);
                        $storeSettings = Functions::getDataWhere("store_settings", "storeSettingId", $users[0]["storeId"]);
                        if(empty($storeSettings[0])){
                            echo json_encode(array("status" => "error", "message" => "Store not found or disabled"));
                            return false;
                        }
                        $explodeDates = explode(",", $storeSettings[0]['storeClosingDate']);
                        $todayDate = date("Y-m-d");
                        if (in_array($todayDate, $explodeDates)) {
                            echo json_encode(array("status" => "error", "message" => "Store has been closed today"));
                            return false;
                        }

                        DB::insert("INSERT INTO admin_login_history SET userId='" . $users[0]["userId"] . "'");
                        echo json_encode(array("status" => "success", "message" => "Please wait while we are redirecting you to the dashboard."));
                    
                    }
                    else {
                        Config::set("database.connections.mysql", ["driver" => "mysql", "host" => "localhost", "port" => "3306", "database" => session('dataBaseName'), "username" => session('dbUser'), "password" => session('dbPassword'), ]);
                        DB::purge('mysql');
                        $permission = Functions::getDataWhere("roles", "roleId", $users[0]["roleId"]);
                        if (!empty($permission[0])) {
                            $request->session()->put('permission', json_decode($permission[0]['permission'], true));
                            $request->session()->put('roleId', $users[0]["roleId"]);
                        }
                        else {
                            $request->session()->put('permission', array());
                        }
                        DB::insert("INSERT INTO admin_login_history SET userId='" . $users[0]["userId"] . "'");
                        echo json_encode(array("status" => "success", "message" => "Please wait while we are redirecting you to the dashboard."));
                    }
                }else{
                    echo json_encode(array("status" => "inactive", "message" => "Your account has been disabled by the administrator."));
                }

            } else {
                echo json_encode(array("status" => "inactive", "message" => "Your account has been disabled by the administrator."));
            }
        }
        else {
            echo json_encode(array("status" => "failed", "message" => "Login details are not correct please check your email and password."));
        }
    }
    public function submitDynamicData(Request $request) {
        if ($this->settings['databaseBackup'] == 1) {
            Functions::takeBackup($_POST['table'] . " INSERT / UPDATE BEFORE");
        }
        $settings = PosController::settings();
        $reffer = strtolower($_POST['controllerClassName']);
        $table = $_POST['table'];
        if ($table == "modules") {
            $tableIdColumn = $_POST['moduleFirstColumn'];
        }
        else {
            $tableIdColumn = $_POST['tableIdColumn'];
            $_POST['where_column'] = $_POST['tableIdColumn'];
        }
        $update_id = $_POST['update_id'];
        $token = $_POST['_token'];
        if (isset($_POST['from'])) {
            $from = $_POST['from'];
        }
        unset($_POST['table']);
        unset($_POST['controllerClassName']);
        unset($_POST['moduleName_single']);
        unset($_POST['pageHeading_single']);
        unset($_POST['moduleTable_single']);
        unset($_POST['moduleFirstColumn_single']);
        unset($_POST['tableIdColumn']);
        unset($_POST['page']);
        unset($_POST['frontendRedirectPage']);
        unset($_POST['filedsToReplaceOnMail']);
        unset($_POST['sendMailToAdmin']);
        unset($_POST['_token']);
        unset($_POST['from']);
        $image = 0;
        foreach ($_POST as $key => $value) {
            if ($key != "extra") {
                if (strpos($key, '_validation') !== false) {
                    $normalKey = str_replace('_validation', '', $key);
                    if (strpos($_POST[$key], 'unique') !== false and $_POST['update_id'] > 0) {
                    }
                    else {
                        $valid[$normalKey] = $_POST[$key];
                        if (strpos($_POST[$key], 'mimes') !== false) {
                            if ($_FILES[$normalKey]['name'] == "") {
                                unset($valid[$normalKey]);
                            }
                        }
                        if (!isset($from) and isset($valid[$normalKey]) and $normalKey == "image" and $_FILES['image']['name'] == "" and $valid[$normalKey] != "" and $_POST['update_id'] > 0) {
                            unset($valid[$normalKey]);
                        }
                        $validator = validator($request->all(), $valid);
                        if ($validator->fails()) {
                            $html = "";
                            $errors = Functions::arrayConvert($validator->errors());
                            $i = 1;
                            foreach ($errors as $key => $value) {
                                foreach ($value as $key1 => $value1) {
                                    $html .= '<p style="margin-top:10px;color:white;text-align:left">' . $i++ . ") " . $value1 . '</p>';
                                }
                            }
                            return json_encode(array("status" => false, "message" => $html));
                        }
                    }
                    unset($_POST[$key]);
                }
                if (strpos($key, '_fieldType') !== false) {
                    $normalKey = str_replace('_fieldType', '', $key);
                    if ($_POST[$key] == "password") {
                        if ($_POST[$normalKey] == "") {
                            unset($_POST[$normalKey]);
                        }
                        else {
                            $_POST[$normalKey] = Functions::hash($_POST[$normalKey]);
                        }
                    }
                    if ($_POST[$key] == "file") {
                        $image = 1;
                    }
                    unset($_POST[$key]);
                }
                if (strpos($key, '_fieldAttribute') !== false) {
                    $normalKey = str_replace('_fieldAttribute', '', $key);
                    if ($_POST[$key] == "multiple") {
                        if (isset($_POST[$normalKey])) {
                            $_POST[$normalKey] = json_encode($_POST[$normalKey]);
                        }
                        else {
                            $_POST[$normalKey] = "";
                        }
                    }
                    unset($_POST[$key]);
                }
            }
        }
        $countExtra = 0;
        $valid = array();
        if (!empty($_POST['extra']) and $_POST['extra'] != "") {
            $count = 0;
            foreach ($_POST['extra'] as $key => $value) {
                if (strpos($key, '_fieldType') !== false) {
                    unset($_POST['extra'][$key]);
                }
                else if (strpos($key, '_validation') !== false) {
                    if (isset($_POST['extra'][$key][$count])) {
                        $normalKey = str_replace('_validation', '', $key);
                        $valid['extra'][$normalKey][$count] = $_POST['extra'][$key][$count];
                        $validator = validator($request->all(), $valid);
                        if ($validator->fails()) {
                            $html = "";
                            $errors = Functions::arrayConvert($validator->errors());
                            $i = 1;
                            foreach ($errors as $key => $value) {
                                foreach ($value as $key1 => $value1) {
                                    $html .= '<p style="margin-top:10px;color:white;text-align:left">' . $i++ . ") " . $value1 . '</p>';
                                }
                            }
                            return json_encode(array("status" => false, "message" => $html));
                        }
                        $count++;
                    }
                    unset($_POST['extra'][$key]);
                }
                else if (strpos($key, '_fieldAttribute') !== false) {
                    unset($_POST['extra'][$key]);
                }
                else {
                    $_POST['extra'][$key] = $_POST['extra'][$key];
                }
            }
        }
        else {
            unset($_POST['extra']);
        }
        $array = $_POST;
        if ($update_id == 0) {
            unset($array['where_column']);
        }
        if (!empty($_FILES)) {
            foreach ($_FILES as $key => $value) {
                if ($key == "extra") {
                    if (!empty($_FILES['extra'])) {
                        foreach ($_FILES['extra']['name'] as $key => $value) {
                            $a = 0;
                            foreach ($value as $v) {
                                if ($_FILES['extra']['name'][$key][$a] != "") {
                                    $img['name'] = $_FILES['extra']['name'][$key][$a];
                                    $img['type'] = $_FILES['extra']['type'][$key][$a];
                                    $img['tmp_name'] = $_FILES['extra']['tmp_name'][$key][$a];
                                    $img['error'] = $_FILES['extra']['error'][$key][$a];
                                    $img['size'] = $_FILES['extra']['size'][$key][$a];
                                    $image = Functions::uploadNewImage($img);
                                    if ($image['status'] == "error") {
                                        $html = '<p style="margin-top:10px;color:white;text-align:left">1' . ") " . $image['message'] . '</p>';
                                        return json_encode(array("status" => false, "message" => $html));
                                    }
                                    else {
                                        $array['extra'][$key][$a] = $image['message'];
                                    }
                                }
                                else {
                                    if (isset($_POST['extra'][$key . "_hidden"][$a])) {
                                        $array['extra'][$key][$a] = $_POST['extra'][$key . "_hidden"][$a];
                                        unset($array['extra'][$key . "_hidden"][$a]);
                                    }
                                    else {
                                        $array['extra'][$key][$a] = "";
                                    }
                                    $countExtra = 0;
                                }
                                $a++;
                            }
                            unset($array['extra'][$key . "_hidden"]);
                        }
                    }
                }
                else {
                    if (is_array($_FILES[$key]['name'])) {
                        if ($_POST['update_id'] == 0) {
                            unset($array[$key]);
                        }
                        for ($a = 0;$a < count($_FILES[$key]['name']);$a++) {
                            if (isset($_FILES[$key]['name'][$a]) and $_FILES[$key]['name'][$a] != "") {
                                $img['name'] = $_FILES[$key]['name'][$a];
                                $img['type'] = $_FILES[$key]['type'][$a];
                                $img['tmp_name'] = $_FILES[$key]['tmp_name'][$a];
                                $img['error'] = $_FILES[$key]['error'][$a];
                                $img['size'] = $_FILES[$key]['size'][$a];
                                $image = Functions::uploadNewImage($img);
                                if ($image['status'] == "error") {
                                    $html = '<p style="margin-top:10px;color:white;text-align:left">1' . ") " . $image['message'] . '</p>';
                                    return json_encode(array("status" => false, "message" => $html));
                                }
                                else {
                                    if ($a == 0) {
                                        if (isset($array[$key]) and $array[$key] != "") {
                                            if (is_array($array[$key])) {
                                                $array[$key] = json_encode($array[$key]);
                                            }
                                            $array[$key] = json_decode($array[$key], true);
                                        }
                                        else {
                                            $array[$key] = array();
                                        }
                                    }
                                    array_push($array[$key], $image['message']);
                                    /*
                                    if(isset($array[$key]) AND $array[$key]!=""){
                                            if(is_array($array[$key])){
                                                $array[$key] = json_encode($array[$key]);
                                            }
                                            $array[$key] = json_decode($array[$key], true);
                                        }else{
                                            $array[$key] = array();
                                        }
                                    array_push($array[$key], $image['message']);
                                    */
                                }
                            }
                        }
                        if (isset($array[$key])) {
                            if (!Functions::isJson($array[$key])) {
                                $array[$key] = json_encode($array[$key]);
                            }
                            else {
                                $array[$key] = $array[$key];
                            }
                        }
                    }
                    else {
                        if ($_FILES[$key]['name'] != "") {
                            $image = Functions::uploadNewImage($_FILES[$key]);
                            if ($image['status'] == "error") {
                                $html = '<p style="margin-top:10px;color:white;text-align:left">1' . ") " . $image['message'] . '</p>';
                                return json_encode(array("status" => false, "message" => $html));
                            }
                            else {
                                $array[$key] = $image['message'];
                            }
                        }
                    }
                }
            }
        }
        if (!empty($array['extra'])) {
            $array['extra'] = json_encode($array['extra']);
        }
        else {
            unset($array['extra']);
        }
        try {
            if (isset($_POST['moduleId'])) {
                $content = Functions::getDataWhere('modules', "moduleId", $_POST['moduleId']);
                if (!empty($content)) {
                    $str = str_replace('\\', '', base64_decode($content[0]['submitCodeBefore']));
                    eval("?>$str");
                    unset($array['moduleId']);
                }
            }
            if ($table == "modules") {
                if (trim($array['extraButtons']) != "") {
                    $array['extraButtons'] = base64_encode($array['extraButtons']);
                }
                if (trim($array['submitCodeBefore']) != "") {
                    $array['submitCodeBefore'] = base64_encode($array['submitCodeBefore']);
                }
                if (trim($array['submitCodeAfter']) != "") {
                    $array['submitCodeAfter'] = base64_encode($array['submitCodeAfter']);
                }
                if (trim($array['extraActionOnDeleteButton']) != "") {
                    $array['extraActionOnDeleteButton'] = base64_encode($array['extraActionOnDeleteButton']);
                }
                $array['extraButtons'] = $array['extraButtons'];
                $array['submitCodeBefore'] = $array['submitCodeBefore'];
                $array['submitCodeAfter'] = $array['submitCodeAfter'];
                $array['extraActionOnDeleteButton'] = $array['extraActionOnDeleteButton'];
            }
            if (isset($array['seo']) and $array['update_id'] == 0) {
                $count = Functions::getDataWhere($table, "seo", $array['seo']);
                if (!empty($count)) {
                    $array['seo'] = $array['seo'] . "-" . mt_rand(111111111, 999999999);
                }
            }
            if (!empty($array['relatedImage']) and is_array($array['relatedImage'])) {
                $array['relatedImage'] = json_encode($array['relatedImage']);
            }
            $reply = Functions::setData($table, $array);
            $sendMailArray = array("customers");
            if(in_array($table,$sendMailArray)){
                //Functions::sendMail("CustomerAddedUpdated",$array,"cityId-heading-cities,stateId-heading-states,countryId-heading-countries");
                Functions::sendMail("CustomerAddedUpdated",$array,Functions::settings() ['filedsToReplaceOnMail']);
            }
            if ($table == 'users' and $array['roleId'] == 2 and $array['update_id'] == 0) {
                if ($array['roleId'] == 2) {
                    $getStoreCount = Functions::getData("stores");
                    if (empty($getStoreCount)) {
                        $userId = $reply['insert_id'];
                        $rand = sha1(md5(mt_rand(0000000000, 9999999999)));
                        DB::select("INSERT INTO `stores` (`name`, `tagline`, `email`, `mobile`, `address`, `cityId`, `stateId`, `sortOrder`, `userId`, `softDelete`, `updatedBy`, `insertedBy`, `status`,`storeToken`) VALUES ('Default Shop', 'Default Shop', 'demo@gmail.com', '999999999', 'Your address goes here', 1, 17, 0, $userId, 0, 0, 2, 1,'" . Functions::getToken(50) . "')");
                        $storeId = DB::getPdo()->lastInsertId();
                        DB::select("INSERT INTO `store_settings` (`websiteName`, `websiteLogo`, `adminEmail`, `contactMobile`, `contactEmail`, `address`, `mailJetUsername`, `mailJetPassword`, `mailjetEmail`, `mailjetName`, `mergeLogin`, `databaseBackup`, `fieldsToSendValueOnMail`, `filedsToReplaceOnMail`, `filedsToUnsetOnMails`, `hideAddEditDeleteIfNoStoreSelected`, `enableRewardPoints`, `rewardOnDiscountedProduct`, `minimumRewardPointsToReedem`, `rewardPercentOnProduct`, `walkInCustomerId`, `invoicePrefix`, `storeId`, `userId`, `updatedBy`, `insertedBy`, `status`, `cartAppendStyle`, `orderTypeRequired`, `enableOrderType`, `enableTaxes`, `showStoreInfomation`, `showExtraInformtionPopup`, `showWalletBalance`, `showRewardBalance`, `showAddCustomerBottom`, `salesPersonRequired`, `showSalesPerson`, `showQuickAdd`, `restaurant`, `showModal`, `showBarcode`, `showImage`, `showManufacturers`, `showCategories`, `storeTerms`, `invoiceHeaderText`, `invoiceFooterText`, `defaultInvoiceTemplate`, `defaultKotTemplate`, `defaultOrderStatus`, `cancelledOrderStatus`, `runningOrderStatus`) VALUES ('Default New Shop', 'public/assets/uploads/662747144.png', 'demo@gmail.com', '9999999999', '', 'Your address goes here', '', '', '', '', 0, 1, 'ContactAgent', 'customerId-fullName-customers,propertyId-heading-properties', '', 'customer_group,vendors,customers,manufacturers,products,additional_charges', 1, 1, 0, '10', 1, 'INV-2024-', $storeId, $userId, 2, 1, 1, 'append', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'This article will get you started with creating your own custom Terms and Conditions agreement. We\'ve also put together a Sample Terms and Conditions Template that you can use to help you write your own.', '', '', 1, 3, 1, 3, 2)");
                        DB::select("INSERT INTO `store_payments` (`payments`, `default`, `storeId`, `userId`, `status`) VALUES ('[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"]', 8, $storeId, $userId, 1)");
                    }
                }
            }
            if ($table == 'users') {
                $superAdmin = ($array['roleId'] == 1) ? 'Yes' : 'No';
                if ($array['update_id'] == 0) {
                    $sql = "INSERT INTO users SET ";
                    $sql .= "name='" . $array['userName'] . "',";
                    $sql .= "email='" . $array['userEmail'] . "',";
                    $sql .= "mobile='" . $array['userMobile'] . "',";
                    $sql .= "password='" . $array['userPassword'] . "',";
                    $sql .= "superAdmin='" . $superAdmin . "',";
                    $sql .= "dBname='" . session('dataBaseName') . "',";
                    $sql .= "dbUser='" . session('dbUser') . "',";
                    $sql .= "dbPassword='" . session('dbPassword') . "',";
                    $sql .= "loginToken='" . session('loginToken') . "',";
                    $sql .= "databaseUserId='" . $reply['insert_id'] . "',";
                    $sql .= "storeId='" . $array['storeId'] . "',";
                    $sql .= "roleId='" . $array['roleId'] . "'";
                }
                else {
                    $sql = "UPDATE users SET ";
                    $sql .= "name='" . $array['userName'] . "',";
                    $sql .= "email='" . $array['userEmail'] . "',";
                    $sql .= "mobile='" . $array['userMobile'] . "',";
                    $sql .= "storeId='" . $array['storeId'] . "',";
                    if (isset($array['userPassword']) and $array['userPassword'] != '') {
                        $sql .= "password='" . $array['userPassword']. "',";
                    }
                    $sql .= "superAdmin='" . $superAdmin . "',";
                    $sql .= "dBname='" . session('dataBaseName') . "',";
                    $sql .= "dbUser='" . session('dbUser') . "',";
                    $sql .= "dbPassword='" . session('dbPassword') . "',";
                    $sql .= "loginToken='" . session('loginToken') . "',";
                    $sql .= "roleId='" . $array['roleId'] . "' WHERE databaseUserId='" . $array['update_id'] . "'";
                }
                $query = DB::connection("login")->insert($sql);
            }
            if ($table == 'roles') {
                AdminController::updatePermissions();
            }
            if (isset($from) and $table == 'customer_ledger_wallet') {
                PosController::setCustomerPos($array['customerId']);
                $cust = Functions::getDataWhere("customers","customerId",$array['customerId'])[0];
                $array['email'] = $cust['email'];
                $array['name'] = $cust['name'];
                Functions::sendMail("PaymentInOut",$array,Functions::settings() ['filedsToReplaceOnMail']);
            }
            if (isset($_POST['moduleId'])) {
                $content = Functions::getDataWhere('modules', "moduleId", $_POST['moduleId']);
                if (!empty($content)) {
                    $str = str_replace('\\', '', base64_decode($content[0]['submitCodeAfter']));
                    eval("?>$str");
                    unset($array['moduleId']);
                    unset($_POST['moduleId']);
                }
            }
        }
        catch(\Exception $e) {
            echo json_encode(array("status" => "error", "message" => $e->getMessage()));
            return;
        }
        if (isset($_POST['parentMenu'])) {
            $parentMenu = $_POST['parentMenu'];
            $sortOrder = $_POST['sortOrder'];
            $updateId = $_POST['update_id'];
            $pageName = $_POST['pageHeading'];
        }
        if (isset($parentMenu)) {
            $post['menuHeading'] = $pageName;
            $post['icon'] = '';
            if ($_POST['update_id'] == 0) {
                $post['moduleId'] = $reply['insert_id'];
            }
            else {
                $post['update_id'] = $_POST['update_id'];
                $post['where_column'] = "moduleId";
            }
            $post['status'] = 1;
            $post['sortOrder'] = $sortOrder;
            $post['parentId'] = $parentMenu;
            Functions::setData("menus", $post);
        }
        $reply['reffer'] = $reffer;
        if (isset($from)) {
            if ($table == 'customers') {
                if ($_POST['update_id'] == 0) {
                    $reply['data']['customerId'] = $reply['insert_id'];
                }
                else {
                    $reply['data']['customerId'] = $_POST['update_id'];
                }
                PosController::setCustomerPos($reply['data']['customerId']);
            }
        }
        echo json_encode($reply);
    }
    public function dataTable() {
        $table = $_POST['tableName'];
        $controllerClassName = $_POST['controllerName'];
        $tableIdColumn = $_POST['tableIdColumn'];
        $moduleId = $_POST['moduleId'];
        $modules = Functions::getDataWhere("modules", "moduleId", $moduleId);
        $copyData = $modules[0]['copyTable'];
        $menuData = (json_decode($modules[0]['moduleData'], true));
        $showColumn = array();
        $order = "";
        foreach ($menuData['showInList'] as $key => $value) {
            if ($value == "Yes") {
                $sort[] = $menuData['columnSortOrder'][$key];
                $showColumn[] = $menuData['columnName'][$key];
            }
        }
        $order = substr($order, 0, -1);
        asort($sort);
        foreach ($sort as $k => $v) {
            $orderColumnNew[] = $showColumn[$k];
        }
        $orderColumn = $orderColumnNew;
        $select = ",";
        $vi = 1;
        foreach ($menuData['foreignColumnShow'] as $key => $value) {
            if ($value == "Yes") {
                if (!str_contains($select, $menuData['foreignTable'][$key] . "." . $menuData['foreignColumn'][$key])) {
                    $select .= $menuData['foreignTable'][$key] . "." . $menuData['foreignColumn'][$key] . " as " . $menuData['foreignColumn'][$key] . $vi . ",";
                    $vi++;
                }
            }
        }
        $select = substr($select, 0, -1);
        $sql = "SELECT t.*$select FROM $table AS t";
        foreach ($menuData['foreignColumnShow'] as $key => $value) {
            if ($value == "Yes") {
                $firstColumn = $menuData['foreignTableFirstColumn'][$key];
                if (!str_contains($sql, " LEFT JOIN " . $menuData['foreignTable'][$key])) {
                    $sql .= " LEFT JOIN " . $menuData['foreignTable'][$key] . " ON " . $menuData['foreignTable'][$key] . "." . $menuData['foreignTableFirstColumn'][$key] . " = t." . $firstColumn;
                }
            }
        }
        $where = " WHERE (";
        if (isset($_POST['search']['value'])) {
            $i = 0;
            foreach ($menuData['showInList'] as $key => $value) {
                if ($value == "Yes") {
                    if ($i == 0) {
                        if (!str_contains($where, " t." . $menuData['columnName'][$key] . " LIKE '%" . $_POST['search']['value'] . "%' OR ")) {
                            $where .= " t." . $menuData['columnName'][$key] . " LIKE '%" . $_POST['search']['value'] . "%' OR ";
                        }
                    }
                    else {
                        if (!str_contains($where, " t." . $menuData['columnName'][$key] . " LIKE '%" . $_POST['search']['value'] . "%' OR ")) {
                            $where .= " t." . $menuData['columnName'][$key] . " LIKE '%" . $_POST['search']['value'] . "%' OR ";
                        }
                    }
                }
                $i++;
            }
            foreach ($menuData['foreignColumnShow'] as $key => $value) {
                if ($value == "Yes") {
                    $where .= $menuData['foreignTable'][$key] . "." . $menuData['foreignColumn'][$key] . " LIKE '%" . $_POST['search']['value'] . "%' OR ";
                }
                $i++;
            }
            foreach ($menuData['tableColumnMerge'] as $key => $value) {
                if ($menuData['tableColumnMerge'][$key] != "") {
                    //$where.= $menuData['columnName'][$key] . " LIKE '%" . $_POST['search']['value'] . "%' OR ";
                }
            }
            $where = substr($where, 0, -4);
            $sql .= $where . ")";
        }
        $explode = explode(",", substr($_POST['filters'], 0, -1));
        if (!empty($explode) and $_POST['filters'] != '') {
            $filterWorkingCondition = Functions::getDataWhere("filters", "filterModuleId", $_POST['moduleId']);
            if ($filterWorkingCondition[0]['filterWorkingCondition'] == "") {
                $filterWorkingCondition = "OR";
            }
            $newExplodeArray = array();
            foreach ($explode as $key => $val) {
                $exp = explode("__", $val);
                if ($exp[1] == 'Please Select' || $exp[1] == '') {
                    unset($explode[$key]);
                }
                $newExplodeArray[$exp[0]] = $exp[1];
            }
            $explode = array_values($explode);
            $vi = 1;
            foreach ($explode as $exp) {
                $exp = explode("__", $exp);
                if ($exp[1] == 'Please Select' || $exp[1] == '' || $exp[1] == 'dateEnd') {
                    $vi++;
                    continue;
                }
                if ($vi == 1 and count($explode) == 1) {
                    $sql .= " AND (t." . $exp[0] . "=" . "'" . $exp[1] . "')";
                }
                else if ($vi == 1 and $vi < count($explode) and count($explode) > 1) {
                    if (isset($exp[0]) and $exp[0] == 'dateStart') {
                        $sql .= " AND (DATE(t.dateAdded) BETWEEN '" . $exp[1] . "' AND '" . $newExplodeArray['dateEnd'] . "' ";
                    }
                    else {
                        $sql .= " AND (t." . $exp[0] . "=" . "'" . $exp[1] . "' " . $filterWorkingCondition[0]['filterWorkingCondition'] . " ";
                    }
                }
                else {
                    if ($vi == count($explode)) {
                        if (isset($exp[0]) and $exp[0] == 'dateEnd') {
                            $sql .= ")";
                            continue;
                        }
                        else {
                            $sql .= "t." . $exp[0] . "=" . "'" . $exp[1] . "')";
                        }
                    }
                    else {
                        if (isset($exp[0]) and $exp[0] == 'dateStart') {
                            $sql .= " (DATE(t.dateAdded) BETWEEN '" . $exp[1] . "' AND '" . $newExplodeArray['dateEnd'] . "')";
                        }
                        else {
                            $sql .= "t." . $exp[0] . "=" . "'" . $exp[1] . "' " . $filterWorkingCondition[0]['filterWorkingCondition'] . " ";
                        }
                    }
                }
                $vi++;
            }
        }
        if (Functions::checkIfColumnExists($table, "softDelete") and isset($menuData['listViewSoftDelete']) and $menuData['listViewSoftDelete'] == 'Yes') {
            $sql .= ' AND softDelete=0 ';
        }
        if (Functions::checkIfColumnExists($table, "userId") and $table != 'users' and Session::get('roleId') != 1 and Session::get('storeId') == '') {
            $sql .= " AND t.userId = '" . Session::get('userId') . "'";
        }
        else if (Functions::checkIfColumnExists($table, "storeId") and $table != 'users' and Session::get('roleId') != 1 and Session::get('storeId') != '') {
            $sql .= " AND t.storeId = '" . Session::get('storeId') . "'";
        }
        else if (Functions::checkIfColumnExists($table, "storeId") and $table != 'users' and Session::get('roleId') == 1 and Session::get('storeId') != '') {
            $sql .= " AND t.storeId = '" . Session::get('storeId') . "'";
        }
        if ($table == 'users' and Session::get('roleId') != 1) {
            $sql .= " AND t.insertedBy = '" . Session::get('userId') . "' || t.userId = '" . Session::get('userId') . "'";
        }
        if (isset($_POST['order'])) {
            if (isset($menuData['listViewSortOrder']) and $menuData['listViewSortOrder'] != '') {
                $exp = explode("_", $menuData['listViewSortOrder']);
                $sql .= " ORDER BY t." . $exp[0] . " " . $exp[1];
            }
            else {
                $sql .= " ORDER BY t." . $orderColumn[$_POST['order'][0]['column']] . " " . $_POST['order'][0]['dir'];
            }
        }
        else {
            $sql .= " ORDER BY " . $tableIdColumn . " DESC";
        }
        $sqlPagination2 = $sql;
        if ($_POST['length'] != - 1) {
            $sql .= " LIMIT " . $_POST['length'] . " OFFSET " . $_POST['start'];
        }
        //echo $sql;
        $numRows = Functions::countBySql($sql);
        $allResults = Functions::countBySql($sqlPagination2);
        //$allResults = Functions::count($table);
        if (isset($_POST['search']['value']) and $_POST['search']['value'] != "") {
            $allResults = Functions::countBySql($sqlPagination2);
        }
        $data = array();
        $i = 1;
        $menuData = Functions::reArrangeColumnBySortOrder($menuData);
        $results = DB::select($sql);
        $results = Functions::arrayConvert($results);
        foreach ($results as $row) {
            $subArray = array();
            $i = 0;
            if ($copyData == 'Yes') {
                $subArray[] = '<input type="checkbox" class="pznltryfem selectAllCheckbox" data-table="' . $table . '" data-tableIdColumn="' . $tableIdColumn . '" value="' . $row[$tableIdColumn] . '">';
            }
            foreach ($menuData['showInList'] as $key => $value) {
                if ($value == "Yes") {
                    if ($menuData['columnName'][$key] == "heading" and $_POST['tableName'] == 'categories') {
                        $subArray[] = Functions::getParentCategory($row['categoryId']);
                    }
                    else if ($menuData['foreignTable'][$key] != "") {
                        $firstColumn = Functions::columnNames($menuData['foreignTable'][$key]) [0]['Field'];
                        $array['table'] = $menuData['foreignTable'][$key];
                        $array['whereColumn'] = $firstColumn;
                        $array['whereValue'] = $row[$menuData['columnName'][$key]];
                        $results = json_decode($row[$menuData['columnName'][$key]]);
                        if ($row[$menuData['columnName'][$key]] != "" and $row[$menuData['columnName'][$key]] != "0" and is_array($results)) {
                            if ($this->isJson($row[$menuData['columnName'][$key]]) and !empty($results)) {
                                $implode = implode(',', $results);
                                $GetQ = DB::select("SELECT * FROM " . $array['table'] . " WHERE " . $array['whereColumn'] . " IN (" . $implode . ")");
                                $GetQ = Functions::arrayConvert($GetQ);
                                $va = "";
                                foreach ($GetQ as $get) {
                                    if ($array['whereColumn'] == "categoryId") {
                                        $va .= Functions::getParentCategory($get[$array['whereColumn']]) . "<br>";
                                    }
                                    else {
                                        $va .= $get[$menuData['foreignColumn'][$key]] . "<br>";
                                    }
                                }
                                $subArray[] = $va;
                            }
                            else {
                                $val = Functions::getDataWhere($array['table'], $array['whereColumn'], $array['whereValue']);
                                if (!empty($val[0])) {
                                    $subArray[] = $val[0][$menuData['foreignColumn'][$key]];
                                }
                                else {
                                    $subArray[] = "";
                                }
                            }
                        }
                        else if ($row[$menuData['columnName'][$key]] != "" and $row[$menuData['columnName'][$key]] != "0") {
                            $val = Functions::getDataWhere($array['table'], $array['whereColumn'], $array['whereValue']);
                            if (!empty($val[0])) {
                                $subArray[] = $val[0][$menuData['foreignColumn'][$key]];
                            }
                            else {
                                $subArray[] = "";
                            }
                        }
                        else {
                            $subArray[] = "";
                        }
                    }
                    else if ($menuData['type'][$key] == "image") {
                        if ($this->isJson($row[$menuData['columnName'][$key]])) {
                            $images = '';
                            foreach (json_decode($row[$menuData['columnName'][$key]], true) as $im) {
                                $images .= '<a href="' . url("/") . "/" . $im . '" target="_BLANK"><img src="' . url("/") . "/" . $im . '" style="height:30px;;border-radius:10px;image-rendering: auto;image-rendering: crisp-edges;image-rendering: pixelated;image-rendering: -webkit-optimize-contrast;width:30px;object-fit:cover;margin-right:5px;"></a>';
                            }
                            $subArray[] = $images;
                        }
                        else {
                            if (file_exists($row[$menuData['columnName'][$key]])) {
                                $subArray[] = '<a href="' . url("/") . "/" . $row[$menuData['columnName'][$key]] . '" target="_BLANK"><img src="' . url("/") . "/" . $row[$menuData['columnName'][$key]] . '" style="height:30px;;border-radius:10px;image-rendering: auto;image-rendering: crisp-edges;image-rendering: pixelated;image-rendering: -webkit-optimize-contrast;width:30px;object-fit:cover"></a>';
                            }
                            else {
                                $noImage = "assets/no-image.png";
                                $subArray[] = '<img src="' . url("/") . "/" . $noImage . '" style="height:50px;border-radius:10px;">';
                            }
                        }
                    }
                    else if ((isset($menuData['status']) and $menuData['status'][$key] == "Yes") || $menuData['type'][$key] == "status") {
                        if ($row[$menuData['columnName'][$key]] == "1") {
                            $subArray[] = '<div class="badge badge-success changeStatus" style="cursor:pointer;margin:auto;" data-updateId="' . $row[$menuData['columnName'][0]] . '" data-table="' . $table . '" data-tableIdColumn="' . $tableIdColumn . '" data-status="Enabled">Enabled</div>';
                        }
                        else {
                            $subArray[] = '<div class="badge badge-danger changeStatus" style="cursor:pointer;margin:auto;" data-updateId="' . $row[$menuData['columnName'][0]] . '" data-table="' . $table . '" data-tableIdColumn="' . $tableIdColumn . '" data-status="Disabled">Disabled</div>';
                        }
                    }
                    else if ($menuData['columnName'][$key] == "sortOrder" and $menuData['type'][$key] == "sortOrderUpdateFromOutSide") {
                        $subArray[] = '<input type="text" style="text-indent:15px;width:100px" class="rvsyfunmul" value="' . $row[$menuData['columnName'][$key]] . '" data-updateId="' . $row[$menuData['columnName'][0]] . '" data-table="' . $table . '" data-tableIdColumn="' . $tableIdColumn . '" data-moduleId="' . $moduleId . '">';
                    }
                    else if ($menuData['columnName'][$key] == "featured" and $menuData['type'][$key] == "featuredUpdateFromOutSide") {
                        $sel = '<select class="form-control nmwiikhhkg" data-updateId="' . $row[$menuData['columnName'][0]] . '" data-table="' . $table . '" data-tableIdColumn="' . $tableIdColumn . '" data-moduleId="' . $moduleId . '">';
                        if ($row[$menuData['columnName'][$key]] == "Yes") {
                            $sel .= '<option selected value="Yes">Yes</option>';
                            $sel .= '<option value="No">No</option>';
                        }
                        else {
                            $sel .= '<option value="Yes">Yes</option>';
                            $sel .= '<option selected value="No">No</option>';
                        }
                        $sel .= '</select>';
                        $subArray[] = $sel;
                    }
                    else if ($menuData['type'][$key] == "video") {
                        $subArray[] = '<iframe width="100" height="80" src="https://www.youtube.com/embed/' . $row[$menuData['columnName'][$key]] . '"></iframe>';
                    }
                    else if ($menuData['type'][$key] == "videoThumb") {
                        $subArray[] = '<img src="http://img.youtube.com/vi/' . $row[$menuData['columnName'][$key]] . '/hqdefault.jpg" class="vid-img" style="height:50px;width:70px;">';
                    }
                    else if ($menuData['type'][$key] == "linkInternal") {
                        if ($row[$menuData['columnName'][$key]] != "") {
                            $subArray[] = '<a href="' . url("/") . "/" . $row[$menuData['columnName'][$key]] . '" target="_BLANK">Click Here</a>';
                        }
                        else {
                            $subArray[] = '&nbsp;';
                        }
                    }
                    else if ($menuData['type'][$key] == "linkExternal") {
                        if ($row[$menuData['columnName'][$key]] != "") {
                            $subArray[] = '<a href="' . $row[$menuData['columnName'][$key]] . '" target="_BLANK">Click Here</a>';
                        }
                        else {
                            $subArray[] = '&nbsp;';
                        }
                    }
                    else {
                        if (isset($row["t." . $menuData['columnName'][$key]])) {
                            $val = $row["t." . $menuData['columnName'][$key]];
                        }
                        else {
                            $val = $row[$menuData['columnName'][$key]];
                        }
                        if (isset($menuData['tableColumnMerge'])) {
                            for ($v = 0;$v < count($menuData['tableColumnMerge']);$v++) {
                                if ($menuData['columnName'][$key] == $menuData['tableColumnMerge'][$v]) {
                                    $val .= "<br>" . $row[$menuData['columnName'][$v]];
                                }
                            }
                        }
                        $subArray[] = $val;
                    }
                
                }
            }
            $html = "<div style='text-align:right;display:flex;float:right'>";
            $str = str_replace('\\', '', base64_decode($modules[0]['extraButtons']));
            ob_start();
            eval("?>$str");
            $result = ob_get_clean();

            if($table == "products"){
                $id = '"productId":'.$row['productId'];
                $checkProductInPurchase = DB::select("SELECT products FROM purchases WHERE products LIKE '%".$id."%'");
                $checkProductInPurchase = Functions::arrayConvert($checkProductInPurchase);
                $checkProductInOrder = DB::select("SELECT productId FROM order_product WHERE productId = '".$row['productId']."'");
                $checkProductInOrder = Functions::arrayConvert($checkProductInOrder);
                if(!empty($checkProductInPurchase) || !empty($checkProductInOrder)){
                    $modules[0]['hideDelete'] = 1;
                }else{
                    $modules[0]['hideDelete'] = 0;
                }
            }
            

            $html .= $result;
            if ($modules[0]['hideEdit'] == 0) {
                if ($modules[0]['hideDelete'] == 1) {
                    $html .= '<a href="' . url("/") . '/admin/inner/' . strtolower($controllerClassName) . '/add/' . $row[$tableIdColumn] . '" class="btn btn-warning">E</a>';
                }
                else {
                    $html .= '<a href="' . url("/") . '/admin/inner/' . strtolower($controllerClassName) . '/add/' . $row[$tableIdColumn] . '" class="btn btn-warning" style="margin-right:10px;">E</a>';
                }
            }
            if ($modules[0]['hideDelete'] == 0) {
                if (Functions::checkIfColumnExists($table, "softDelete") and isset($menuData['listViewSoftDelete']) and $menuData['listViewSoftDelete'] == 'Yes') {
                    $html .= "<div data-updateId='" . $row[$menuData['columnName'][0]] . "' data-table='" . $table . "' data-tableIdColumn='" . $tableIdColumn . "' data-moduleId='" . $moduleId . "' href='' class='btn btn-danger softDeleteData'>D</div>";
                }
                else {
                    $html .= "<div data-updateId='" . $row[$menuData['columnName'][0]] . "' data-table='" . $table . "' data-tableIdColumn='" . $tableIdColumn . "' data-moduleId='" . $moduleId . "' href='' class='btn btn-danger deleteData'>D</div>";
                }
            }
            $html .= "</div>";
            if ($modules[0]['hideAction'] == 0) {
                $subArray[] = $html;
            }
            $data[] = $subArray;
            $i++;
        }
        $output = array('draw' => intval($_POST['draw']), 'recordsTotal' => $numRows, 'recordsFiltered' => $allResults, 'data' => $data,);
        echo json_encode($output);
    }
    public function isJson($string) {
        json_decode($string);
        return json_last_error() === JSON_ERROR_NONE;
    }
    public function inner(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login/');
        }
        $data['controller'] = $this;
        $data['settings'] = $this->settings;
        $settings = PosController::settings();
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $segments = request()->segments();
        $data['segments'] = $segments;
        $data['back'] = $segments[2];
        $content = Functions::getDataWhereAll('modules', "moduleName", ucwords($segments[2])) [0];
        if (Session::get("storeId") == '' and in_array($content['moduleTable'], explode(",", $this->settings['hideAddEditDeleteIfNoStoreSelected']))) {
            return redirect('/admin/page/' . strtolower($content['moduleName']));
        }
        $data['moduleId'] = $content['moduleId'];
        $data['controllerHeading'] = $content['pageHeading'];
        $data['controllerClassName'] = $content['moduleName'];
        $data['tableName'] = $content['moduleTable'];
        $data['tableIdColumn'] = $content['moduleFirstColumn'];
        $data['pageName'] = $content['pageHeading'];
        $data['additionalText'] = $content['additionalText'];
        $data['modules'] = json_decode($content['moduleData'], true);
        $menuData = (json_decode($content['moduleData'], true));
        if (count($segments) == 4) {
            for ($i = 0;$i < count($menuData['fieldType']);$i++) {
                $menuData['fieldSelectOperator'][$i] = isset($menuData['fieldSelectOperator'][$i]) ? $menuData['fieldSelectOperator'][$i] : "";
                $fields[] = array("fieldType" => $menuData['fieldType'][$i], "fieldHeading" => $menuData['fieldHeading'][$i], "fieldSortOrder" => $menuData['fieldSortOrder'][$i], "fieldColumn" => $menuData['fieldColumn'][$i], "fieldColumnName" => $menuData['fieldColumnName'][$i], "fieldName" => $menuData['fieldName'][$i], "fieldId" => $menuData['fieldId'][$i], "fieldClass" => $menuData['fieldClass'][$i], "fieldPlaceHolder" => $menuData['fieldPlaceHolder'][$i], "fieldDefaultValue" => $menuData['fieldDefaultValue'][$i], "fieldAttribute" => $menuData['fieldAttribute'][$i], "fieldRequired" => $menuData['fieldRequired'][$i], "fieldValidation" => $menuData['fieldValidation'][$i], "fieldAdditionalAttribute" => $menuData['fieldAdditionalAttribute'][$i],"fieldAdditionalAttribute2" => isset($menuData['fieldAdditionalAttribute2'][$i])?$menuData['fieldAdditionalAttribute2'][$i]:'', "fieldSelectBoxText" => $menuData['fieldSelectBoxText'][$i], "fieldSelectBoxValue" => $menuData['fieldSelectBoxValue'][$i], "fieldSelectTable" => $menuData['fieldSelectTable'][$i], "fieldSelectIdColumn" => $menuData['fieldSelectIdColumn'][$i], "fieldSelectMainColumn" => $menuData['fieldSelectMainColumn'][$i], "fieldSelectWhere" => $menuData['fieldSelectWhere'][$i], "fieldSelectValue" => $menuData['fieldSelectValue'][$i], "fieldSelectOperator" => $menuData['fieldSelectOperator'][$i], "fieldOrderBy" => $menuData['fieldOrderBy'][$i], "fieldOrderByValue" => $menuData['fieldOrderByValue'][$i], "fieldHeadingBefore" => $menuData['fieldHeadingBefore'][$i], "fieldCustomQuery" => (isset($menuData['fieldCustomQuery'][$i])) ? $menuData['fieldCustomQuery'][$i] : "", "fieldCustomFields" => (isset($menuData['fieldCustomFields'][$i])) ? $menuData['fieldCustomFields'][$i] : "");
            }
            usort($fields, function ($item1, $item2) {
                return $item1['fieldSortOrder'] <=> $item2['fieldSortOrder'];
            });
            $data['fieldData'] = $fields;
            $data['addMore'] = array();
            if (!empty($menuData['addMore']['addMoreFieldHeading'])) {
                for ($i = 0;$i < count($menuData['addMore']['addMoreFieldHeading']);$i++) {
                    $addMore[] = array("addMoreFieldType" => $menuData['addMore']['addMoreFieldType'][$i], "addMoreFieldRequired" => $menuData['addMore']['addMoreFieldRequired'][$i], "addMoreFieldHeading" => $menuData['addMore']['addMoreFieldHeading'][$i], "addMoreFieldId" => $menuData['addMore']['addMoreFieldId'][$i], "addMoreFieldClass" => $menuData['addMore']['addMoreFieldClass'][$i], "addMoreFieldPlaceholder" => $menuData['addMore']['addMoreFieldPlaceholder'][$i], "addMoreFieldDefaultValue" => $menuData['addMore']['addMoreFieldDefaultValue'][$i], "addMoreColumn" => $menuData['addMore']['addMoreColumn'][$i], "addMoreSortOrder" => $menuData['addMore']['addMoreSortOrder'][$i], "addMoreDbColumn" => $menuData['addMore']['addMoreDbColumn'][$i], "addMoreSelectTable" => $menuData['addMore']['addMoreSelectTable'][$i], "addMoreSelectIdColumn" => $menuData['addMore']['addMoreSelectIdColumn'][$i], "addMoreSelectMainColumn" => $menuData['addMore']['addMoreSelectMainColumn'][$i], "addMoreSelectWhere" => $menuData['addMore']['addMoreSelectWhere'][$i], "addMoreSelectValue" => $menuData['addMore']['addMoreSelectValue'][$i], "addMoreSelectCustomText" => $menuData['addMore']['addMoreSelectCustomText'][$i], "addMoreSelectCustomValue" => $menuData['addMore']['addMoreSelectCustomValue'][$i], "addMoreValidation" => $menuData['addMore']['addMoreValidation'][$i], "addMoreFieldName" => $menuData['addMore']['addMoreFieldName'][$i]);
                }
                usort($addMore, function ($item1, $item2) {
                    return $item1['addMoreSortOrder'] <=> $item2['addMoreSortOrder'];
                });
                $data['addMore'] = $addMore;
            }
        }
        else {
            $getData = Functions::getDataWhereAll($content['moduleTable'], $content['moduleFirstColumn'], $segments[4]);
            for ($i = 0;$i < count($menuData['fieldType']);$i++) {
                $value = isset($getData[0][$menuData['fieldName'][$i]]) ? $getData[0][$menuData['fieldName'][$i]] : "";
                $menuData['fieldSelectOperator'][$i] = isset($menuData['fieldSelectOperator'][$i]) ? $menuData['fieldSelectOperator'][$i] : "";
                $fields[] = array("fieldType" => $menuData['fieldType'][$i], "fieldHeading" => $menuData['fieldHeading'][$i], "fieldSortOrder" => $menuData['fieldSortOrder'][$i], "fieldColumn" => $menuData['fieldColumn'][$i], "fieldColumnName" => $menuData['fieldColumnName'][$i], "fieldName" => $menuData['fieldName'][$i], "fieldId" => $menuData['fieldId'][$i], "fieldClass" => $menuData['fieldClass'][$i], "fieldPlaceHolder" => $menuData['fieldPlaceHolder'][$i], "fieldDefaultValue" => $value, "fieldAttribute" => $menuData['fieldAttribute'][$i], "fieldRequired" => $menuData['fieldRequired'][$i], "fieldValidation" => $menuData['fieldValidation'][$i], "fieldAdditionalAttribute" => $menuData['fieldAdditionalAttribute'][$i],"fieldAdditionalAttribute2" => isset($menuData['fieldAdditionalAttribute2'][$i])?$menuData['fieldAdditionalAttribute2'][$i]:'', "fieldSelectBoxText" => $menuData['fieldSelectBoxText'][$i], "fieldSelectBoxValue" => $menuData['fieldSelectBoxValue'][$i], "fieldSelectTable" => $menuData['fieldSelectTable'][$i], "fieldSelectIdColumn" => $menuData['fieldSelectIdColumn'][$i], "fieldSelectMainColumn" => $menuData['fieldSelectMainColumn'][$i], "fieldSelectWhere" => $menuData['fieldSelectWhere'][$i], "fieldSelectValue" => $menuData['fieldSelectValue'][$i], "fieldSelectOperator" => $menuData['fieldSelectOperator'][$i], "fieldOrderBy" => $menuData['fieldOrderBy'][$i], "fieldOrderByValue" => $menuData['fieldOrderByValue'][$i], "fieldHeadingBefore" => $menuData['fieldHeadingBefore'][$i], "fieldCustomQuery" => (isset($menuData['fieldCustomQuery'][$i])) ? $menuData['fieldCustomQuery'][$i] : "", "fieldCustomFields" => (isset($menuData['fieldCustomFields'][$i])) ? $menuData['fieldCustomFields'][$i] : "");
            }
            usort($fields, function ($item1, $item2) {
                return $item1['fieldSortOrder'] <=> $item2['fieldSortOrder'];
            });
            $data['fieldData'] = $fields;
            $data['addMore'] = array();
            if (!empty($menuData['addMore']['addMoreFieldHeading'])) {
                $json = json_decode($getData[0]['extra'], true);
                $addMore = array();
                for ($i = 0;$i < count($menuData['addMore']['addMoreFieldHeading']);$i++) {
                    $addMore[] = array("addMoreFieldType" => $menuData['addMore']['addMoreFieldType'][$i], "addMoreFieldRequired" => $menuData['addMore']['addMoreFieldRequired'][$i], "addMoreFieldHeading" => $menuData['addMore']['addMoreFieldHeading'][$i], "addMoreFieldId" => $menuData['addMore']['addMoreFieldId'][$i], "addMoreFieldClass" => $menuData['addMore']['addMoreFieldClass'][$i], "addMoreFieldPlaceholder" => $menuData['addMore']['addMoreFieldPlaceholder'][$i], "addMoreFieldDefaultValue" => $value, "addMoreColumn" => $menuData['addMore']['addMoreColumn'][$i], "addMoreSortOrder" => $menuData['addMore']['addMoreSortOrder'][$i], "addMoreDbColumn" => $menuData['addMore']['addMoreDbColumn'][$i], "addMoreSelectTable" => $menuData['addMore']['addMoreSelectTable'][$i], "addMoreSelectIdColumn" => $menuData['addMore']['addMoreSelectIdColumn'][$i], "addMoreSelectMainColumn" => $menuData['addMore']['addMoreSelectMainColumn'][$i], "addMoreSelectWhere" => $menuData['addMore']['addMoreSelectWhere'][$i], "addMoreSelectValue" => $menuData['addMore']['addMoreSelectValue'][$i], "addMoreSelectCustomText" => $menuData['addMore']['addMoreSelectCustomText'][$i], "addMoreSelectCustomValue" => $menuData['addMore']['addMoreSelectCustomValue'][$i], "addMoreValidation" => $menuData['addMore']['addMoreValidation'][$i], "addMoreFieldName" => $menuData['addMore']['addMoreFieldName'][$i]);
                }
                usort($addMore, function ($item1, $item2) {
                    return $item1['addMoreSortOrder'] <=> $item2['addMoreSortOrder'];
                });
                $data['addMore'] = $addMore;
                $countEditkey = 0;
                if (!empty($json)) {
                    foreach ($json as $key => $value) {
                        $countEditkey = count($value);
                        break;
                    }
                }
                $data['addMoreData'] = array("json" => $json, "countEditkey" => $countEditkey);
            }
        }
        $permission = $this->permission($content['moduleId']);
        if (empty($permission)) {
            return view('admin.no-permission')->with($data);
        }
        else {
            if (!isset($permission['view']) || $permission['view'] == 0) {
                return view('admin.no-permission')->with($data);
            }
            else {
                $data['permission'] = $permission;
                if (!isset($permission['edit']) || $permission['edit'] == 0) {
                    $data['hide_submit'] = 1;
                }
                return view('admin.inner')->with($data);
            }
        }
    }
    public function dynamicAutosuggestive() {
        if (isset($_POST['searchTerm'])) {
            $table = $_POST['table'];
            $valueColumn = $_POST['valueColumn'];
            $idColumn = $_POST['idColumn'];
            $searchTerm = $_POST['searchTerm'];
            $sql = "SELECT * FROM " . $table . " WHERE ";
            $explods = explode(",", $valueColumn);
            $i = 1;
            foreach ($explods as $explode) {
                if ($i == 1) {
                    $sql .= $explode . " LIKE '%" . $searchTerm . "%'";
                }
                else {
                    $sql .= " OR " . $explode . " LIKE '%" . $searchTerm . "%'";
                }
                $i++;
            }
            $results = DB::select($sql);
            $results = Functions::arrayConvert($results);
            if (!empty($results)) {
                foreach ($results as $data) {
                    $text = "";
                    $explods = explode(",", $valueColumn);
                    foreach ($explods as $explode) {
                        $text .= $data[$explode] . " - ";
                    }
                    $text = rtrim($text, " - ");
                    $pro[] = array("id" => $data[$_POST['idColumn']], "text" => $text);
                }
                return json_encode($pro);
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }
    public function changeStatus() {
        if ($_POST['status'] == "Enabled") {
            $post['status'] = "0";
        }
        else {
            $post['status'] = "1";
        }
        $post['update_id'] = $_POST['updateId'];
        $post['where_column'] = $_POST['id'];
        Functions::setData($_POST['table'], $post);
    }
    public function randomAlphanumeric($length) {
        $chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $my_string = '';
        for ($i = 0;$i < $length;$i++) {
            $pos = mt_rand(0, strlen($chars) - 1);
            $my_string .= substr($chars, $pos, 1);
        }
        return $my_string;
    }
    public function deleteData() {
        if ($this->settings['databaseBackup'] == 1) {
            Functions::takeBackup($_POST['table'] . " INSERT / UPDATE BEFORE");
        }
        if (isset($_POST['moduleId'])) {
            $content = Functions::getDataWhere('modules', "moduleId", $_POST['moduleId']);
            $str = str_replace('\\', '', base64_decode($modules[0]['extraActionOnDeleteButton']));
            eval("?>$str");
        }
        $post['whereColumn'] = $_POST['column'];
        $post['whereId'] = $_POST['id'];
        Functions::deleteData($_POST['table'], $post);
        if ($_POST['table'] == 'order') {
            Functions::deleteData('order_product', $post);
            Functions::deleteData('order_total', $post);
            Functions::deleteData('order_history', $post);
        }
        echo json_encode(array("status" => "success"));
    }
    public function softDeleteData() {
        if ($this->settings['databaseBackup'] == 1) {
            Functions::takeBackup($_POST['table'] . " INSERT / UPDATE BEFORE");
        }
        if (isset($_POST['moduleId'])) {
            $content = Functions::getDataWhere('modules', "moduleId", $_POST['moduleId']);
            $str = str_replace('\\', '', base64_decode($modules[0]['extraActionOnDeleteButton']));
            eval("?>$str");
        }
        $post['whereColumn'] = $_POST['column'];
        $post['whereId'] = $_POST['id'];
        Functions::softDeleteData($_POST['table'], $post);
        echo json_encode(array("status" => "success"));
    }
    public function restoreDatabase() {
        /*if($this->settings['databaseBackup']==1){
            Functions::takeBackup($_POST['table'] . " INSERT / UPDATE BEFORE");
        }*/
        $this->restoreMysqlDB($_POST['database']);
    }
    public function restoreMysqlDB($filePath) {
        $sql = '';
        $error = '';
        if (file_exists($filePath)) {
            $lines = file($filePath);
            foreach ($lines as $line) {
                if (substr($line, 0, 2) == '--' || $line == '') {
                    continue;
                }
                $sql .= $line;
                if (substr(trim($line), -1, 1) == ';') {
                    $result = DB::select($sql);
                    $sql = '';
                }
            }
            if ($error) {
                $response = array("type" => "error", "message" => $error);
            }
            else {
                $response = array("type" => "success", "message" => "Database Restore Completed Successfully.");
            }
        }
        return $response;
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
    public static function getIdValue($array, $table, $column, $forignColumn, $columnType = false, $customeColumnName = false) {
        foreach ($array as $key => $value) {
            foreach ($array[$key] as $key1 => $value1) {
                if ($key1 == $column) {
                    if ($columnType == false) {
                        if ($customeColumnName != false) {
                            $val = Functions::getDataWhere($table, $column, $value1);
                            if (!empty($val)) {
                                //print_r($customeColumnName);
                                $explode = explode(",", $customeColumnName);
                                if (count($explode) == 1) {
                                    $array[$key][$explode[0]] = $val[0][$forignColumn];
                                }
                                else {
                                    $explodeForignColumn = explode(",", $forignColumn);
                                    for ($i = 0;$i < count($explode);$i++) {
                                        $array[$key][$explode[$i]] = $val[0][$explodeForignColumn[$i]];
                                    }
                                }
                            }
                            else {
                                $array[$key]['message'] = 'Check For Disabled Or Delete Values ' . $table;
                                return $array;
                            }
                        }
                        else {
                            $array[$key][$key1] = Functions::getDataWhere($table, $column, $value1) [0][$forignColumn];
                        }
                    }
                    else {
                        $ar = array();
                        $exps = json_decode($value1, true);
                        foreach ($exps as $exp) {
                            $dynmaicData = Functions::getDataWhere($table, $column, $exp);
                            if (!empty($dynmaicData[0])) {
                                $ar[$exp] = Functions::getDataWhere($table, $column, $exp) [0][$forignColumn];
                            }
                        }
                        if ($customeColumnName != false) {
                            $array[$key][$customeColumnName] = $ar;
                        }
                        else {
                            $array[$key][$key1] = $ar;
                        }
                    }
                }
            }
        }
        return $array;
    }
    public function jsonToArray($array, $columnName = false) {
        foreach ($array as $key => $value) {
            foreach ($array[$key] as $key1 => $value1) {
                if ($key1 == $columnName) {
                    $array[$key][$key1] = json_decode($value1, true);
                }
            }
        }
        return $array;
    }
    public function removeFieldFromArray($array, $field) {
        foreach ($array as $key => $value) {
            foreach ($array[$key] as $key1 => $value1) {
                if ($key1 == $field) {
                    unset($array[$key][$key1]);
                }
            }
        }
        return $array;
    }
    public function addUrlToImage($array, $field) {
        foreach ($array as $key => $value) {
            foreach ($array[$key] as $key1 => $value1) {
                $explode = explode(",", $field);
                if (count($explode) == 1 and $key1 == $field) {
                    if ($value1 != '') {
                        $array[$key][$key1] = url('/') . '/' . $value1;
                    }
                }
                else {
                    for ($i = 0;$i < count($explode);$i++) {
                        if ($key1 == $explode[$i]) {
                            if ($value1 != '') {
                                $array[$key][$key1] = url('/') . '/' . $value1;
                            }
                        }
                    }
                }
            }
        }
        return $array;
    }
    public function setArrayAscDescByKeyValue($results, $field, $sort = SORT_ASC) {
        $array = array();
        foreach ($results as $key => $row) {
            $array[$key] = $row[$field];
        }
        array_multisort($array, $sort, $results);
        return $array;
    }
    public function GetDrivingDistance($lat1, $lat2, $long1, $long2) {
        $url = "https://maps.googleapis.com/maps/api/distancematrix/json?units=metric&origins=" . $lat1 . "," . $long1 . "&destinations=" . $lat2 . "," . $long2 . "&mode=driving&key=AIzaSyCeVmtHvHA8qXWLzXguVwlw2JNn6W07U8A";
        $response = file_get_contents($url);
        $response_a = json_decode($response, true);
        if (isset($response_a['rows'][0]['elements'][0]['distance']['text'])) {
            $dist = $response_a['rows'][0]['elements'][0]['distance']['text'];
            $time = $response_a['rows'][0]['elements'][0]['duration']['text'];
        }
        else {
            $dist = '';
            $time = '';
        }
        return array('distance' => $dist, 'time' => $time);
    }
    public function takeBackupButton() {
        Functions::takeBackup("Take backup");
    }
    public static function checkIfColumnExists($table, $column) {
        return Functions::checkIfColumnExists($table, $column);
    }
    public function userRoles(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $chechkMenuStatus = Functions::getDataWhereAll('menus', "link", 'userroles') [0];
        if ($chechkMenuStatus['status'] == 0) {
            return redirect('/admin/page-not-found');
        }
        $data['settings'] = $this->settings;
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $segments = request()->segments();
        $lastSegment = end($segments);
        $permission = $this->permissionStaticPage(21);
        if (empty($permission)) {
            return view('admin.no-permission')->with($data);
        }
        else {
            if (!isset($permission['view']) || $permission['view'] == 0) {
                return view('admin.no-permission')->with($data);
            }
            else {
                $data['permission'] = $permission;
                if ($lastSegment == "add" || is_numeric($lastSegment)) {
                    if (is_numeric($lastSegment)) {
                        $data['update_id'] = $lastSegment;
                        $content = Functions::getDataWhere("roles", "roleId", $lastSegment) [0];
                        $data['content']['heading'] = $content['heading'];
                        $data['content']['permission'] = json_decode($content['permission'], true);
                    }
                    else {
                        $data['update_id'] = 0;
                        $data['content']['heading'] = "";
                        $data['content']['permission'] = array();
                    }
                    $data['menus'] = Functions::getDataWhereOrderBy("menus", "parentId", "0", "sortOrder", "ASC");
                    return view('admin.add-user-roles')->with($data);
                }
                return view('admin.user-roles')->with($data);
            }
        }
    }
    public function dataTableUserRoles(Request $request) {
        $table = "roles";
        $orderColumn = array("roleId", "heading");
        $sql = "SELECT * FROM roles";
        if (isset($_POST['search']['value']) and $_POST['search']['value'] != "") {
            $sql .= " WHERE heading LIKE '%" . $_POST['search']['value'] . "%'";
        }
        if (isset($_POST['order'])) {
            $sql .= " ORDER BY " . $orderColumn[$_POST['order'][0]['column']] . " " . $_POST['order'][0]['dir'];
        }
        else {
            $sql .= " ORDER BY roleId DESC";
        }
        if ($_POST['length'] != - 1) {
            $sql .= " LIMIT " . $_POST['length'] . " OFFSET " . $_POST['start'];
        }
        $modules = DB::select($sql);
        $data = array();
        $i = 1;
        $permission = $this->permissionStaticPage(21);
        foreach ($modules as $row) {
            //if ( $row->roleId == 1 ) { continue; }
            $subArray = array();
            $subArray[] = $row->roleId;
            $subArray[] = $row->heading;
            $subArray[] = Functions::getDataWhere("users", "userId", $row->insertedBy) [0]['userName'];
            if (isset($permission['edit']) and $permission['edit'] == 1) {
                $txt = "E";
                $class = "warning";
            }
            else {
                $txt = "V";
                $class = "info";
            }
            $button = '<a class="btn btn-' . $class . '" style="margin-left:5px;"  href="' . url("/") . '/admin/userroles/add/' . $row->roleId . '">' . $txt . '</a>';
            if (isset($permission['edit']) and $permission['edit'] == 1) {
                $button .= '<div class="btn btn-danger delete" style="margin-left:5px;" data-page="roles" data-id="' . $row->roleId . '" data-column="roleId">D</a></div>';
            }
            $subArray[] = '<div class="pull-right">' . $button . '</div>';
            $data[] = $subArray;
            $i++;
        }
        $sql = "SELECT COUNT(*) AS total FROM roles";
        if (isset($_POST['search']['value']) and $_POST['search']['value'] != "") {
            $sql .= " AND heading LIKE '%" . $_POST['search']['value'] . "%'";
        }
        $count = DB::select($sql);
        $count = Functions::arrayConvert($count) [0]['total'];
        $numRows = $count;
        $allResults = $count;
        $output = array('draw' => intval($_POST['draw']), 'recordsTotal' => $numRows, 'recordsFiltered' => $allResults, 'data' => $data);
        echo json_encode($output);
    }
    public static function permission($moduleId) {
        $menuId = Functions::getDataWhere("menus", "moduleId", $moduleId) [0]['menuId'];
        $permission = session()->get('permission');
        $per = array();
        if ($permission != "") {
            $edit = array();
            $view = array();
            if (!empty($permission['view'])) {
                $view = $permission['view'];
            }
            if (!empty($permission['edit'])) {
                $edit = $permission['edit'];
            }
            if (in_array($menuId, $view)) {
                $per['view'] = 1;
            }
            if (in_array($menuId, $edit)) {
                $per['edit'] = 1;
            }
        }
        return $per;
    }
    public static function permissionStaticPage($menuId) {
        return Functions::permissionStaticPage($menuId);
    }
    public static function updatePermissions() {
        $permission = Functions::getDataWhere("roles", "roleId", Session::get("roleId"));
        if (!empty($permission[0])) {
            session()->put('permission', json_decode($permission[0]['permission'], true));
        }
        else {
            session()->put('permission', array());
        }
    }
    public static function alterTable() {
        $segments = request()->segments();
        $lastSegment = end($segments);
        DB::select('ALTER TABLE ' . $lastSegment . '
        ADD`sortOrder` int(11) NOT NULL DEFAULT 0,
        ADD`updatedBy` int(11) NOT NULL,
        ADD`insertedBy` int(11) NOT NULL DEFAULT 0,
        ADD`dateUpdated` datetime NOT NULL,
        ADD`dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
        ADD`softDelete` int(1) NOT NULL DEFAULT 0,
        ADD`storeId` int(11) NOT NULL DEFAULT 0,
        ADD `userId` int(11) NOT NULL DEFAULT 0 AFTER `status`');
    }
    public static function filterDescriptionForModules($input) {
        return Functions::filterDescriptionForModules($input);
    }
    public static function generateModuleData($moduleId) {
        return Functions::generateModuleData($moduleId);
    }
    public function selectStore() {
        if ($_POST['storeId'] != '') {
            if (Session::get("roleId") == 1) {
                Session::put("originalUserIdStore", Session::get("userId"));
                Session::put("originalRoleIdStore", Session::get("roleId"));
                Session::put("originalUserId", Session::get("userId"));
                Session::put("originalRoleId", Session::get("roleId"));
            }
            Session::put("storeId", $_POST['storeId']);
            $store = Functions::getDataWhere("stores", "storeId", $_POST['storeId']);
            Session::put("userId", $store[0]['userId']);
            $user = Functions::getDataWhere("users", "userId", $store[0]['userId']);
            Session::put("roleId", $user[0]['roleId']);
        }
        else {
            /*if(Session::get("userId")!=Session::get("originalUserId")){
             }*/
            //Session::put("userId",Session::get("originalUserIdStore"));
            //Session::put("roleId",Session::get("originalRoleIdStore"));
            Session::forget("originalUserIdStore");
            Session::forget("originalRoleIdStore");
            Session::forget("storeId");
        }
        $this->updatePermissions();
    }
    public function selectUser() {
        if ($_POST['userId'] != '') {
            if (Session::get("roleId") == 1) {
                Session::put("originalUserIdStore", Session::get("userId"));
                Session::put("originalRoleIdStore", Session::get("roleId"));
                Session::put("originalUserId", Session::get("userId"));
                Session::put("originalRoleId", Session::get("roleId"));
            }
            Session::put("userId", $_POST['userId']);
            $user = Functions::getDataWhere("users", "userId", $_POST['userId']);
            Session::put("roleId", $user[0]['roleId']);
        }
        else {
            Session::put("userId", Session::get("originalUserId"));
            Session::put("roleId", Session::get("originalRoleId"));
            Session::forget("originalUserId");
            Session::forget("originalRoleId");
        }
        $this->updatePermissions();
    }
    public static function image($image) {
        return Functions::image($image);
    }
    public static function message($messageId) {
        return Functions::message($messageId);
    }
    public static function updateCustomerWallet($customerId) {
        PosController::updateCustomerWallet($customerId);
    }
    public static function updateCustomerReward($customerId) {
        PosController::updateCustomerReward($customerId);
    }
    public function selectLanguage() {
        Session::put("languageId", $_POST['languageId']);
    }
    public static function moduleShortCode($moduleId) {
        $module = Functions::getDataWhere("modules", "moduleId", $moduleId);
        return $module[0];
    }
    public function copyDatabase() {
        $filePath = "public\backup\default.sql";
        $sql = '';
        $error = '';
        if (file_exists($filePath)) {
            $lines = file($filePath);
            foreach ($lines as $line) {
                if (substr($line, 0, 2) == '--' || $line == '') {
                    continue;
                }
                $sql .= $line;
                if (substr(trim($line), -1, 1) == ';') {
                    $result = DB::select($sql);
                    $sql = '';
                }
            }
            if ($error) {
                $response = array("type" => "error", "message" => $error);
            }
            else {
                $response = array("type" => "success", "message" => "Database Restore Completed Successfully.");
            }
        }
        return $response;
    }
    public function users(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/');
        }
        $data['settings'] = $this->settings;
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $data['controllerHeading'] = "Pos Users";
        $segments = request()->segments();
        $lastSegment = end($segments);
        if ($lastSegment == "add") {
            $data['update_id'] = 0;
            $data['content']['name'] = "";
            $data['content']['superAdmin'] = "";
            $data['databaseUserId'] = 0;
            $data['content']['email'] = "";
            $data['content']['mobile'] = "";
            $data['content']['password'] = "";
            $data['content']['dbName'] = "";
            $data['content']['dbUser'] = "";
            $data['content']['dbPassword'] = "";
            $data['content']['roles'] = Functions::getData("roles");
            $data['content']['roleId'] = "";
            $data['content']['status'] = "1";
            $data['content']['dateStopAccessingPos'] = date("Y-m-d");
            $data['content']['loginToken'] = Functions::getToken(50);
            return view('admin.add-pos-users')->with($data);
        }
        else if (is_numeric($lastSegment)) {
            $getLoginData = DB::connection("login")->select("SELECT * FROM users WHERE userId='" . $lastSegment . "'");
            $getLoginData = Functions::arrayConvert($getLoginData);
            $data['update_id'] = $lastSegment;
            $data['content']['name'] = $getLoginData[0]['name'];
            $data['content']['superAdmin'] = $getLoginData[0]['superAdmin'];
            $data['databaseUserId'] = $getLoginData[0]['databaseUserId'];
            $data['content']['email'] = $getLoginData[0]['email'];
            $data['content']['mobile'] = $getLoginData[0]['mobile'];
            $data['content']['password'] = $getLoginData[0]['password'];
            $data['content']['dbName'] = $getLoginData[0]['dbName'];
            $data['content']['dbUser'] = $getLoginData[0]['dbUser'];
            $data['content']['dbPassword'] = $getLoginData[0]['dbPassword'];
            $data['content']['roles'] = Functions::getData("roles");;
            $data['content']['roleId'] = $getLoginData[0]['roleId'];
            $data['content']['loginToken'] = $getLoginData[0]['loginToken'];
            $data['content']['status'] = $getLoginData[0]['status'];
            $data['content']['dateStopAccessingPos'] = $getLoginData[0]['dateStopAccessingPos'];
            return view('admin.add-pos-users')->with($data);
        }
        else {
            return view('admin.users')->with($data);
        }
    }
    public function popupMessage(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/');
        }
        $data['settings'] = $this->settings;
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $data['controllerHeading'] = "Popup Message";
        $segments = request()->segments();
        $lastSegment = end($segments);
        if ($lastSegment == "add") {
            $data['update_id'] = 0;
            $data['content']['heading'] = "";
            $data['content']['message'] = "";
            $data['content']['dataBaseUserId'] = "";
            $data['content']['dbName'] = "";
            $getLoginData = DB::connection("login")->select("SELECT * FROM users WHERE status='1'");
            $getLoginData = Functions::arrayConvert($getLoginData);
            $data['content']['users'] = $getLoginData;
            return view('admin.add-popup-message')->with($data);
        }
        else if (is_numeric($lastSegment)) {
            $getLoginData = DB::connection("login")->select("SELECT * FROM users WHERE userId='" . $lastSegment . "'");
            $getLoginData = Functions::arrayConvert($getLoginData);
            if(empty($getLoginData)){
                Session::flash('message', 'No user found with this ID in the USERS'); 
                Session::flash('alert-class', 'alert-danger'); 
                return redirect("admin/popup-message");
            }

            $popupMessage = Functions::getDataWhere("popup_message","userId",$lastSegment);
            $data['update_id'] = $lastSegment;
            $data['content']['heading'] = $popupMessage[0]['heading'];
            $data['content']['message'] = $popupMessage[0]['message'];
            $data['content']['dataBaseUserId'] = $getLoginData[0]['databaseUserId'];
            $data['content']['dbName'] = $getLoginData[0]['dbName'];
            $getLoginData1 = DB::connection("login")->select("SELECT * FROM users WHERE databaseUserId='" . $getLoginData[0]['databaseUserId'] . "'");
            $getLoginData1 = Functions::arrayConvert($getLoginData1);
            $data['content']['users'] = $getLoginData1;
            return view('admin.add-popup-message')->with($data);
        }
        else {
            return view('admin.popup-message')->with($data);
        }
    }
    public function saveLoginUsers(Request $request) {
        $valid['name'] = 'required';
        $valid['email'] = 'required|email';
        $valid['mobile'] = 'required|digits:10|numeric';
        if ($_POST['update_id'] == 0 and $_POST['password'] == '') {
            $valid['password'] = 'required';
        }
        $valid['dBname'] = 'required';
        $valid['dbUser'] = 'required';
        $valid['loginToken'] = 'required';
        $validator = validator($request->all(), $valid);
        if ($validator->fails()) {
            $html = "";
            $errors = Functions::arrayConvert($validator->errors());
            $i = 1;
            foreach ($errors as $key => $value) {
                foreach ($value as $key1 => $value1) {
                    $html .= '<p>' . $i++ . ") " . $value1 . '</p>';
                }
            }
            return json_encode(array("status" => "false", "message" => $html));
        }
        if ($_POST['update_id'] == 0) {
            unset($_POST['update_id']);
            unset($_POST['where_column']);
        }
        unset($_POST['_token']);
        if (!isset($_POST['update_id'])) {
            $sql = "INSERT INTO users SET ";
            $sql .= "name='" . $_POST['name'] . "',";
            $sql .= "email='" . $_POST['email'] . "',";
            $sql .= "mobile='" . $_POST['mobile'] . "',";
            $sql .= "password='" . Functions::hash($_POST['password']) . "',";
            $sql .= "superAdmin='" . $_POST['superAdmin'] . "',";
            $sql .= "dBname='" . $_POST['dBname'] . "',";
            $sql .= "dbUser='" . $_POST['dbUser'] . "',";
            $sql .= "dbPassword='" . $_POST['dbPassword'] . "',";
            $sql .= "dateStopAccessingPos='" . $_POST['dateStopAccessingPos'] . "',";
            $sql .= "status='" . $_POST['status'] . "',";
            $sql .= "loginToken='" . $_POST['loginToken'] . "'";
        }
        else {
            $sql = "UPDATE users SET ";
            $sql .= "name='" . $_POST['name'] . "',";
            $sql .= "email='" . $_POST['email'] . "',";
            $sql .= "mobile='" . $_POST['mobile'] . "',";
            if ($_POST['password'] != '') {
                $sql .= "password='" . Functions::hash($_POST['password']) . "',";
            }
            $sql .= "superAdmin='" . $_POST['superAdmin'] . "',";
            $sql .= "dBname='" . $_POST['dBname'] . "',";
            $sql .= "dbUser='" . $_POST['dbUser'] . "',";
            $sql .= "status='" . $_POST['status'] . "',";
            $sql .= "dbPassword='" . $_POST['dbPassword'] . "',";
            $sql .= "dateStopAccessingPos='" . $_POST['dateStopAccessingPos'] . "',";
            $sql .= "loginToken='" . $_POST['loginToken'] . "'";
            $sql .= " WHERE userId='" . $_POST['update_id'] . "'";
        }
        $query = DB::connection("login")->insert($sql);
        $id = DB::connection("login")->getPdo()->lastInsertId();
        $connKey = 'dynamic';
        Config::set("database.connections." . $connKey, ["driver" => "mysql", "host" => "localhost", "port" => "3306", "database" => $_POST['dBname'], "username" => $_POST['dbUser'], "password" => $_POST['dbPassword'], ]);
        if (!isset($_POST['update_id'])) {
            $db = $_POST['dBname'];
            //DB::select('CREATE DATABASE ' . $db);
            //$this->createNewDatabaseClone($connKey);
            //DB::purge('mysql');
            /*$sql = "INSERT INTO users SET";
            $sql .= " userName='" . $_POST['name'] . "',";
            $sql .= " userEmail='" . $_POST['email'] . "',";
            if ($_POST['password'] != '') {
                $sql .= " userPassword='" . Functions::hash($_POST['password']) . "',";
            }
            $sql .= " userMobile='" . $_POST['mobile'] . "',";
            $sql .= " roleId='" . $_POST['roleId'] . "',";
            $sql .= " superAdmin='" . $_POST['superAdmin'] . "',";
            $sql .= " dataBaseName='" . $_POST['dBname'] . "',";
            $sql .= " dbUser='" . $_POST['dbUser'] . "',";
            $sql .= " dbPass='" . $_POST['dbPassword'] . "',";
            $sql .= " loginToken='" . $_POST['loginToken'] . "',";
            $sql .= " insertedBy='1'";
            $query = DB::connection($connKey)->select($sql);
            $id2 = DB::connection($connKey)->getPdo()->lastInsertId();
            DB::purge('mysql');*/
            /*$sql = "UPDATE users SET ";
            $sql .= "databaseUserId='" . $id2 . "'";
            $sql .= " WHERE userId='" . $id . "'";
            $query = DB::connection("login")->insert($sql);
            DB::connection($connKey)->select("UPDATE stores SET storeToken='" . Functions::getToken(50) . "'");
            */
            @mkdir("public/assets/uploads/" . $_POST['dBname'], 0777, true);
            @mkdir("public/backend/excel/" . $_POST['dBname'], 0777, true); 
        }
        else {
            /*$sql = "UPDATE users SET";
            $sql .= " userName='" . $_POST['name'] . "',";
            $sql .= " userEmail='" . $_POST['email'] . "',";
            if ($_POST['password'] != '') {
                $sql .= " userPassword='" . Functions::hash($_POST['password']) . "',";
            }
            $sql .= " userMobile='" . $_POST['mobile'] . "',";
            $sql .= " roleId='" . $_POST['roleId'] . "',";
            $sql .= " dataBaseName='" . $_POST['dBname'] . "',";
            $sql .= " dbUser='" . $_POST['dbUser'] . "',";
            $sql .= " dbPass='" . $_POST['dbPassword'] . "',";
            $sql .= " loginToken='" . $_POST['loginToken'] . "',";
            $sql .= " superAdmin='" . $_POST['superAdmin'] . "' WHERE userId='" . $_POST['databaseUserId'] . "'";
            $query = DB::connection($connKey)->select($sql);
            DB::purge('mysql');
            $id2 = $_POST['update_id'];*/
        }
        echo json_encode(array("status" => "success"));
    }
    public function createNewDatabaseClone($connection) {
        $filePath = 'public/copydb/ship_shop_default_copy.sql';
        $sql = '';
        $error = '';
        if (file_exists($filePath)) {
            $lines = file($filePath);
            foreach ($lines as $line) {
                if (substr($line, 0, 2) == '--' || $line == '') {
                    continue;
                }
                $sql .= $line;
                if (substr(trim($line), -1, 1) == ';') {
                    $result = DB::connection($connection)->select($sql);
                    $sql = '';
                }
            }
            if ($error) {
                $response = array("type" => "error", "message" => $error);
            }
            else {
                $response = array("type" => "success", "message" => "Database Restore Completed Successfully.");
            }
        }
        return $response;
    }
    public function dataTablePosUsers(Request $request) {
        $table = "users";
        $orderColumn = array("userId", "name", "email", "mobile", "dbName", "dbUser", "dbPassword", "roleId", "loginToken");
        $sql = "SELECT * FROM users";
        if (isset($_POST['search']['value']) and $_POST['search']['value'] != "") {
            $sql .= " WHERE name LIKE '%" . $_POST['search']['value'] . "%'";
        }
        if (isset($_POST['order'])) {
            $sql .= " ORDER BY " . $orderColumn[$_POST['order'][0]['column']] . " " . $_POST['order'][0]['dir'];
        }
        else {
            $sql .= " ORDER BY userId DESC";
        }
        if ($_POST['length'] != - 1) {
            $sql .= " LIMIT " . $_POST['length'] . " OFFSET " . $_POST['start'];
        }
        $modules = DB::connection('login')->select($sql);
        $data = array();
        $i = 1;
        $permission = $this->permissionStaticPage(21);
        foreach ($modules as $row) {
            $subArray = array();
            $subArray[] = $row->userId;
            $subArray[] = $row->databaseUserId;
            $subArray[] = $row->name . "<br>" . $row->email . "<br>" . $row->mobile;
            $subArray[] = $row->superAdmin;
            $subArray[] = $row->dbName . "<br>" . $row->dbUser . "<br>" . $row->dbPassword;
            $subArray[] = $row->loginToken;
            if (isset($permission['edit']) and $permission['edit'] == 1) {
                $txt = "E";
                $class = "warning";
            }
            else {
                $txt = "V";
                $class = "info";
            }
            $button = '<a class="btn btn-' . $class . '" style="margin-left:5px;"  href="' . url("/") . '/admin/pos-users/add/' . $row->userId . '">' . $txt . '</a>';
            if (isset($permission['edit']) and $permission['edit'] == 1) {
                //$button .= '<div class="btn btn-danger delete" style="margin-left:5px;" data-page="users" data-id="' . $row->userId . '" data-column="userId">D</a></div>';
            }
            $subArray[] = '<div class="pull-right">' . $button . '</div>';
            $data[] = $subArray;
            $i++;
        }
        $sql = "SELECT COUNT(*) AS total FROM users";
        if (isset($_POST['search']['value']) and $_POST['search']['value'] != "") {
            $sql .= " AND name LIKE '%" . $_POST['search']['value'] . "%'";
        }
        $count = DB::connection('login')->select($sql);
        $count = Functions::arrayConvert($count) [0]['total'];
        $numRows = $count;
        $allResults = $count;
        $output = array('draw' => intval($_POST['draw']), 'recordsTotal' => $numRows, 'recordsFiltered' => $allResults, 'data' => $data);
        echo json_encode($output);
    }
    public function dataTablePopupMessage(Request $request) {
        $table = "popup_message";
        $orderColumn = array("popupMessageId","heading", "message");
        $sql = "SELECT * FROM popup_message";
        if (isset($_POST['search']['value']) and $_POST['search']['value'] != "") {
            $sql .= " WHERE heading LIKE '%" . $_POST['search']['value'] . "%'";
        }
        if (isset($_POST['order'])) {
            $sql .= " ORDER BY " . $orderColumn[$_POST['order'][0]['column']] . " " . $_POST['order'][0]['dir'];
        }
        else {
            $sql .= " ORDER BY popupMessageId  DESC";
        }
        if ($_POST['length'] != - 1) {
            $sql .= " LIMIT " . $_POST['length'] . " OFFSET " . $_POST['start'];
        }
        $modules = DB::select($sql);
        $data = array();
        $i = 1;
        $permission = $this->permissionStaticPage(21);
        foreach ($modules as $row) {
            $subArray = array();
            $subArray[] = $row->popupMessageId;
            $subArray[] = $row->heading;
            $subArray[] = $row->message;
            if (isset($permission['edit']) and $permission['edit'] == 1) {
                $txt = "E";
                $class = "warning";
            }
            else {
                $txt = "V";
                $class = "info";
            }
            $button = '<a class="btn btn-' . $class . '" style="margin-left:5px;"  href="' . url("/") . '/admin/popup-message/add/' . $row->userId . '">' . $txt . '</a>';
            if (isset($permission['edit']) and $permission['edit'] == 1) {
                //$button .= '<div class="btn btn-danger delete" style="margin-left:5px;" data-page="users" data-id="' . $row->userId . '" data-column="userId">D</a></div>';
            }
            $subArray[] = '<div class="pull-right">' . $button . '</div>';
            $data[] = $subArray;
            $i++;
        }
        $sql = "SELECT COUNT(*) AS total FROM popup_message";
        if (isset($_POST['search']['value']) and $_POST['search']['value'] != "") {
            $sql .= " AND heading LIKE '%" . $_POST['search']['value'] . "%'";
        }
        $count = DB::select($sql);
        $count = Functions::arrayConvert($count) [0]['total'];
        $numRows = $count;
        $allResults = $count;
        $output = array('draw' => intval($_POST['draw']), 'recordsTotal' => $numRows, 'recordsFiltered' => $allResults, 'data' => $data);
        echo json_encode($output);
    }
    public function savePopupMessage(Request $request){
        $valid['heading'] = 'required';
        $valid['message'] = 'required';
        $valid['userId'] = 'required';
        $validator = validator($request->all(), $valid);
        if ($validator->fails()) {
            $html = "";
            $errors = Functions::arrayConvert($validator->errors());
            $i = 1;
            foreach ($errors as $key => $value) {
                foreach ($value as $key1 => $value1) {
                    $html .= '<p>' . $i++ . ") " . $value1 . '</p>';
                }
            }
            return json_encode(array("status" => "false", "message" => $html));
        }
        unset($_POST['update_id']);
        unset($_POST['_token']);
        unset($_POST['where_column']);
        $reply = Functions::setData("popup_message", $_POST);

        $users = DB::connection('login')->select("SELECT * FROM users WHERE userId='" . $_POST['userId'] . "'");
        $users = Functions::arrayConvert($users);

        Config::set("database.connections.mysql", ["driver" => "mysql", "host" => "localhost", "port" => "3306", "database" => $users[0]['dbName'], "username" => $users[0]['dbUser'], "password" => $users[0]['dbPassword'], ]);
        DB::purge('mysql');
        $_POST['userId'] = $users[0]['databaseUserId'];
        $reply = Functions::setData("popup_message_list", $_POST);
        echo json_encode(array("status" => "success", "insert_id" => $reply['insert_id'], "data" => $reply['data']));
    }
    public function getSelectedCustomerCustomerId(){
        return Session::get("posCustomer")['customerId'];
    }
}