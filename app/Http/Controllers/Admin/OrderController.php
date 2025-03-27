<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Functions;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use App\Http\Controllers\Admin\PosController;
use Session;
use Config;
class OrderController extends Controller {
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
    public function order(Request $request) {
        //Session::forget("cartAdmin");
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $data['settings'] = $this->settings;
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $permission = $this->permissionStaticPage(53);
        $segments = request()->segments();
        $lastSegment = end($segments);
        $data['view'] = 0;
        if (empty($permission)) {
            return view('admin.no-permission')->with($data);
        }
        else {
            if (!isset($permission['view']) || $permission['view'] == 0) {
                return view('admin.no-permission')->with($data);
            }
            else {
                $data['permission'] = $permission;
                if ($lastSegment == "add") {
                    $data['orderStatus'] = Functions::getData('order_status');
                    $data['update_id'] = 0;
                    $data['prescriptions'] = array();
                    return view('admin.add-order')->with($data);
                }
                else if (isset($segments[2]) and $segments[2] == "view") {
                    $order = Functions::getDataWhere("order", "orderId", $lastSegment) [0];
                    $this->updateUserSession($order['customerId'], $lastSegment);
                    if (Session::get("editOrderId") == "") {
                        Session::forget("cartAdmin");
                        Session::forget("couponAdmin");
                        Session::put("cartAdmin", json_decode($order['products'], true));
                        Session::put("couponAdmin", json_decode($order['coupon'], true));
                        Session::put("editOrderId", $lastSegment);
                    }
                    $data['order'] = $order;
                    $data['addressKey'] = $this->getAddressOfSelectCustomerById($order['paymentAddressId']);
                    $data['update_id'] = $lastSegment;
                    $data['orderStatus'] = Functions::getData('order_status');
                    $data['view'] = 1;
                    return view('admin.add-order')->with($data);
                }
                else if (is_numeric($lastSegment)) {
                    $order = Functions::getDataWhere("order", "orderId", $lastSegment) [0];
                    $this->updateUserSession($order['customerId'], $lastSegment);
                    if (Session::get("editOrderId") == "") {
                        Session::forget("cartAdmin");
                        Session::forget("couponAdmin");
                        Session::put("cartAdmin", json_decode($order['products'], true));
                        Session::put("couponAdmin", json_decode($order['coupon'], true));
                        Session::put("editOrderId", $lastSegment);
                    }
                    $data['order'] = $order;
                    $data['addressKey'] = $this->getAddressOfSelectCustomerById($order['paymentAddressId']);
                    $data['update_id'] = $lastSegment;
                    $data['orderStatus'] = Functions::getData('order_status');
                    $data['prescriptions'] = Functions::getDataWhere('prescription', "customerId", $order['customerId']);
                    return view('admin.add-order')->with($data);
                }
                Session::forget("editOrderId");
                Session::forget("cartAdmin");
                Session::forget("couponAdmin");
                $data['update_id'] = 0;
                $data['superAdmin'] = $request->session()->get('superAdmin');
                $data['orders'] = Functions::getData('order');
                return view('admin.order')->with($data);
            }
        }
    }
    public function history(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $data['settings'] = $this->settings;
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $segments = request()->segments();
        $lastSegment = end($segments);
        $data['orderStatus'] = Functions::getData('order_status');
        $data['update_id'] = 0;
        $data['view'] = 0;
        $permission = $this->permissionStaticPage(56);
        if (empty($permission)) {
            return view('admin.no-permission')->with($data);
        }
        else {
            if (!isset($permission['view']) || $permission['view'] == 0) {
                return view('admin.no-permission')->with($data);
            }
            else {
                $data['permission'] = $permission;
                if (isset($segments[3]) and $segments[3] == "add" and !isset($segments[5]) and is_numeric($lastSegment)) {
                    $data['orderId'] = $lastSegment;
                    $data['order'] = Functions::getDataWhere("order", "orderId", $lastSegment);
                    return view('admin.add-order-history')->with($data);
                }
                else if (isset($segments[5]) and $segments[3] == "add" and is_numeric($lastSegment)) {
                    $data['orderId'] = $segments[4];
                    $data['update_id'] = $lastSegment;
                    $orderHistory = Functions::getDataWhere("order_history", "orderHistoryId", $lastSegment) [0];
                    $data['orderHistory'] = $orderHistory;
                    $data['order'] = Functions::getDataWhere("order", "orderId", $segments[4]);
                    return view('admin.add-order-history')->with($data);
                }
                else if (isset($segments[3]) and $segments[3] == "view" and is_numeric($lastSegment)) {
                    $data['orderId'] = $segments[4];
                    $orderHistory = Functions::getDataWhere("order_history", "orderHistoryId", $lastSegment) [0];
                    $data['orderHistory'] = $orderHistory;
                    $data['update_id'] = $lastSegment;
                    $data['view'] = 1;
                    $data['order'] = Functions::getDataWhere("order", "orderId", $lastSegment);
                    return view('admin.add-order-history')->with($data);
                }
                $data['orderId'] = $lastSegment;
                $data['superAdmin'] = $request->session()->get('superAdmin');
                $data['orders'] = Functions::getData('order');
                $data['order'] = Functions::getDataWhere("order", "orderId", $lastSegment);
                return view('admin.order-history')->with($data);
            }
        }
    }
    public function dataTableOrderHistory() {
        $table = "order_history";
        $where = 0;
        $orderColumn = array("orderHistoryId", "orderId", "orderStatusId", "comment", "dateAdded");
        $sql = "SELECT * FROM order_history WHERE orderId='" . $_POST['orderId'] . "'";
        if (isset($_POST['search']['value']) and $_POST['search']['value'] != "") {
            $sql .= " AND (orderHistoryId LIKE '%" . $_POST['search']['value'] . "%'";
            $sql .= " OR orderHistoryId LIKE '%" . $_POST['search']['value'] . "%'";
            $sql .= " OR orderId LIKE '%" . $_POST['search']['value'] . "%'";
            $sql .= " OR orderStatusId LIKE '%" . $_POST['search']['value'] . "%'";
            $sql .= " OR comment LIKE '%" . $_POST['search']['value'] . "%'";
            $sql .= " OR dateAdded LIKE '%" . $_POST['search']['value'] . "%')";
        }
        if (Functions::checkIfColumnExists($table, "softDelete") AND isset($menuData['listViewSoftDelete']) AND $menuData['listViewSoftDelete'] == 'Yes') {
            $sql .= ' AND softDelete=0 ';
        }
        if (Functions::checkIfColumnExists($table, "userId") AND $table != 'users' AND Session::get('roleId') != 1 AND Session::get('storeId') == '') {
            $sql .= " AND userId = '" . Session::get('userId') . "'";
        }
        else if (Functions::checkIfColumnExists($table, "storeId") AND $table != 'users' AND Session::get('roleId') != 1 AND Session::get('storeId') != '') {
            $sql .= " AND storeId = '" . Session::get('storeId') . "'";
        }
        else if (Functions::checkIfColumnExists($table, "storeId") AND $table != 'users' AND Session::get('roleId') == 1 AND Session::get('storeId') != '') {
            $sql .= " AND storeId = '" . Session::get('storeId') . "'";
        }
        if ($table == 'users' AND Session::get('roleId') != 1) {
            $sql .= " AND insertedBy = '" . Session::get('userId') . "' || userId = '" . Session::get('userId') . "'";
        }
        if (isset($_POST['order'])) {
            $sql .= " ORDER BY " . $orderColumn[$_POST['order'][0]['column']] . " " . $_POST['order'][0]['dir'];
        }
        else {
            $sql .= " ORDER BY orderHistoryId DESC";
        }
        if ($_POST['length'] != - 1) {
            $sql .= " LIMIT " . $_POST['length'] . " OFFSET " . $_POST['start'];
        }
        $modules = DB::select($sql);
        $data = array();
        $i = 1;
        $permission = $this->permissionStaticPage(56);
        $settings = PosController::settings();
        foreach ($modules as $row) {
            $subArray = array();
            $subArray[] = $row->orderHistoryId;
            $subArray[] = '<strong>' . Functions::getDataWhere("order_status", "orderStatusId", $row->orderStatusId) [0]['heading'] . '</strong>';
            $subArray[] = '<strong>' . $row->comment . '</strong>';
            $button = '<div style="display:flex;width:100%">';
            if (isset($permission['edit']) and $permission['edit'] == 1) {
                $txt = "E";
                $class = "warning";
            }
            else {
                $txt = "V";
                $class = "info";
            }
            if($row->orderStatusId!=$settings['cancelledOrderStatus']){
            $button .= '<div style="width:100%;margin-right:3px"><a class="btn btn-' . $class . ' qlyoctyesu" style="width:100%;"  href="' . url("/") . '/admin/order/history/add/' . $row->orderId . '/' . $row->orderHistoryId . '" data-toggle="tooltip" data-placement="top" title="Edit">' . $txt . '</a></div>';
            if (isset($permission['edit']) and $permission['edit'] == 1) {
                $button .= '<div style="width:100%;"><div style="width:100%;" class="btn btn-danger delete" data-page="order_history" data-id="' . $row->orderHistoryId . '" data-column="orderHistoryId" data-toggle="tooltip" data-placement="top" title="Delete">D</a></div></div>';
            }
            $button .= '</div>';
            }
            $button .= '<div style="display:block;margin-top:10px;width:100%" class="btn btn-primary">Date Added : ' . date("d-m-Y H:i:s A", strtotime($row->dateAdded)) . '</div>';
            $subArray[] = $button;
            $data[] = $subArray;
            $i++;
        }
        $count = count(Functions::arrayConvert($modules));
        $numRows = $count;
        $allResults = $count;
        $output = array('draw' => intval($_POST['draw']), 'recordsTotal' => $numRows, 'recordsFiltered' => $allResults, 'data' => $data);
        echo json_encode($output);
    }
    public function saveOrderHistory(Request $request) {
        $settings = PosController::settings();
        unset($_POST['_token']);
        if(!isset($_POST['orderStatusId'])){
                $_POST['orderStatusId'] = $settings['cancelledOrderStatus'];
        }
        if (isset($_POST['update_id']) AND $_POST['update_id'] == 0) {
            unset($_POST['where_column']);
        }
        $query = Functions::setData("order_history", $_POST);
        
        DB::update("UPDATE `order` SET orderStatusId='" . $_POST['orderStatusId'] . "' WHERE orderId='" . $_POST['orderId'] . "'");
        if ($query) {
            $array = $_POST;
            /*if(!isset($array['orderStatusId'])){
                $array['orderStatusId'] = $settings['cancelledOrderStatus'];
            }*/
            if ($settings['runningOrderStatus'] != $array['orderStatusId']) {
                $orderStatusHeading = $this->getDataWhere('order_status', "orderStatusId", $array['orderStatusId']) [0]['heading'];
                DB::select("UPDATE `order` SET orderStatusId='" . $array['orderStatusId'] . "',runningOrder=0,hold=0,orderStatusHeading='" . $orderStatusHeading . "',checkoutType='finalCheckout',runningOrder='0' WHERE orderId='" . $array['orderId'] . "'");
                if($settings['cancelledOrderStatus'] == $array['orderStatusId']){
                    if ($settings['deductFromStock'] == 1) {
                        $previousValues = Functions::getDataWhere("order", "orderId", $_POST['orderId'])[0];
                        foreach (json_decode($previousValues['orderProduct'], true) as $cart) {
                            DB::select("UPDATE products SET quantity = quantity + " . $cart['quantity'] . " WHERE productId='" . $cart['productId'] . "'");
                        }
                    }
                }
            }
            else {
                $orderStatusHeading = $this->getDataWhere('order_status', "orderStatusId", $array['orderStatusId']) [0]['heading'];
                DB::select("UPDATE `order` SET orderStatusId='" . $array['orderStatusId'] . "',runningOrder=1,hold=1,orderStatusHeading='" . $orderStatusHeading . "',checkoutType='sendToKot',runningOrder='1' WHERE orderId='" . $array['orderId'] . "'");
            }
            echo json_encode(array("status" => "success", "orderId" => $_POST['orderId']));
        }
        else {
            echo json_encode(array("status" => "error"));
        }
    }
    public function dataTableOrder() {
        Session::forget("editOrderId");
        Session::forget("cartAdmin");
        Session::forget("couponAdmin");
        $table = "order";
        $where = 0;
        $orderColumn = array("orderId", "customerId", "name", "email", "mobile", "paymentMethod", "total", "dateAdded");
        $sql = "SELECT * FROM `order` WHERE status=1 ";
        if (isset($_POST['search']['value']) and $_POST['search']['value'] != "") {
            $sql .= " WHERE name LIKE '%" . $_POST['search']['value'] . "%'";
            $sql .= " OR email LIKE '%" . $_POST['search']['value'] . "%'";
            $sql .= " OR mobile LIKE '%" . $_POST['search']['value'] . "%'";
            $sql .= " OR customerId LIKE '%" . $_POST['search']['value'] . "%'";
            $sql .= " OR orderId LIKE '%" . $_POST['search']['value'] . "%'";
            $sql .= " OR paymentMethod LIKE '%" . $_POST['search']['value'] . "%'";
            $sql .= " OR total LIKE '%" . $_POST['search']['value'] . "%'";
            $sql .= " OR dateAdded LIKE '%" . $_POST['search']['value'] . "%'";
        }
        if (isset($_POST['startDate']) and $_POST['startDate'] != "" and $_POST['endDate'] != "") {
            if ($where == 0) {
                $sql .= " AND dateAdded BETWEEN '" . $_POST['startDate'] . "' AND '" . $_POST['endDate'] . "'";
            }
            else {
                $sql .= " AND dateAdded BETWEEN '" . $_POST['startDate'] . "' AND '" . $_POST['endDate'] . "'";
            }
        }
        if (isset($_POST['customerId']) AND $_POST['customerId'] != 0) {
            if ($where == 0) {
                $sql .= " AND customerId = '" . $_POST['customerId'] . "'";
                $where = 1;
            }
            else {
                $sql .= " AND customerId = '" . $_POST['customerId'] . "'";
            }
        }
        if (isset($_POST['paymentMethod']) AND $_POST['paymentMethod'] != "") {
            if ($where == 0) {
                $sql .= " AND paymentMethod = '" . $_POST['paymentMethod'] . "'";
                $where = 1;
            }
            else {
                $sql .= " AND paymentMethod = '" . $_POST['paymentMethod'] . "'";
            }
        }
        if (isset($_POST['orderStatusId']) AND $_POST['orderStatusId'] != "") {
            if ($where == 0) {
                $sql .= " AND orderStatusId = '" . $_POST['orderStatusId'] . "'";
                $where = 1;
            }
            else {
                $sql .= " AND orderStatusId = '" . $_POST['orderStatusId'] . "'";
            }
        }
        if (isset($_POST['paymentStatus']) AND $_POST['paymentStatus'] != "") {
            if ($where == 0) {
                $sql .= " AND paymentStatus = '" . $_POST['paymentStatus'] . "'";
                $where = 1;
            }
            else {
                $sql .= " AND paymentStatus = '" . $_POST['paymentStatus'] . "'";
            }
        }
        if (Functions::checkIfColumnExists($table, "softDelete") AND isset($menuData['listViewSoftDelete']) AND $menuData['listViewSoftDelete'] == 'Yes') {
            $sql .= ' AND softDelete=0 ';
        }
        if (Functions::checkIfColumnExists($table, "userId") AND $table != 'users' AND Session::get('roleId') != 1  ) {
            $sql .= " AND userId = '" . Session::get('userId') . "'";
        }
        else if (Functions::checkIfColumnExists($table, "storeId") AND $table != 'users' AND Session::get('roleId') != 1 AND Session::get('storeId') != '') {
            $sql .= " AND storeId = '" . Session::get('storeId') . "'";
        }
        // else if (Functions::checkIfColumnExists($table, "storeId") AND $table != 'users' AND Session::get('roleId') == 1 AND Session::get('storeId') != '') {
        //     $sql .= " AND storeId = '" . Session::get('storeId') . "'";
        // }
        if ($table == 'users' AND Session::get('roleId') != 1) {
            $sql .= " AND insertedBy = '" . Session::get('userId') . "' || userId = '" . Session::get('userId') . "'";
        }
        if (isset($_POST['order'])) {
            $sql .= " ORDER BY " . $orderColumn[$_POST['order'][0]['column']] . " " . $_POST['order'][0]['dir'];
        }
        else {
            $sql .= " ORDER BY orderId DESC";
        }
        if ($_POST['length'] != - 1) {
            $sql .= " LIMIT " . $_POST['length'] . " OFFSET " . $_POST['start'];
        }
        //echo $sql;
        $modules = DB::select($sql);
        $data = array();
        $i = 1;
        $settings = PosController::settings();
        $permission = $this->permissionStaticPage(53);
        foreach ($modules as $row) {
            $subArray = array();
            $subArray[] = $row->orderId;
            $subArray[] = '<strong>' . $row->name . '</strong><br><strong>' . $row->email . '</strong><br><strong>' . $row->mobile . '</strong>';
            $subArray[] = '<strong>' . ucwords($row->paymentMethod) . '</strong>';
            if ($row->orderStatusId == 10) {
                $subArray[] = '<strong style="color:red">' . Functions::getDataWhere("order_status", "orderStatusId", $row->orderStatusId) [0]['heading'] . '</strong>';
            }
            else {
                $subArray[] = '<strong>' . Functions::getDataWhere("order_status", "orderStatusId", $row->orderStatusId) [0]['heading'] . '</strong>';
            }
            $subArray[] = '<strong class="symbol">' . $row->total . '</strong>';
            $insertedBy = Functions::getDataWhere("users", "userId", $row->insertedBy);
            if (!empty($insertedBy[0]['userName'])) {
                $subArray[] = $insertedBy[0]['userName'];
            }
            else {
                $subArray[] = "";
            }
            if($row->hotel==1){
                $subArray[] = 'HOTEL ROOM';
            }else{
                $subArray[] = 'POS';
            }
            
            $style = "margin-right:1%;width:49%;";
            $button = '<div style="display:flex;float:right;width:100%">';
            if (!empty(json_decode($row->orderProduct, true))) {
                $button .= '<div style="width:100%;margin-right:3px"><a target="_BLANK" class="btn btn-info qlyoctyesu" style="width:100%;"  href="' . url("/") . '/admin/order/invoice/' . $row->orderId . '" data-toggle="tooltip" data-placement="top" title="View Purchase">I</a></div>';
            }
            if (isset($permission['edit']) and $permission['edit'] == 1 AND ($row->orderStatusId!=$settings['cancelledOrderStatus'])) {
                $button .= '<div style="width:100%;"><div style="width:100%;" data-updateid="' . $row->orderId . '" data-table="order" data-tableidcolumn="orderId" data-moduleid="0" href="" class="btn btn-danger deleteData">D</div></div>';
            }
            $button .= '</div><br>';
            if($row->orderStatusId!=$settings['cancelledOrderStatus']){
                $button .= '<a href="order/history/' . $row->orderId . '" style="display:block;margin-top:20px;width:100%" class="btn btn-primary">Order History</a>';
            }else{
                $button .= '<br>';
            }
            $button .= '<div style="display:block;margin-top:10px;width:100%" class="btn btn-primary">Date Added : ' . date("d-m-Y H:i:s A", strtotime($row->dateAdded)) . '</div>';
            $subArray[] = $button;
            $data[] = $subArray;
            $i++;
        }
        $count = count(Functions::arrayConvert($modules));
        $numRows = $count;
        $allResults = $count;
        $output = array('draw' => intval($_POST['draw']), 'recordsTotal' => $numRows, 'recordsFiltered' => $allResults, 'data' => $data);
        echo json_encode($output);
    }
    public function invoice(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $segments = request()->segments();
        $lastSegment = end($segments);
        $data['globalSettings'] = Functions::settings();
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $data['settings'] = PosController::settings();
        if ($segments[2] == 'sendToKot') {
            $invoiceTemplateId = $data['settings']['defaultKotTemplate'];
        }
        else {
            $invoiceTemplateId = $data['settings']['defaultInvoiceTemplate'];
        }
        $data['template'] = Functions::getDataWhere("invoice_template", "invoiceTemplateId", $invoiceTemplateId) [0];
        $data['order'] = Functions::getDataWhere("order", "orderId", $lastSegment) [0];
        $data['orderTotal'] = Functions::getDataWhere("order_total", "orderId", $lastSegment) [0];
        $data['storeSettings'] = Functions::getDataWhere("store_settings", "storeId", 1) [0];
        $data['store'] = Functions::getDataWhere("stores", "storeId", 1) [0];
        $data['customer'] = Functions::getDataWhere("customers", "customerId", $data['order']['customerId']) [0];
        $data['invoiceProducts'] = json_decode($data['order']['orderProduct'],true);
        return view('admin.pos.invoice')->with($data);
    }
    public static function getCurrencySymbol() {
        $globalSettings = Functions::settings();
        return Functions::getDataWhere("currencies", "currencyId",$globalSettings['defaultCurrency'])[0]['symbol'];
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
    public static function encrypt($string) {
        return Functions::encrypt($string);
    }
    public static function decrypt($string) {
        return Functions::decrypt($string);
    }
    public static function message($messageId) {
        return Functions::message($messageId);
    }
    public static function getIndianCurrency(float $number) {
        $decimal = round($number - ($no = floor($number)), 2) * 100;
        $hundred = null;
        $digits_length = strlen($no);
        $i = 0;
        $str = array();
        $words = array(0 => '', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen', 20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety');
        $digits = array('', 'hundred', 'thousand', 'lakh', 'crore');
        while ($i < $digits_length) {
            $divider = ($i == 2) ? 10 : 100;
            $number = floor($no % $divider);
            $no = floor($no / $divider);
            $i += $divider == 10 ? 1 : 2;
            if ($number) {
                $plural = (($counter = count($str)) && $number > 9) ? 's' : null;
                $hundred = ($counter == 1 && $str[0]) ? ' and ' : null;
                $str[] = ($number < 21) ? $words[$number] . ' ' . $digits[$counter] . $plural . ' ' . $hundred : $words[floor($number / 10) * 10] . ' ' . $words[$number % 10] . ' ' . $digits[$counter] . $plural . ' ' . $hundred;
            }
            else $str[] = null;
        }
        $Rupees = implode('', array_reverse($str));
        $paise = ($decimal > 0) ? "." . ($words[$decimal / 10] . " " . $words[$decimal % 10]) . ' Paise' : '';
        return ($Rupees ? $Rupees . 'Rupees ' : '') . $paise;
    }
}