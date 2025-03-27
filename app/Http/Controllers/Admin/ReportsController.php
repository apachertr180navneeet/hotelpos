<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Functions;
use App\Http\Controllers\Admin\PurchaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Session;
use Mail;
use Config;
class ReportsController extends Controller {
    public function __construct() {
        $this->middleware(function ($request, $next) {
            Config::set("database.connections.mysql", ["driver" => "mysql", "host" => "localhost", "port" => "3306", "database" => session('dataBaseName'), "username" => session('dbUser'), "password" => session('dbPassword'), ]);
            DB::purge('mysql');
            return $next($request);
        });
    }
    public function profitReport(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $chechkMenuStatus = Functions::getDataWhereAll('menus', "link", 'purchases') [0];
        if ($chechkMenuStatus['status'] == 0) {
            return redirect('/admin/page-not-found');
        }
        $data['settings'] = PurchaseController::settings();
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $segments = request()->segments();
        $lastSegment = end($segments);
        $permission = $this->permissionStaticPage(61);
        if (empty($permission)) {
            return view('admin.no-permission')->with($data);
        }
        else {
            if (!isset($permission['view']) || $permission['view'] == 0) {
                return view('admin.no-permission')->with($data);
            }
            else {
                DB::select("DELETE FROM profit_report WHERE storeId='" . Session::get('storeId') . "'");
                $totalSalePrice = 0;
                $totalCost = 0;
                $totalTax = 0;
                $totalDiscount = 0;
                $totalProfit = 0;
                $dateStart = "";
                $dateEnd = "";
                if (Session::get("profitReportDateStart") != '') {
                    $dateStart = Session::get("profitReportDateStart");
                }
                if (Session::get("profitReportDateEnd") != '') {
                    $dateEnd = Session::get("profitReportDateEnd");
                }
                if (!empty(Session::get("profitReportProduct"))) {
                    $productId = Session::get("profitReportProduct") ['productId'];
                }
                else {
                    $productId = 0;
                }
                if ($dateStart != '' AND $dateEnd != '') {
                    $getPurchase = DB::select("SELECT purchaseId,products,dateAdded FROM purchases WHERE purchaseStatus = 1 AND storeId='" . Session::get('storeId') . "' AND DATE(dateAdded) BETWEEN '" . $dateStart . "' AND '" . $dateEnd . "'");
                }
                else {
                    $getPurchase = DB::select("SELECT purchaseId,products,dateAdded FROM purchases WHERE purchaseStatus = 1 AND storeId='" . Session::get('storeId') . "'");
                }
                $getPurchase = Functions::arrayConvert($getPurchase);
                foreach ($getPurchase as $purchase) {
                    $pro = json_decode($purchase['products'], true);

                    if(!empty($pro)){
                        $pro = $this->searchInJson($pro, 'productId', $productId);
                    }
                    
                    if (!empty($pro)) {
                        $insert['heading'] = $pro['heading'];
                        $insert['type'] = 'Purchase';
                        $insert['id'] = $purchase['purchaseId'];
                        $insert['costPrice'] = $pro['cost'];
                        $insert['quantity'] = $pro['quantity'];
                        $insert['tax'] = $pro['tax'];
                        $insert['taxType'] = $pro['taxType'];
                        $insert['taxPercent'] = $pro['taxPercent'];
                        $insert['discount'] = $pro['discountValue'];
                        $insert['basePriceCost'] = $pro['basePriceCost'];
                        $insert['total'] = $pro['total'];
                        if ($pro['taxExclusiveValue'] > 0) {
                            $finalAmount = $pro['total'];
                        }
                        if ($pro['taxInclusiveValue'] > 0) {
                            $finalAmount = ($pro['total'] / (100 + $pro['taxPercent'])) * 100;
                        }
                        if ($pro['taxType'] != 'Inclusive') {
                            $insert['finalAmount'] = $finalAmount + $insert['tax'];
                        }
                        else {
                            $insert['finalAmount'] = $finalAmount;
                        }
                        $insert['dateAdded'] = $purchase['dateAdded'];
                        Functions::setData("profit_report", $insert);
                    }
                }
                if ($dateStart != '' AND $dateEnd != '') {
                    $getOrder = DB::select("SELECT orderId,orderProduct,dateAdded FROM `order` WHERE storeId='" . Session::get('storeId') . "' AND DATE(dateAdded) BETWEEN '" . $dateStart . "' AND '" . $dateEnd . "'");
                }
                else {
                    $getOrder = DB::select("SELECT orderId,orderProduct,dateAdded FROM `order` WHERE storeId='" . Session::get('storeId') . "'");
                }
                $getOrder = Functions::arrayConvert($getOrder);
                foreach ($getOrder as $order) {
                    $pro = json_decode($order['orderProduct'], true);
                    if(!empty($pro)){
                        $pro = $this->searchInJson($pro, 'productId', $productId);
                    }
                    if (!empty($pro)) {
                        $insert['heading'] = $pro['heading'];
                        $insert['type'] = 'Order';
                        $insert['id'] = $order['orderId'];
                        $insert['costPrice'] = $pro['price'];
                        $insert['quantity'] = $pro['quantity'];
                        $insert['discount'] = $pro['discountValue'];
                        $insert['taxPercent'] = $pro['taxPercent'];
                        $insert['basePriceCost'] = $pro['basePriceCost'];
                        $insert['profit'] = $pro['profit'];
                        $insert['total'] = $pro['total'];
                        if ($pro['taxExclusiveValue'] > 0) {
                            $insert['tax'] = $pro['taxExclusiveValue'] * $pro['quantity'];
                            $finalAmount = $pro['total'] + $insert['tax'];
                        }else if($pro['taxInclusiveValue'] > 0) {
                            $insert['tax'] = $pro['taxInclusiveValue'] * $pro['quantity'];
                            $finalAmount = (($pro['total'] / (100 + $pro['taxPercent'])) * 100) + $insert['tax'];
                        }else{
                            $finalAmount = $pro['total'];
                        }
                        $insert['taxType'] = $pro['taxType'];
                        $insert['finalAmount'] = $finalAmount;
                        $insert['dateAdded'] = $order['dateAdded'];
                        $totalSalePrice += $insert['total'];
                        Functions::setData("profit_report", $insert);
                    }
                }
                $data['products'] = Functions::getDataWhereOrderBy("profit_report", "storeId", Session::get('storeId'), "dateAdded", "ASC");
                return view('admin.reports.profit-report')->with($data);
            }
        }
    }
    public function productCategoryWise(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $chechkMenuStatus = Functions::getDataWhereAll('menus', "link", 'report/product-category-wise') [0];
        if ($chechkMenuStatus['status'] == 0) {
            return redirect('/admin/page-not-found');
        }
        $data['settings'] = PurchaseController::settings();
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $segments = request()->segments();
        $lastSegment = end($segments);
        $permission = $this->permissionStaticPage(82);
        if (empty($permission)) {
            return view('admin.no-permission')->with($data);
        }
        else {
            if (!isset($permission['view']) || $permission['view'] == 0) {
                return view('admin.no-permission')->with($data);
            }
            else {

                if (Session::get("posCategory") != "") {
                    $products = DB::select("SELECT * FROM products WHERE categoryId = '".Session::get("posCategory")."'");
                }else{  
                    $products = array();
                }
                
                $data['products'] = Functions::arrayConvert($products);                
                $data['categories'] = Functions::getDataOrderBy("categories","heading","ASC");                
                return view('admin.reports.product-category-wise')->with($data);
            }
        }
    }
    public function productManufacturerWise(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $chechkMenuStatus = Functions::getDataWhereAll('menus', "link", 'report/product-category-wise') [0];
        if ($chechkMenuStatus['status'] == 0) {
            return redirect('/admin/page-not-found');
        }
        $data['settings'] = PurchaseController::settings();
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $segments = request()->segments();
        $lastSegment = end($segments);
        $permission = $this->permissionStaticPage(83);
        if (empty($permission)) {
            return view('admin.no-permission')->with($data);
        }
        else {
            if (!isset($permission['view']) || $permission['view'] == 0) {
                return view('admin.no-permission')->with($data);
            }
            else {

                if (Session::get("posManufacturer") != "") {
                    $products = DB::select("SELECT * FROM products WHERE manufacturerId = '".Session::get("posManufacturer")."'");
                }else{  
                    $products = array();
                }
                
                $data['products'] = Functions::arrayConvert($products);                
                $data['manufacturers'] = Functions::getDataOrderBy("manufacturers","heading","ASC");                
                return view('admin.reports.product-manufacturer-wise')->with($data);
            }
        }
    }
    public function getProductByCategoryId() {
        Session::put("posCategory",$_POST['categoryId']);
        echo json_encode(array("status" => "success", "data" => ""));
    }
    public function getProductByManufacturerId() {
        Session::put("posManufacturer",$_POST['manufacturerId']);
        echo json_encode(array("status" => "success", "data" => ""));
    }
    public function getProducts(Request $request) {
        $sql = "SELECT * FROM products WHERE storeId=" . Session::get('storeId') . " AND status=1 AND showInPos=1 AND softDelete=0";
        if (isset($_POST['search']) AND $_POST['search'] != '') {
            $sql .= " AND (heading  LIKE '%" . $_POST['search'] . "%' || model  LIKE '%" . $_POST['search'] . "%' || barcode  LIKE '%" . $_POST['search'] . "%' || hsnCode  LIKE '%" . $_POST['search'] . "%')";
        }
        if (Session::get("posCategory") != "") {
            $sql .= " AND categoryId='" . Session::get("posCategory") . "'";
        }
        if (Session::get("posManufacturer") != "") {
            $sql .= " AND manufacturerId='" . Session::get("posManufacturer") . "'";
        }
        $sql .= " ORDER BY productId DESC LIMIT 50";
        $products = DB::select($sql);
        $products = Functions::arrayConvert($products);
        $i = 0;
        $html = '<ul class="bpubmxonjr">';
        foreach ($products as $cart) {
            $tax = Functions::getTaxAmountByProductId($cart['productId'], "cost");
            $products[$i]['taxHeading'] = $tax['taxHeading'];
            $products[$i]['taxPercent'] = $tax['taxPercent'];
            $products[$i]['taxExclusiveValue'] = $tax['taxExclusiveValue'];
            $products[$i]['taxInclusiveValue'] = $tax['taxInclusiveValue'];
            $products[$i]['tax'] = $tax['tax'];
            $products[$i]['basePriceCost'] = $tax['basePriceCost'];
            $html .= '<li class="jpcljhzbiw" id="jpcljhzbiw' . $products[$i]['productId'] . '" data-id="' . $products[$i]['productId'] . '">' . $products[$i]['heading'] . ' (' . $products[$i]['barcode'] . ')</li>';
            $i++;
        }
        $html .= '</ul>';
        echo $html;
    }
    public function addProduct($productId = false) {
        Session::put("profitReportProduct", Functions::getDataWhere("products", "productId", $_POST['productId']) [0]);
        echo json_encode(array("status" => "success", "data" => ""));
    }
    public function setDates($productId = false) {
        Session::put("profitReportDateStart", $_POST['dateStart']);
        Session::put("profitReportDateEnd", $_POST['dateEnd']);
        if(isset($_POST['showCancelledOrders'])){
            Session::put("showCancelledOrders", $_POST['showCancelledOrders']);
        }
        if(isset($_POST['category'])){
            Session::put("category", $_POST['category']);
        }
        
        echo json_encode(array("status" => "success", "data" => ""));
    }
    public function clearFilters() {
        Session::forget("profitReportDateStart");
        Session::forget("profitReportDateEnd");
        Session::forget("profitReportProduct");
        Session::forget("showCancelledOrders");
        Session::forget("category");
        echo json_encode(array("status" => "success", "data" => ""));
    }
    public function searchInJson($exif, $field, $value) {
        foreach ($exif as $key => $data) {
            foreach ($data as $key1 => $data1) {
                if ($key1 == $field) {
                    if ($data1 == $value) {
                        return $data;
                        break;
                    }
                }
            }
        }
    }
    public function dailyOrderReport(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $chechkMenuStatus = Functions::getDataWhereAll('menus', "link", 'purchases') [0];
        if ($chechkMenuStatus['status'] == 0) {
            return redirect('/admin/page-not-found');
        }
        $data['settings'] = PurchaseController::settings();
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $segments = request()->segments();
        $lastSegment = end($segments);
        $permission = $this->permissionStaticPage(61);
        if (empty($permission)) {
            return view('admin.no-permission')->with($data);
        }
        else {
            if (!isset($permission['view']) || $permission['view'] == 0) {
                return view('admin.no-permission')->with($data);
            }
            else {
                $sql = "SELECT * FROM `order` WHERE storeId = '".Session::get('storeId')."'";
                if(Session::get("profitReportDateStart")!="" AND Session::get("profitReportDateEnd")!=""){
                    $sql .= " AND DATE(dateAdded) BETWEEN '".Session::get("profitReportDateStart")."' AND '".Session::get("profitReportDateEnd")."'";
                }
                if(Session::get("showCancelledOrders")!=""){
                    $sql .= " AND orderStatusId='".$data['settings']['cancelledOrderStatus']."'";
                }
                $sql .= ' ORDER BY orderId DESC';
                $orders = DB::select($sql);
                $orders = Functions::arrayConvert($orders);
                $ordersData = array();
                foreach($orders as $order){
                    $profitSql = DB::select("SELECT SUM(profit) as profit FROM `order_product` WHERE orderId='".$order['orderId']."' AND storeId='".Session::get('storeId')."'");
                    $profitSql = Functions::arrayConvert($profitSql);
                    $ordersData[] = array(
                        "orderId" => $order['orderId'],
                        "totalQuantityInCart" => $order['totalQuantityInCart'],
                        "tax" => $order['tax'],
                        "productDiscount" => $order['productDiscount'],
                        "total" => $order['total'],
                        "profit" => $profitSql[0]['profit'],
                    );
                }
                $data['orders'] = $ordersData;
                return view('admin.reports.daily-order-report')->with($data);
            }
        }
    }
    public function dailySaleReport(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $chechkMenuStatus = Functions::getDataWhereAll('menus', "link", 'purchases') [0];
        if ($chechkMenuStatus['status'] == 0) {
            return redirect('/admin/page-not-found');
        }
        $data['settings'] = PurchaseController::settings();
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $segments = request()->segments();
        $lastSegment = end($segments);
        $permission = $this->permissionStaticPage(61);
        if (empty($permission)) {
            return view('admin.no-permission')->with($data);
        }
        else {
            if (!isset($permission['view']) || $permission['view'] == 0) {
                return view('admin.no-permission')->with($data);
            }
            else {
                $data['categories'] = Functions::getDataWhereOrderBy("categories", "storeId", Session::get('storeId'), "heading", "ASC");
                $sql = "SELECT * FROM order_product WHERE storeId = '".Session::get('storeId')."'";
                if(Session::get("profitReportDateStart")!="" AND Session::get("profitReportDateEnd")!=""){
                    $sql .= "AND DATE(dateAdded) BETWEEN '".Session::get("profitReportDateStart")."' AND '".Session::get("profitReportDateEnd")."'";
                }
                if(!empty(Session::get("profitReportProduct"))){
                    $sql .= " AND (model LIKE '%".Session::get("profitReportProduct")['model']."%' OR barcode LIKE '%".Session::get("profitReportProduct")['barcode']."%')";
                }
                if(Session::get("category")!="" AND Session::get("profitReportDateStart")==""){
                    $sql .= " AND categoryId='".Session::get("category")."'";
                }
                $products = DB::select($sql);
                $data['products'] = Functions::arrayConvert($products);
                return view('admin.reports.daily-sale-report')->with($data);
            }
        }
    }
    public function dailyPaymentReport(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $chechkMenuStatus = Functions::getDataWhereAll('menus', "link", 'purchases') [0];
        if ($chechkMenuStatus['status'] == 0) {
            return redirect('/admin/page-not-found');
        }
        $data['settings'] = PurchaseController::settings();
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $segments = request()->segments();
        $lastSegment = end($segments);
        $permission = $this->permissionStaticPage(61);
        if (empty($permission)) {
            return view('admin.no-permission')->with($data);
        }
        else {
            if (!isset($permission['view']) || $permission['view'] == 0) {
                return view('admin.no-permission')->with($data);
            }
            else {
                if(Session::get("profitReportDateStart")!="" AND Session::get("profitReportDateEnd")!=""){
                    $sql1 = "SELECT DISTINCT(paymentMethod) AS paymentMethod FROM `order` WHERE storeId = '".Session::get('storeId')."'";
                    $sql1 .= " AND DATE(dateAdded) BETWEEN '".Session::get("profitReportDateStart")."' AND '".Session::get("profitReportDateEnd")."'";
                    $products1 = DB::select($sql1);
                    $data['paymentMethods'] = Functions::arrayConvert($products1);
                    /*echo "<pre>";
                    print_r($data['methods']);*/
                    $sql = "SELECT * FROM `order` WHERE storeId = '".Session::get('storeId')."'";
                    $sql .= " AND DATE(dateAdded) BETWEEN '".Session::get("profitReportDateStart")."' AND '".Session::get("profitReportDateEnd")."' GROUP BY paymentMethod ASC";
                    $products = DB::select($sql);
                }else{
                    $sql1 = "SELECT DISTINCT(paymentMethod) FROM `order` WHERE storeId = '".Session::get('storeId')."' AND DATE(dateAdded) = '".date('Y-m-d')."'";
                    $products1 = DB::select($sql1);
                    $data['paymentMethods'] = Functions::arrayConvert($products1);
                    $sql = "SELECT * FROM `order` WHERE storeId = '".Session::get('storeId')."' AND DATE(dateAdded) = '".date('Y-m-d')."' GROUP BY paymentMethod ASC";
                    $products = DB::select($sql);
                }
                $data['products'] = Functions::arrayConvert($products);
                return view('admin.reports.daily-payment-report')->with($data);
            }
        }
    }
    public function dailyExpenseReport(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $chechkMenuStatus = Functions::getDataWhereAll('menus', "link", 'purchases') [0];
        if ($chechkMenuStatus['status'] == 0) {
            return redirect('/admin/page-not-found');
        }
        $data['settings'] = PurchaseController::settings();
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $segments = request()->segments();
        $lastSegment = end($segments);
        $permission = $this->permissionStaticPage(61);
        if (empty($permission)) {
            return view('admin.no-permission')->with($data);
        }
        else {
            if (!isset($permission['view']) || $permission['view'] == 0) {
                return view('admin.no-permission')->with($data);
            }
            else {
                /*if(Session::get("profitReportDateStart")!="" AND Session::get("profitReportDateEnd")!=""){
                    $sql1 = "SELECT * FROM `expemse_categories` WHERE storeId = '".Session::get('storeId')."'";
                    $categories = DB::select($sql1);
                    $data['categories'] = Functions::arrayConvert($categories);

                }else{
                    $sql1 = "SELECT DISTINCT(paymentMethod) FROM `order` WHERE storeId = '".Session::get('storeId')."' AND DATE(dateAdded) = '".date('Y-m-d')."'";
                    $products1 = DB::select($sql1);
                    $data['paymentMethods'] = Functions::arrayConvert($products1);
                    $sql = "SELECT * FROM `order` WHERE storeId = '".Session::get('storeId')."' AND DATE(dateAdded) = '".date('Y-m-d')."' GROUP BY paymentMethod ASC";
                    $products = DB::select($sql);
                }*/
                $sql = "SELECT * FROM `expense_categories` WHERE storeId = '".Session::get('storeId')."' AND status=1";
                $categories = DB::select($sql);
                $data['categories'] = Functions::arrayConvert($categories);
                return view('admin.reports.daily-expense-report')->with($data);
            }
        }
    }
    public static function permissionStaticPage($menuId) {
        return Functions::permissionStaticPage($menuId);
    }
    public static function arrayConvert($query) {
        return Functions::arrayConvert($query);
    }
    public static function settings() {
        $settings = Functions::getDataWhere("store_settings", "storeId", Session::get('storeId'));
        $settings = Functions::arrayConvert($settings);
        if (Session::get('storeId') == '') {
            return Functions::settings();
        }
        return $settings[0];
    }
    public static function image($image) {
        return Functions::image($image);
    }
    public static function message($messageId) {
        return Functions::message($messageId);
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
    public static function moduleShortCode($moduleId) {
        $module = Functions::getDataWhere("modules", "moduleId", $moduleId);
        return $module[0];
    }
    public static function filterDescriptionForModules($input) {
        return Functions::filterDescriptionForModules($input);
    }
    public static function generateModuleData($moduleId) {
        return Functions::generateModuleData($moduleId);
    }
    public static function getCurrencySymbol() {
        $globalSettings = Functions::settings();
        return Functions::getDataWhere("currencies", "currencyId",$globalSettings['defaultCurrency'])[0]['symbol'];
    }
    public function exportProfitReport(Request $request){
        $dateStart = $request->input('dateStart');
        $dateEnd = $request->input('dateEnd');

        // Validate input
        $validatedData = $request->validate([
            'dateStart' => 'required|date',
            'dateEnd' => 'required|date|after_or_equal:dateStart',
        ]);

        return Excel::download(new ProfitReportExport($dateStart, $dateEnd), 'profit_report.xlsx');
    }
}