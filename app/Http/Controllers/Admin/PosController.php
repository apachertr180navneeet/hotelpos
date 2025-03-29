<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Functions;
use App\Http\Controllers\Admin\PosController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Config;
//use illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Validator;
use Session;
use Mail;
use Exception;
        use Carbon\Carbon;

class PosController extends Controller {
    public function __construct() {
        $this->middleware(function ($request, $next) {
            Config::set("database.connections.mysql", ["driver" => "mysql", "host" => "localhost", "port" => "3306", "database" => session('dataBaseName'), "username" => session('dbUser'), "password" => session('dbPassword'), ]);
            DB::purge('mysql');
            return $next($request);
        });
    }
    public function index(Request $request) {
        $userId = $request->session()->get('userId');
        //Session::forget("paymentId");
        if ($userId == "") {
            return redirect('/admin/login');
        }
        //PosController::updateCustomerReward(Session::get("posCustomer") ['customerId']);
        //PosController::updateCustomerWallet(Session::get("posCustomer") ['customerId']);
        $data['settings'] = PosController::settings();
        if (Session::get("posCustomer") == "") {
            if ($data['settings']['walkInCustomerId'] != 0) {
                $defaultCustomer = Functions::getDataWhere("customers", "customerId", $data['settings']['walkInCustomerId']);
            }
            Session::put("posCustomer", $defaultCustomer[0]);
        }
        $data['globalSettings'] = Functions::settings();
        if(empty(Session::get("paymentId"))){
            $this->setPaymentMethod(8);
        }
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $data['showCategories'] = $data['settings']['showCategories'];
        $data['showManufacturers'] = $data['settings']['showManufacturers'];
        $data['showImage'] = $data['settings']['showImage'];
        $data['showBarcode'] = $data['settings']['showBarcode'];
        $data['showModal'] = $data['settings']['showModal'];
        $data['restaurant'] = $data['settings']['restaurant'];
        $data['showQuickAdd'] = $data['settings']['showQuickAdd'];
        $data['showSalesPerson'] = $data['settings']['showSalesPerson'];
        $data['salesPersonRequired'] = $data['settings']['salesPersonRequired'];
        $data['showAddCustomerBottom'] = $data['settings']['showAddCustomerBottom'];
        $data['showWalletBalance'] = $data['settings']['showWalletBalance'];
        $data['showRewardBalance'] = $data['settings']['showRewardBalance'];
        $data['showExtraInformtionPopup'] = $data['settings']['showExtraInformtionPopup'];
        $data['showStoreInfomation'] = $data['settings']['showStoreInfomation'];
        $data['enableTaxes'] = $data['settings']['enableTaxes'];
        $data['enableRewardPoints'] = $data['settings']['enableRewardPoints'];
        $data['enableOrderType'] = $data['settings']['enableOrderType'];
        $data['orderTypeRequired'] = $data['settings']['orderTypeRequired'];
        $data['cartAppendStyle'] = $data['settings']['cartAppendStyle'];
        $data['enableLightBox'] = $data['settings']['enableLightBox'];
        $data['enableSeatingTable'] = $data['settings']['enableSeatingTable'];
        $data['enableCustomerReminder'] = $data['settings']['enableCustomerReminder'];
        $data['enableHotelRoomMode'] = $data['settings']['enableHotelRoomMode'];
        $data['onProductCllickIncreasePosQuantity'] = $data['settings']['onProductCllickIncreasePosQuantity'];
        $data['defaultPaymentMethod'] = Functions::getDataWhere("store_payments", "storeId", Session::get('storeId')) [0]['default'];
        $data['store'] = Functions::getDataWhere("stores", "storeId", Session::get('storeId')) [0];
        $data['seatingTables'] = Functions::getDataWhere("seating_tables", "storeId", Session::get('storeId'));
        //$data['hotelRooms'] = Functions::getDataWhere("hotel_rooms", "storeId", Session::get('storeId'));
        $data['hotelRooms'] = Functions::getDataWhere("products", "storeId,productType", Session::get('storeId') . ",Hotel");
        $data['employees'] = Functions::getDataWhere("employees", "storeId", Session::get('storeId'));
        $data['categories'] = Functions::getDataWhere("categories", "storeId", Session::get('storeId'));
        $data['manufacturers'] = Functions::getDataWhere("manufacturers", "storeId", Session::get('storeId'));
        $data['payments'] = Functions::getDataWhere("store_payments", "storeId", Session::get('storeId'));
        $data['comments'] = Functions::getDataWhere("comment_master", "storeId", Session::get('storeId'));
        $data['additionalCharges'] = Functions::getDataWhereOrderBy("additional_charges", "storeId", Session::get('storeId'), "sortOrder", "ASC");
        
        $data['customers'] = DB::table('customers')->where('storeId', Session::get('storeId'))->where('status', 1)->where('softDelete', 0)->whereDate('dateAdded', date('Y-m-d'))->count();
        $data['ordersCount'] = DB::table('order')->where('storeId', Session::get('storeId'))->where('softDelete', 0)->where('status', 1)->where('hold', 0)->whereDate('dateAdded', date('Y-m-d'))->count();
        $data['runningOrders'] = DB::table('order')->where('storeId', Session::get('storeId'))->where('softDelete', 0)->where('status', 1)->where('hold', 1)->where('hotel', 0)->whereDate('dateAdded', date('Y-m-d'))->count();
        
        $totalReturnProduct = DB::select("SELECT SUM(total) FROM `product_return` WHERE storeId='" . Session::get('storeId') . "' AND status='1' AND date(dateAdded) = '" . date('Y-m-d') . "'");
        $totalReturnProduct = Functions::arrayConvert($totalReturnProduct);
        $data['totalReturnProduct'] = ($totalReturnProduct[0]['SUM(total)']!='')?$totalReturnProduct[0]['SUM(total)']:0;

        $rewardUsedInRs = DB::select("SELECT SUM(rewardUsed) FROM `order` WHERE storeId='" . Session::get('storeId') . "' AND softDelete='0' AND status='1' AND hold='0' AND date(dateAdded) = '" . date('Y-m-d') . "'");
        $rewardUsedInRs = Functions::arrayConvert($rewardUsedInRs);
        $data['rewardUsedInRs'] = $rewardUsedInRs[0]['SUM(rewardUsed)'];
        
        $sum = DB::select("SELECT SUM(total) FROM `order` WHERE storeId='" . Session::get('storeId') . "' AND softDelete='0' AND status='1' AND hold='0' AND date(dateAdded) = '" . date('Y-m-d') . "'");
        $sum = Functions::arrayConvert($sum);
        $data['sales'] = $sum[0]['SUM(total)'];

        $globalDiscount = DB::select("SELECT globalDiscount,productDiscount FROM `order` WHERE storeId='" . Session::get('storeId') . "' AND softDelete='0' AND status='1' AND hold='0' AND date(dateAdded) = '" . date('Y-m-d') . "'");
        $globalDiscount = Functions::arrayConvert($globalDiscount);
        $dis = 0;
        foreach($globalDiscount as $discount){
            if($discount['globalDiscount']!='null' || $discount['productDiscount']!=0){
                if($discount['globalDiscount']!='null'){
                    $dis += json_decode($discount['globalDiscount'],true)['discountValue'];
                }
                $dis += $discount['productDiscount'];
            }
        }
        $data['discountValue'] = $dis;
        if(Session::get("roleOd")==1){
            $orders = DB::select("SELECT * FROM `order` WHERE storeId='" . Session::get('storeId') . "' AND status='1' AND hotel!=1 AND  date(dateAdded) = '" . date('Y-m-d') . "' ORDER BY orderId DESC");
        }else{
            $orders = DB::select("SELECT * FROM `order` WHERE storeId='" . Session::get('storeId') . "' AND softDelete='0' AND status='1' AND hotel!=1 AND  date(dateAdded) = '" . date('Y-m-d') . "' ORDER BY orderId DESC");
        }
        
        $orders = Functions::arrayConvert($orders);
        $data['orders'] = $orders;

        $todaysDate = Carbon::now()->format('Y-m-d');
        $hotelOrders = DB::select(
            "SELECT * FROM `order` 
            WHERE storeId = ? 
            AND softDelete = '0' 
            AND status = '1' 
            AND (hotel = 1 OR hotel = 0) 
            AND (checkoutType = 'sendToKot' OR checkoutType = 'hold') 
            ORDER BY orderId DESC",
            [Session::get('storeId') ]
        );
        $hotelOrders = Functions::arrayConvert($hotelOrders);
        $data['hotelOrders'] = $hotelOrders;
        $sql = "SELECT * FROM products WHERE storeId=" . Session::get('storeId') . " AND status=1 AND showInPos=1 AND softDelete=0";
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
        foreach ($products as $cart) {
            $tax = Functions::getTaxAmountByProductId($cart['productId'], "price");
            $products[$i]['taxHeading'] = $tax['taxHeading'];
            $products[$i]['taxPercent'] = $tax['taxPercent'];
            $products[$i]['taxExclusiveValue'] = $tax['taxExclusiveValue'];
            $products[$i]['taxInclusiveValue'] = $tax['taxInclusiveValue'];
            $products[$i]['tax'] = $tax['tax'];
            $products[$i]['basePriceCost'] = $tax['basePriceCost'];
            $i++;
        }
        $data['products'] = $products;
        $sql = "SELECT * FROM order_hotel_room WHERE storeId=" . Session::get('storeId') . " AND status=1 AND dateCheckOut='' AND timeCheckOut='' AND orderId!=0";
        $hotelBooked = DB::select($sql);
        $data['hotelBooked'] = Functions::arrayConvert($hotelBooked);
        foreach ($data['hotelBooked'] as $hotelBooked) {
            $data['hotelBooked'][] = $hotelBooked['productId'];
        }
        $data['customerOrders'] = $orders = Functions::getDataWhere("order", "customerId", Session::get("posCustomer") ['customerId']);
        return view('admin.pos.pos')->with($data);
    }
    public static function getCurrencySymbol() {
        $globalSettings = Functions::settings();
        return Functions::getDataWhere("currencies", "currencyId",$globalSettings['defaultCurrency'])[0]['symbol'];
    }
    public function posSimple(Request $request) {
        $userId = $request->session()->get('userId');
        if ($userId == "") {
            return redirect('/admin/login');
        }
        $data['settings'] = PosController::settings();
        if (Session::get("posCustomer") == "") {
            if ($data['settings']['walkInCustomerId'] != 0) {
                $defaultCustomer = Functions::getDataWhere("customers", "customerId", $data['settings']['walkInCustomerId']);
            }
            Session::put("posCustomer", $defaultCustomer[0]);
        }
        //echo '<pre>';
        //print_r(Session::get('hotelRoom'));
        //$this->clearPosData();
        $data['globalSettings'] = Functions::settings();
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $data['showCategories'] = $data['settings']['showCategories'];
        $data['showManufacturers'] = $data['settings']['showManufacturers'];
        $data['showImage'] = $data['settings']['showImage'];
        $data['showBarcode'] = $data['settings']['showBarcode'];
        $data['showModal'] = $data['settings']['showModal'];
        $data['restaurant'] = $data['settings']['restaurant'];
        $data['showQuickAdd'] = $data['settings']['showQuickAdd'];
        $data['showSalesPerson'] = $data['settings']['showSalesPerson'];
        $data['salesPersonRequired'] = $data['settings']['salesPersonRequired'];
        $data['showAddCustomerBottom'] = $data['settings']['showAddCustomerBottom'];
        $data['showWalletBalance'] = $data['settings']['showWalletBalance'];
        $data['showRewardBalance'] = $data['settings']['showRewardBalance'];
        $data['showExtraInformtionPopup'] = $data['settings']['showExtraInformtionPopup'];
        $data['showStoreInfomation'] = $data['settings']['showStoreInfomation'];
        $data['enableTaxes'] = $data['settings']['enableTaxes'];
        $data['enableRewardPoints'] = $data['settings']['enableRewardPoints'];
        $data['enableOrderType'] = $data['settings']['enableOrderType'];
        $data['orderTypeRequired'] = $data['settings']['orderTypeRequired'];
        $data['cartAppendStyle'] = $data['settings']['cartAppendStyle'];
        $data['enableLightBox'] = $data['settings']['enableLightBox'];
        $data['enableSeatingTable'] = $data['settings']['enableSeatingTable'];
        $data['enableCustomerReminder'] = $data['settings']['enableCustomerReminder'];
        $data['enableHotelRoomMode'] = $data['settings']['enableHotelRoomMode'];
        $data['onProductCllickIncreasePosQuantity'] = $data['settings']['onProductCllickIncreasePosQuantity'];
        $data['defaultPaymentMethod'] = Functions::getDataWhere("store_payments", "storeId", Session::get('storeId')) [0]['default'];
        $data['store'] = Functions::getDataWhere("stores", "storeId", Session::get('storeId')) [0];
        $data['seatingTables'] = Functions::getDataWhere("seating_tables", "storeId", Session::get('storeId'));
        //$data['hotelRooms'] = Functions::getDataWhere("hotel_rooms", "storeId", Session::get('storeId'));
        $data['hotelRooms'] = Functions::getDataWhere("products", "storeId,productType", Session::get('storeId') . ",Hotel");
        $data['vendors'] = Functions::getDataWhere("vendors", "storeId", Session::get('storeId'));
        $data['employees'] = Functions::getDataWhere("employees", "storeId", Session::get('storeId'));
        $data['categories'] = Functions::getDataWhere("categories", "storeId", Session::get('storeId'));
        $data['manufacturers'] = Functions::getDataWhere("manufacturers", "storeId", Session::get('storeId'));
        $data['payments'] = Functions::getDataWhere("store_payments", "storeId", Session::get('storeId'));
        $data['comments'] = Functions::getDataWhere("comment_master", "storeId", Session::get('storeId'));
        $data['additionalCharges'] = Functions::getDataWhereOrderBy("additional_charges", "storeId", Session::get('storeId'), "sortOrder", "ASC");
        $data['customers'] = DB::table('customers')->where('storeId', Session::get('storeId'))->where('status', 1)->where('softDelete', 0)->whereDate('dateAdded', date('Y-m-d'))->count();
        $data['ordersCount'] = DB::table('order')->where('storeId', Session::get('storeId'))->where('softDelete', 0)->where('status', 1)->where('hold', 0)->whereDate('dateAdded', date('Y-m-d'))->count();
        $data['runningOrders'] = DB::table('order')->where('storeId', Session::get('storeId'))->where('softDelete', 0)->where('status', 1)->where('hold', 1)->where('hotel', 0)->whereDate('dateAdded', date('Y-m-d'))->count();
        $rewardUsedInRs = DB::select("SELECT SUM(rewardUsed) FROM `order` WHERE storeId='" . Session::get('storeId') . "' AND softDelete='0' AND status='1' AND hold='0' AND date(dateAdded) = '" . date('Y-m-d') . "'");
        $rewardUsedInRs = Functions::arrayConvert($rewardUsedInRs);
        $data['rewardUsedInRs'] = $rewardUsedInRs[0]['SUM(rewardUsed)'];
        $sum = DB::select("SELECT SUM(total) FROM `order` WHERE storeId='" . Session::get('storeId') . "' AND softDelete='0' AND status='1' AND hold='0' AND date(dateAdded) = '" . date('Y-m-d') . "'");
        $sum = Functions::arrayConvert($sum);
        $data['sales'] = $sum[0]['SUM(total)'];
        $orders = DB::select("SELECT * FROM `order` WHERE storeId='" . Session::get('storeId') . "' AND softDelete='0' AND status='1' AND hotel!=1 AND  date(dateAdded) = '" . date('Y-m-d') . "' ORDER BY orderId DESC");
        $orders = Functions::arrayConvert($orders);
        $data['orders'] = $orders;
        $hotelOrders = DB::select("SELECT * FROM `order` WHERE storeId='" . Session::get('storeId') . "' AND softDelete='0' AND status='1' AND hotel=1 AND checkoutType='hold' ORDER BY orderId DESC");
        $hotelOrders = Functions::arrayConvert($hotelOrders);
        $data['hotelOrders'] = $hotelOrders;
        $sql = "SELECT * FROM products WHERE storeId=" . Session::get('storeId') . " AND status=1 AND showInPos=1 AND softDelete=0";
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
        foreach ($products as $cart) {
            $tax = Functions::getTaxAmountByProductId($cart['productId'], "price");
            $products[$i]['taxHeading'] = $tax['taxHeading'];
            $products[$i]['taxPercent'] = $tax['taxPercent'];
            $products[$i]['taxExclusiveValue'] = $tax['taxExclusiveValue'];
            $products[$i]['taxInclusiveValue'] = $tax['taxInclusiveValue'];
            $products[$i]['tax'] = $tax['tax'];
            $products[$i]['basePriceCost'] = $tax['basePriceCost'];
            $i++;
        }
        $data['products'] = $products;
        $totalReturnProduct = DB::select("SELECT SUM(total) FROM `product_return` WHERE storeId='" . Session::get('storeId') . "' AND status='1' AND date(dateAdded) = '" . date('Y-m-d') . "'");
        $totalReturnProduct = Functions::arrayConvert($totalReturnProduct);
        $data['totalReturnProduct'] = ($totalReturnProduct[0]['SUM(total)']!='')?$totalReturnProduct[0]['SUM(total)']:0;
        $sql = "SELECT * FROM order_hotel_room WHERE storeId=" . Session::get('storeId') . " AND status=1 AND dateCheckOut='' AND timeCheckOut='' AND orderId!=0";
        $hotelBooked = DB::select($sql);
        $data['hotelBooked'] = Functions::arrayConvert($hotelBooked);
        foreach ($data['hotelBooked'] as $hotelBooked) {
            $data['hotelBooked'][] = $hotelBooked['productId'];
        }
        $data['customerOrders'] = $orders = Functions::getDataWhere("order", "customerId", Session::get("posCustomer") ['customerId']);
        return view('admin.pos.pos-simple')->with($data);
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
        if ($segments[2] == 'sendToKot') {
            $data['invoiceProducts'] = PosController::getDataWhere("order_product", "orderId,kotToken", $data['order']['orderId'] . ',' . Session::get('kotToken'));
        }else{
            $data['invoiceProducts'] = json_decode($data['order']['orderProduct'], true);
        }
        
        
        return view('admin.pos.invoice')->with($data);
    }
    public function invoiceView(Request $request) {
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
        $data['view'] = 1;
        if ($segments[2] == 'sendToKot') {
            $invoiceTemplateId = $data['settings']['defaultKotTemplate'];
        }
        $data['template'] = Functions::getDataWhere("invoice_template", "invoiceTemplateId", $invoiceTemplateId) [0];
        $data['order'] = Functions::getDataWhere("order", "orderId", $lastSegment) [0];
        $data['orderTotal'] = Functions::getDataWhere("order_total", "orderId", $lastSegment) [0];
        $data['storeSettings'] = Functions::getDataWhere("store_settings", "storeId", 1) [0];
        $data['store'] = Functions::getDataWhere("stores", "storeId", 1) [0];
        $data['customer'] = Functions::getDataWhere("customers", "customerId", $data['order']['customerId']) [0];
        $data['invoiceProducts'] = PosController::getDataWhere("order_product", "orderId,kotViewed", $data['order']['orderId'] . ',' . '0');
        if (empty($data['invoiceProducts'])) {
            return redirect("/admin/kot");
        }
        foreach ($data['invoiceProducts'] as $product) {
            DB::select("UPDATE order_product SET kotViewed=1,kotViewedBy='" . Session::get('userId') . "' WHERE orderProductId='" . $product['orderProductId'] . "'");
        }
        return view('admin.pos.invoice')->with($data);
    }
    public function kot(Request $request) {
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
        return view('admin.pos.kot')->with($data);
    }
    public function dataTableKot() {
        $table = "order";
        $where = 0;
        $orderColumn = array("orderId", "name", "email", "mobile", "orderStatusId", "dateAdded");
        $sql = "SELECT * FROM `order` WHERE orderType='DineIn' AND checkOutType='sendToKot' AND hold='1' AND runningOrder='1'";
        if (isset($_POST['search']['value']) and $_POST['search']['value'] != "") {
            $sql .= " OR orderId LIKE '%" . $_POST['search']['value'] . "%'";
            $sql .= " OR name LIKE '%" . $_POST['search']['value'] . "%'";
            $sql .= " OR email LIKE '%" . $_POST['search']['value'] . "%'";
            $sql .= " OR mobile LIKE '%" . $_POST['search']['value'] . "%'";
            $sql .= " OR orderStatusId LIKE '%" . $_POST['search']['value'] . "%'";
            $sql .= " OR dateAdded LIKE '%" . $_POST['search']['value'] . "%')";
        }
        if (Functions::checkIfColumnExists($table, "softDelete") and isset($menuData['listViewSoftDelete']) and $menuData['listViewSoftDelete'] == 'Yes') {
            $sql .= ' AND softDelete=0 ';
        }
        if (Functions::checkIfColumnExists($table, "userId") and $table != 'users' and Session::get('roleId') != 1 and Session::get('storeId') == '') {
            $sql .= " AND userId = '" . Session::get('userId') . "'";
        }
        else if (Functions::checkIfColumnExists($table, "storeId") and $table != 'users' and Session::get('roleId') != 1 and Session::get('storeId') != '') {
            $sql .= " AND storeId = '" . Session::get('storeId') . "'";
        }
        else if (Functions::checkIfColumnExists($table, "storeId") and $table != 'users' and Session::get('roleId') == 1 and Session::get('storeId') != '') {
            $sql .= " AND storeId = '" . Session::get('storeId') . "'";
        }
        if ($table == 'users' and Session::get('roleId') != 1) {
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
        $permission = Functions::permissionStaticPage(59);
        foreach ($modules as $row) {
            $lastViewedBy = DB::select("SELECT * FROM order_product WHERE orderId='" . $row->orderId . "' AND kotViewed=1 ORDER BY orderProductId DESC LIMIT 1");
            $lastViewedBy = Functions::arrayConvert($lastViewedBy);
            if (!empty($lastViewedBy[0])) {
                $lastViewedBy = Functions::getDataWhere("users", "userId", $lastViewedBy[0]['kotViewedBy']);
                $lastViewedBy = $lastViewedBy[0]['userName'];
            }
            else {
                $lastViewedBy = "";
            }
            $newItemAdded = DB::select("SELECT * FROM order_product WHERE orderId='" . $row->orderId . "' AND kotViewed=0");
            $newItemAdded = Functions::arrayConvert($newItemAdded);
            if (count($newItemAdded) > 0) {
                $newItemAdded = '<div class="badge badge-success" style="padding:5px;width:50px;text-align:center">' . count($newItemAdded) . '</div>';
            }
            else {
                $newItemAdded = '<div class="badge badge-warning" style="padding:5px;width:50px;text-align:center">' . count($newItemAdded) . '</div>';
            }
            $subArray = array();
            $subArray[] = $row->orderId;
            $subArray[] = '<strong>' . $row->name . '</strong>';
            $subArray[] = '<strong>' . $row->email . '</strong>';
            $subArray[] = '<strong>' . $row->mobile . '</strong>';
            $subArray[] = '<strong>' . Functions::getDataWhere("order_status", "orderStatusId", $row->orderStatusId) [0]['heading'] . '</strong>';
            $subArray[] = '<strong>' . $newItemAdded . '</strong>';
            $subArray[] = '<strong>' . $lastViewedBy . '</strong>';
            $button = '<div style="display:flex;width:100%">';
            if (isset($permission['edit']) and $permission['edit'] == 1) {
                $txt = "E";
                $class = "warning";
            }
            else {
                $txt = "V";
                $class = "info";
            }
            $button .= '<div style="width:100%;margin-right:3px"><a class="btn btn-' . $class . ' qlyoctyesu" style="width:100%;"  target="_BLANK" href="' . url("/") . '/admin/invoice/sendToKot/view/' . $row->orderId . '" data-toggle="tooltip" data-placement="top" title="Edit">' . $txt . '</a></div>';
            if (isset($permission['edit']) and $permission['edit'] == 1) {
                $button .= '<div style="width:100%;"><div style="width:100%;" class="btn btn-danger delete" data-page="order_history" data-id="' . $row->orderId . '" data-column="orderHistoryId" data-toggle="tooltip" data-placement="top" title="Delete">D</a></div></div>';
            }
            $button .= '</div>';
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
    public static function setCustomerPos($customerId = false,$return = false) {
        if ($customerId == false) {
            $customerId = $_POST['customerId'];
        }

        PosController::updateCustomerReward($customerId);
        PosController::updateCustomerWallet($customerId);
        $customer = Functions::getDataWhere("customers", "customerId", $customerId) [0];
        Session::put("posCustomer", $customer);
        Session::forget("rewardPoints");
        Session::forget("cartGlobalDiscount");

        if($return == false){
            echo json_encode(array("status"=>"success","data"=>$customer));
        }
        
    }
    public static function getOrderProductByOrderId() {
        $orderProducts = array();
        //$orderProducts = Functions::getDataWhere("order_product","orderId,return",$_POST['orderId'].",0");
        $orderProducts = DB::select("SELECT * FROM order_product WHERE orderId='" . $_POST['orderId'] . "' AND `return` = 0");
        $orderProducts = Functions::arrayConvert($orderProducts);
        echo json_encode(array("status" => "success", "orderProducts" => $orderProducts));
    }
    public static function setCategoryPos() {
        if ($_POST['categoryId'] == "") {
            Session::forget("posCategory");
        }
        else {
            Session::put("posCategory", $_POST['categoryId']);
        }
    }
    public static function setOrderType() {
        if ($_POST['orderType'] == "") {
            Session::forget("orderType");
        }
        else {
            Session::put("orderType", $_POST['orderType']);
        }
        if ($_POST['orderType'] != "DineIn") {
            Session::forget("seatingTableId");
        }
    }
    public static function setTableForOrder() {
        if ($_POST['seatingTableId'] == "0") {
            Session::forget("seatingTableId");
        }
        else {
            Session::forget("posCustomer");
            Session::forget("seatingTableId");
            Session::forget("multiple");
            Session::forget("rewardPoints");
            Session::forget("paymentId");
            Session::forget("posCart");
            Session::forget("updateId");
            Session::forget("additionalCharges");
            Session::forget("cartGlobalDiscount");
            Session::forget("hotelRoom");
            
            Session::put("seatingTableId", $_POST['seatingTableId']);
            echo json_encode(array("status"=>"success","data"=>PosController::cartTotal()));
        }
    }
    public static function setRoomForOrder() {
        if ($_POST['productId'] == "0") {
            Session::forget("hotelRoomId");
        }
        else {
            Session::put("hotelRoomId", $_POST['productId']);
        }
    }
    public static function setManufacturerPos() {
        if ($_POST['manufacturerId'] == "") {
            Session::forget("posManufacturer");
        }
        else {
            Session::put("posManufacturer", $_POST['manufacturerId']);
        }
    }
    public static function setGlobalDiscount() {
        if ($_POST['discount'] == "" || $_POST['discount'] == "0") {
            Session::forget("cartGlobalDiscount");
        }
        else {
            if (str_contains($_POST['discount'], '%')) {
                $int = (int)filter_var($_POST['discount'], FILTER_SANITIZE_NUMBER_INT);
                $carts['discount'] = $_POST['discount'];
                $carts['discountValue'] = (($int / 100) * PosController::cartTotal() ['totalForGlobalDiscount']);
                $carts['discountValue'] = round($carts['discountValue'], 2);
            }
            else {
                $int = (int)filter_var($_POST['discount'], FILTER_SANITIZE_NUMBER_INT);
                $carts['discount'] = $int;
                $carts['discountValue'] = round($int, 2);
            }
            Session::put("cartGlobalDiscount", $carts);
        }
    }
    public static function additionalCharges() {
        if ($_POST['additionalCharges'] == "") {
            Session::forget("additionalCharges");
        }
        else {
            Session::put("additionalCharges", json_decode($_POST['additionalCharges'], true));
        }
        echo json_encode(array("status" => "success", "data" => PosController::cartTotal()));
    }
    public static function setMultiplePaymentMethods() {
        if (isset($_POST['multiple']) and $_POST['multiple'] == "") {
            Session::forget("multiple");
        }
        else {
            $multiple = json_decode($_POST['multiple'], true);
            if (empty($multiple)) {
                Session::forget("multiple");
                echo json_encode(array("status" => "error", "message" => "Please check for amount in your multiple payment method.", "type" => "amountZero"));
                return;
            }
            if ($_POST['count'] != count($multiple)) {
                Session::forget("multiple");
                echo json_encode(array("status" => "error", "message" => "You cant choose same payment mode multiple times.", "type" => "multipleSamePaymentMode"));
                return;
            }
            $multipleAmount = array();
            foreach ($multiple as $value) {
                $multipleAmount[] = $value;
            }
            if (round(PosController::cartTotal() ['total']) != array_sum($multipleAmount)) {
                Session::forget("multiple");
                echo json_encode(array("status" => "error", "message" => "Multple payment amount data is not matching up with the order total. Please check it.", "type" => "multipleMisMatch"));
                return;
            }
            Session::put("multiple", $multiple);
        }
        echo json_encode(array("status" => "success", "data" => PosController::cartTotal()));
    }
    public static function removeAdditionalCostByKey() {
        $array = Session::get("additionalCharges");
        foreach ($array as $key => $value) {
            if ($_POST['additionalCostkey'] == $key) {
                unset($array[$key]);
            }
        }
        if (empty($array)) {
            Session::forget("additionalCharges");
        }
        else {
            Session::put("additionalCharges", $array);
        }
    }
    public static function setPaymentMethod($paymentId = false) {
        if($paymentId != false){
            $_POST['paymentId'] = $paymentId;
        }
        Session::forget("multiple");
        if (!isset($_POST['paymentId'])) {
            Session::forget("paymentId");
        }
        else {
            $payment = Functions::getDataWhere("payments", "paymentId", $_POST['paymentId']) [0];
            Session::put("paymentId", $payment);
        }
    }
    public static function getProductById($productId) {
        $settings = PosController::settings();
        $sql = "SELECT * FROM products WHERE productId='" . $productId . "'";
        $sql .= " ORDER BY productId DESC LIMIT 50";
        $products = DB::select($sql);
        $products = Functions::arrayConvert($products);
        $i = 0;
        foreach ($products as $cart) {
            $tax = Functions::getTaxAmountByProductId($cart['productId'], "price");
            $products[$i]['taxHeading'] = $tax['taxHeading'];
            $products[$i]['taxPercent'] = $tax['taxPercent'];
            $products[$i]['taxExclusiveValue'] = $tax['taxExclusiveValue'];
            $products[$i]['taxInclusiveValue'] = $tax['taxInclusiveValue'];
            $products[$i]['tax'] = $tax['tax'];
            $products[$i]['taxType'] = $cart['taxType'];
            $products[$i]['basePriceCost'] = $tax['basePriceCost'];
            $products[$i]['discount'] = 0;
            $products[$i]['discountValue'] = 0;
            $products[$i]['extraInformation'] = "";
            $products[$i]['total'] = $products[$i]['price'];
            $products[$i]['profit'] = ($products[$i]['basePriceCost'] - $products[$i]['discountValue']) - ($products[$i]['cost']);
            if ($settings['enableRewardPoints'] == 1) {
                $products[$i]['rewardPoints'] = ($settings['rewardPercentOnProduct'] / 100) * $products[$i]['price'];
            }
            else {
                $products[$i]['rewardPoints'] = 0;
            }
            $i++;
        }
        return $products;
    }
    public function clearPosData() {
        Session::forget("posCustomer");
        Session::forget("posCategory");
        Session::forget("posManufacturer");
        Session::forget("posCart");
        Session::forget("orderType");
        Session::forget("seatingTableId");
        Session::forget("additionalCharges");
        Session::forget("cartGlobalDiscount");
        Session::forget("rewardPoints");
        Session::forget("multiple");
        Session::forget("paymentId");
        Session::forget("updateId");
        Session::forget("skipOtpToken");
        Session::forget("otpToken");
        Session::forget("hotelRoom");
        if (Session::get("posCustomer") == "") {
            $data['settings'] = PosController::settings();
            if ($data['settings']['walkInCustomerId'] != 0) {
                $defaultCustomer = Functions::getDataWhere("customers", "customerId", $data['settings']['walkInCustomerId']);
            }
            Session::put("posCustomer", $defaultCustomer[0]);
        }
    }
    public static function clearPosDataStatic() {
        Session::forget("posCustomer");
        Session::forget("posCategory");
        Session::forget("posManufacturer");
        Session::forget("posCart");
        Session::forget("orderType");
        Session::forget("seatingTableId");
        Session::forget("additionalCharges");
        Session::forget("cartGlobalDiscount");
        Session::forget("rewardPoints");
        Session::forget("multiple");
        Session::forget("paymentId");
        Session::forget("updateId");
        Session::forget("skipOtpToken");
        Session::forget("otpToken");
        Session::forget("hotelRoom");
        if (Session::get("posCustomer") == "") {
            $data['settings'] = PosController::settings();
            if ($data['settings']['walkInCustomerId'] != 0) {
                $defaultCustomer = Functions::getDataWhere("customers", "customerId", $data['settings']['walkInCustomerId']);
            }
            Session::put("posCustomer", $defaultCustomer[0]);
        }
    }
    public function deleteItemFromCart($productId = false) {
        if ($productId != false) {
            $_POST['delete'] = $productId;
        }
        if (isset($_POST['delete'])) {
            if (!empty(Session::get("posCart"))) {
                $carts = Session::get("posCart");
                $i = 0;
                $hotel = 0;
                foreach ($carts as $cart) {
                    if (($cart['productId'] == $_POST['delete'])) {
                        unset($carts[$i]);
                        if ($cart['productType'] == 'Hotel') {
                            Session::forget("hotelRoom");
                            $hotel = 1;
                        }
                    }
                    $i++;
                }
                $carts = array_values($carts);
                Session::put("posCart", $carts);
                Session::forget("cartGlobalDiscount");
            }
        }
        echo json_encode(array("status" => "success", "data" => PosController::cartTotal(), "productType" => $hotel));
    }
    public function updateQuantityDiscountInPosCart($productId = false, $quantity = false, $discount = false) {
        if ($productId != false) {
            $_POST['productId'] = $productId;
        }
        if ($productId != false) {
            $_POST['quantity'] = $quantity;
        }
        if ($productId != false) {
            $_POST['discount'] = $discount;
        }
        $settings = PosController::settings();
        if (!empty(Session::get("posCart"))) {
            $product = PosController::getProductById($_POST['productId']);
            $carts = Session::get("posCart");
            $i = 0;
            if (isset($_POST['quantity'])) {
                $lessQuantity = 0;
                if ($product[0]['quantity'] < $_POST['quantity']) {
                    $lessQuantity = $product[0]['quantity'];
                    echo json_encode(array("status" => "error", "message" => "Quantity is not sufficient only " . $product[0]['quantity'] . " left in stock.", "quantityAvaliable" => $product[0]['quantity']));
                    exit();
                }
            }
            foreach ($carts as $cart) {
                if (($cart['productId'] == $_POST['productId'])) {
                    if (isset($_POST['quantity'])) {
                        $carts[$i]['quantity'] = $_POST['quantity'];
                        $tax = Functions::getTaxAmountByProductId($cart['productId'], "price", $carts[$i]['price']);
                        $carts[$i]['taxHeading'] = $tax['taxHeading'];
                        $carts[$i]['taxPercent'] = $tax['taxPercent'];
                        $carts[$i]['taxExclusiveValue'] = $tax['taxExclusiveValue'];
                        $carts[$i]['taxInclusiveValue'] = $tax['taxInclusiveValue'];
                        $carts[$i]['tax'] = $tax['tax'] * $_POST['quantity'];
                        $carts[$i]['basePriceCost'] = $tax['basePriceCost'] * $_POST['quantity'];
                        $carts[$i]['profit'] = ($carts[$i]['basePriceCost'] - $carts[$i]['discountValue']) - ($carts[$i]['cost'] * $carts[$i]['quantity']);
                        if ($lessQuantity > 0) {
                            $_POST['quantity'] = $lessQuantity;
                        }
                        $carts[$i]['total'] = $carts[$i]['price'] * $_POST['quantity'];
                    }
                    if (isset($_POST['discount'])) {
                        if (str_contains($_POST['discount'], '%')) {
                            $int = (int)filter_var($_POST['discount'], FILTER_SANITIZE_NUMBER_INT);
                            $carts[$i]['discount'] = $_POST['discount'];
                            $carts[$i]['discountValue'] = (($int / 100) * $carts[$i]['total']);
                        }
                        else {
                            $int = (int)filter_var($_POST['discount'], FILTER_SANITIZE_NUMBER_INT);
                            $carts[$i]['discount'] = $int;
                            $carts[$i]['discountValue'] = $int;
                        }
                        $carts[$i]['profit'] = ($carts[$i]['basePriceCost'] - $carts[$i]['discountValue']) - ($carts[$i]['cost'] * $carts[$i]['quantity']);
                    }
                    $carts[$i]['rewardPoints'] = PosController::earnedRewardPoints($carts[$i]);
                    //print_r($carts[$i]['discountValue']);
                    
                }
                $i++;
            }
            $carts = array_values($carts);
            Session::put("posCart", $carts);
            Session::forget("cartGlobalDiscount");
        }
        if (isset($_POST['quantity']) and $lessQuantity == 0) {
            echo json_encode(array("status" => "success"));
        }
        else {
            echo json_encode(array("status" => "success"));
        }
    }
    public function setAdditionalInformation(Request $request) {
        $i = 0;
        if (isset($_POST['extraInformation'])) {
            if (!empty(Session::get("posCart"))) {
                $carts = Session::get("posCart");
                foreach ($carts as $cart) {
                    if (($cart['productId'] == $_POST['productId'])) {
                        $carts[$i]['extraInformation'] = $_POST['extraInformation'];
                    }
                    $i++;
                }
                $carts = array_values($carts);
                Session::put("posCart", $carts);
            }
        }
        echo json_encode(array("status" => "success"));
    }
    public function changeRuntimePrice(Request $request) {
        $i = 0;
        if (isset($_POST['price']) and $_POST['price'] > 0) {
            if (!empty(Session::get("posCart"))) {
                $carts = Session::get("posCart");
                foreach ($carts as $cart) {
                    if (($cart['productId'] == $_POST['productId'])) {
                        $carts[$i]['price'] = $_POST['price'];
                        $carts[$i]['total'] = $carts[$i]['price'] * $carts[$i]['quantity'];
                        $tax = Functions::getTaxAmountByProductId($cart['productId'], "price", $carts[$i]['price']);
                        $carts[$i]['taxHeading'] = $tax['taxHeading'];
                        $carts[$i]['taxPercent'] = $tax['taxPercent'];
                        $carts[$i]['taxExclusiveValue'] = $tax['taxExclusiveValue'] * $carts[$i]['quantity'];
                        $carts[$i]['taxInclusiveValue'] = $tax['taxInclusiveValue'] * $carts[$i]['quantity'];
                        $carts[$i]['tax'] = $tax['tax'] * $carts[$i]['quantity'];
                        $carts[$i]['basePriceCost'] = $tax['basePriceCost'] * $carts[$i]['quantity'];
                        $carts[$i]['profit'] = ($carts[$i]['basePriceCost'] - $carts[$i]['discountValue']) - ($carts[$i]['cost'] * $carts[$i]['quantity']);
                        if ($carts[$i]['discount'] != 0) {
                            if (str_contains($carts[$i]['discount'], '%')) {
                                $int = (int)filter_var($carts[$i]['discount'], FILTER_SANITIZE_NUMBER_INT);
                                $carts[$i]['discount'] = $carts[$i]['discount'];
                                $carts[$i]['discountValue'] = (($int / 100) * $carts[$i]['total']);
                            }
                            else {
                                $int = (int)filter_var($carts[$i]['discount'], FILTER_SANITIZE_NUMBER_INT);
                                $carts[$i]['discount'] = $int;
                                $carts[$i]['discountValue'] = $int;
                            }
                            $carts[$i]['profit'] = ($carts[$i]['basePriceCost'] - $carts[$i]['discountValue']) - ($carts[$i]['cost'] * $carts[$i]['quantity']);
                        }
                        $carts[$i]['rewardPoints'] = PosController::earnedRewardPoints($carts[$i]);
                    }
                    $i++;
                }
                $carts = array_values($carts);
                Session::put("posCart", $carts);
            }
        }
        echo json_encode(array("status" => "success"));
    }
    public static function earnedRewardPoints($cart) {
        $settings = PosController::settings();
        $rewardPoints = 0;
        $productId = $cart['productId'];
        if ($settings['enableRewardPoints'] == 1) {
            $product = PosController::getProductById($cart['productId']);
            $productDiscount = $cart['discountValue'];
            if ($settings['rewardOnDiscountedProduct'] == 1 and $productDiscount > 0 and !empty(Session::get("cartGlobalDiscount"))) {
                $int = (int)filter_var(Session::get("cartGlobalDiscount") ['discount'], FILTER_SANITIZE_NUMBER_INT);
                $globalDiscount = ($int / 100) * $cart['total'];
                $rewardPoints = $cart['total'] - $cart['discountValue'] - $globalDiscount;
                $rewardPoints = ($settings['rewardPercentOnProduct'] / 100) * $rewardPoints;
            }
            else if ($settings['rewardOnDiscountedProduct'] == 1 and $productDiscount > 0 and empty(Session::get("cartGlobalDiscount"))) {
                $rewardPoints = $cart['total'] - $cart['discountValue'];
                $rewardPoints = ($settings['rewardPercentOnProduct'] / 100) * $rewardPoints;
            }
            else if ($settings['rewardOnDiscountedProduct'] == 1 and $productDiscount == 0 and !empty(Session::get("cartGlobalDiscount"))) {
                $int = (int)filter_var(Session::get("cartGlobalDiscount") ['discount'], FILTER_SANITIZE_NUMBER_INT);
                $globalDiscount = ($int / 100) * $cart['total'];
                $rewardPoints = $cart['total'] - $globalDiscount;
                $rewardPoints = ($settings['rewardPercentOnProduct'] / 100) * $rewardPoints;
            }
            else if ($settings['rewardOnDiscountedProduct'] == 1 and $productDiscount == 0 and empty(Session::get("cartGlobalDiscount"))) {
                $rewardPoints = $cart['total'];
                $rewardPoints = ($settings['rewardPercentOnProduct'] / 100) * $rewardPoints;
            }
            else if ($settings['rewardOnDiscountedProduct'] == 0 and ($productDiscount > 0 || !empty(Session::get("cartGlobalDiscount")))) {
                $rewardPoints = 0;
            }
            else {
                $rewardPoints = $cart['total'];
                $rewardPoints = ($settings['rewardPercentOnProduct'] / 100) * $rewardPoints;
            }
        }
        else {
            $rewardPoints = 0;
        }
        if ($rewardPoints < 0) {
            $rewardPoints = 0;
        }
        $carts = Session::get("posCart");
        $i = 0;
        foreach ($carts as $cart) {
            if (($cart['productId'] == $productId)) {
                $carts[$i]['rewardPoints'] = $rewardPoints;
            }
            $i++;
        }
        $carts = array_values($carts);
        Session::put("posCart", $carts);
        return round($rewardPoints);
    }
    public static function cartTotal() {
        $settings = PosController::settings();
        $globalSettings = Functions::settings();
        $data['roomRent'] = 0;
        $data['totalItemsInCart'] = 0;
        $data['totalQuantityInCart'] = 0;
        $data['subTotal'] = 0;
        $data['productDiscount'] = 0;
        $data['tax'] = 0;
        $data['rewardPoints'] = 0;
        $data['total'] = 0;
        $data['originalTotal'] = 0;
        $data['totalForGlobalDiscount'] = 0;
        $enableHotelRoomMode = $settings['enableHotelRoomMode'];
        if ($enableHotelRoomMode == 1 and !empty(Session::get("hotelRoom"))) {
            //print_r(Session::get("hotelRoom"));
            //$data['subTotal'] = Session::get("hotelRoom")['hotel']['roomCharges'];
            
        }
        if (!empty(Session::get("posCart"))) {
            $carts = Session::get("posCart");
            foreach ($carts as $cart) {
                $data['totalItemsInCart']++;
                $data['totalQuantityInCart'] += $cart['quantity'];
                if ($enableHotelRoomMode == 1 and !empty(Session::get("hotelRoom"))) {
                    //$data['roomRent'] = Session::get("hotelRoom")['hotel']['roomCharges'];
                    
                }
                $data['subTotal'] += $cart['total'];
                //$productDiscount = $cart['discountValue'] * $cart['quantity'];
                $productDiscount = $cart['discountValue'];
                $data['productDiscount'] += $productDiscount;
                $tax = $cart['tax'];
                if($cart['taxType']=='Inclusive'){
                    $tax = 0;
                }
                $data['tax'] += $tax;
                
                if($settings['rewardPointsOnCredit'] == 0 AND ($globalSettings['creditPaymentMethod'] == Session::get("paymentId")['paymentId'])){
                    $data['rewardPoints'] = 0;
                }else{
                    $data['rewardPoints'] += PosController::earnedRewardPoints($cart);
                }

                $data['total'] += ($cart['total'] + $tax) - $productDiscount;
                $data['originalTotal'] += ($cart['total'] + $tax) - $productDiscount;
                $data['totalForGlobalDiscount'] += $cart['total'] - $productDiscount;
            }
            $extraTotal = 0;
            if (!empty(Session::get("cartGlobalDiscount"))) {
                $data['globalDiscount'] = Session::get("cartGlobalDiscount") ['discount'];
                $data['globalDiscountValue'] = Session::get("cartGlobalDiscount") ['discountValue'];
                $data['total'] -= $data['globalDiscountValue'];
            }
            else {
                $data['globalDiscount'] = "";
                $data['globalDiscountValue'] = 0;
            }
            if (Session::get("rewardPoints") != '' and Session::get("rewardPoints") > 0) {
                $data['total'] -= Session::get("rewardPoints");
            }
            if (!empty(Session::get("additionalCharges"))) {
                $data['additionalCharges'] = Session::get("additionalCharges");
                foreach ($data['additionalCharges'] as $key => $value) {
                    $extraTotal += $value;
                }
                $data['total'] += $extraTotal;
                $data['originalTotal'] += $extraTotal;
            }
            else {
                $data['additionalCharges'] = array();
                $extraTotal = 0;
            }
        }
        if ($enableHotelRoomMode == 1 and !empty(Session::get("hotelRoom"))) {
            //$data['roomRent'] = Session::get("hotelRoom")['hotel']['roomCharges'];
            //$data['total'] += Session::get("hotelRoom")['hotel']['roomCharges'];
            
        }
        return $data;
    }
    public static function setCartPos($productId = false) {
        if($productId == false){
            $productId = json_decode($_POST['productId']);
        }
        $cart = Session::get("posCart");
        $product = PosController::getProductById($productId);
        if (empty($cart)) {
            if ($product[0]['quantity'] < 1) {
                return json_encode(array("status" => "error", "message" => "Quantity is not sufficient"));
            }
            $product[0]['quantity'] = 1;
            Session::put("posCart", $product);
            if ($product[0]['productType'] == 'Hotel') {
                $hotel = Functions::getDataWhere("products", "productId", $_POST['productId']) [0];
                $_POST['dateCheckIn'] = date("Y-m-d");
                $_POST['timeCheckIn'] = date("H:i");
                $_POST['dateCheckOut'] = "";
                $_POST['timeCheckOut'] = "";
                $_POST['personName'] = array();
                $_POST['personId'] = array();
                $data['post'] = $_POST;
                $data['dateCheckIn'] = date("Y-m-d");
                $data['timeCheckIn'] = date("H:i");
                $data['hotel'] = $hotel;
                $data['hotelToken'] = Functions::getToken(50);
                Session::put("hotelRoom", $data);
                unset($data['post']);
                $data['hotel'] = json_encode($hotel);
                Functions::setData("order_hotel_room", $data);
            }
        }
        else {
            if ($product[0]['quantity'] < 1) {
                return json_encode(array("status" => "error", "message" => "Quantity is not sufficient"));
            }
            $product[0]['quantity'] = 1;
            Session::push("posCart", $product[0]);
            if (Session::get("hotelRoom") == "" and $product[0]['productType'] == 'Hotel') {
                $hotel = Functions::getDataWhere("products", "productId", $_POST['productId']) [0];
                $data['post'] = $_POST;
                $data['hotel'] = $hotel;
                $data['hotelToken'] = Functions::getToken(50);
                $data['dateCheckIn'] = date("Y-m-d");
                $data['timeCheckIn'] = date("H:i");
                Session::put("hotelRoom", $data);
                unset($data['post']);
                $data['hotel'] = json_encode($hotel);
                Functions::setData("order_hotel_room", $data);
            }
        }
        Session::forget("cartGlobalDiscount");
        if(isset($_POST['productId'])){
            echo json_encode(array("status" => "success", "data" => PosController::cartTotal()));
        }
        
    }
    public function redeemRewardPoints(Request $request) {
        $settings = $this->settings();
        $total = round(PosController::cartTotal() ['total']);
        if ($_POST['points'] > $total) {
            echo json_encode(array("status" => "error", "message" => "Maximum points you can use is " . $total));
            Session::forget("rewardPoints");
        }
        else if ($_POST['points'] < $settings['minimumRewardPointsToReedem']) {
            echo json_encode(array("status" => "error", "message" => "Minimum points required to reedem is " . $settings['minimumRewardPointsToReedem']));
            Session::forget("rewardPoints");
        }
        else if ($_POST['points'] > Session::get("posCustomer") ['rewardPoints']) {
            echo json_encode(array("status" => "error", "message" => "Customer doesnt have enough reward points in there wallet"));
            Session::forget("rewardPoints");
        }
        else {
            Session::put("rewardPoints", $_POST['points']);
            echo json_encode(array("status" => "success", "message" => "points redeemed successfully"));
        }
        Session::forget("cartGlobalDiscount");
    }
    public function quickAddCustomer(Request $request) {
        $valid['name'] = 'required';
        $valid['mobile'] = 'required|digits:10|numeric|unique:customers,mobile';
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
        unset($_POST['_token']);
        $reply = Functions::setData("customers", $_POST);
        PosController::setCustomerPos($reply['insert_id']);
        echo json_encode(array("status" => "success", "insert_id" => $reply['insert_id'], "data" => $reply['data']));
    }
    public function getProducts(Request $request) {
        $sql = "SELECT * FROM products WHERE storeId=" . Session::get('storeId') . " AND status=1 AND showInPos=1 AND softDelete=0";
        if (isset($_POST['search']) and $_POST['search'] != '') {
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
        foreach ($products as $cart) {
            $tax = Functions::getTaxAmountByProductId($cart['productId'], "price");
            $products[$i]['taxHeading'] = $tax['taxHeading'];
            $products[$i]['taxPercent'] = $tax['taxPercent'];
            $products[$i]['taxExclusiveValue'] = $tax['taxExclusiveValue'];
            $products[$i]['taxInclusiveValue'] = $tax['taxInclusiveValue'];
            $products[$i]['tax'] = $tax['tax'];
            $products[$i]['basePriceCost'] = $tax['basePriceCost'];
            $i++;
        }
        echo json_encode($products);
    }
    public function getCustomer(Request $request) {
        $sql = "SELECT * FROM customers WHERE storeId=" . Session::get('storeId') . " AND status=1 AND softDelete=0";
        if (isset($_POST['search']) and $_POST['search'] != '') {
            $sql .= " AND (name  LIKE '%" . $_POST['search'] . "%' || email  LIKE '%" . $_POST['search'] . "%' || mobile  LIKE '%" . $_POST['search'] . "%')";
        }
        $sql .= " ORDER BY customerId DESC LIMIT 50";
        $customers = DB::select($sql);
        $customers = Functions::arrayConvert($customers);
        echo json_encode($customers);
    }
    public static function posTotalCart() {
        $settings = PosController::settings();
        $globalSettings = Functions::settings();
        $showStoreInfomation = $settings['showStoreInfomation'];
        $enableTaxes = $settings['enableTaxes'];
        $enableRewardPoints = $settings['enableRewardPoints'];
        $rewardOnDiscountedProduct = $settings['rewardOnDiscountedProduct'];
        $restaurant = $settings['restaurant'];
        $requiredOtpForRewardReedem = $settings['requiredOtpForRewardReedem'];
        $minRewardPointsToSendOtp = $settings['minRewardPointsToSendOtp'];
        $enableHotelRoomMode = $settings['enableHotelRoomMode'];
        if ($showStoreInfomation == 1) {
            $margin = 5;
        }
        else {
            $margin = 0;
        }
        if (Session::get("rewardPoints") != '') {
            $reward = Session::get("rewardPoints");
        }
        else {
            $reward = 0;
        }
        $html = '<div class="dnasrmqxlu" style="margin-top:' . $margin . 'px;text-align: left;">';
        $html .= '<label style="font-size:11px;color: var(--grey);margin-left:5px;">' . PosController::message("CHECKOUT") . '</label>';
        $html .= '<div class="teauoqhxpy">';
        $cartTotalArray = PosController::cartTotal();
        $html .= '<table class="jtoweyfypd oesmgitduc">';
        $html .= '<tr>';
        $html .= '<td width="70%" class="prtduitanr">' . PosController::message("Total Items In Cart") . '</td>';
        $html .= '<td style="vertical-align:top;text-align:right;" class="gejarqqfgd akbmamllxh">' . $cartTotalArray['totalItemsInCart'] . '</td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td width="70%" class="prtduitanr">' . PosController::message("Total Quantity In Cart") . '</td>';
        $html .= '<td style="vertical-align:top;text-align:right;" class="fchdbybagj akbmamllxh">' . $cartTotalArray['totalQuantityInCart'] . '</td>';
        $html .= '</tr>';
        if ($enableHotelRoomMode == 1 and !empty(Session::get("hotelRoom"))) {
            /*$html .= '<tr>';
            $html .= '<td width="70%" class="prtduitanr">' . PosController::message("Room Rent") . '</td>';
            $html .= '<td style="vertical-align:top;text-align:right;" class="symbol">' . Session::get("hotelRoom")['hotel']['roomCharges']. '</td>';
            $html .= '</tr>';*/
        }
        $html .= '<tr>';
        $html .= '<td width="70%" class="prtduitanr">' . PosController::message("Sub Total") . '</td>';
        $html .= '<td style="vertical-align:top;text-align:right;" class="symbol tkhqljglpj akbmamllxh">' . $cartTotalArray['subTotal'] . '</td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td width="70%" class="prtduitanr">' . PosController::message("Product Discount") . '</td>';
        $html .= '<td style="vertical-align:top;text-align:right;" class="symbol jhswgwguhq akbmamllxh">' . $cartTotalArray['productDiscount'] . '</td>';
        $html .= '</tr>';
        if ($enableTaxes == 1) {
            $html .= '<tr>';
            $html .= '<td width="70%" class="prtduitanr">' . PosController::message("Tax") . '</td>';
            $html .= '<td style="vertical-align:top;text-align:right;" class="symbol somxmhodzr akbmamllxh">' . $cartTotalArray['tax'] . '</td>';
            $html .= '</tr>';
        }
        if ($enableRewardPoints == 1) {

            $paymentSession = Session::get("paymentId");

            if ($settings['rewardPointsOnCredit'] == 0 && 
                isset($paymentSession['paymentId']) && 
                $globalSettings['creditPaymentMethod'] == $paymentSession['paymentId']) {
                
                $cartTotalArray['rewardPoints'] = 0;
            } else {
                $html .= '<tr>';
                $html .= '<td width="70%" class="prtduitanr">' . PosController::message("Reward Point Earned") . '</td>';
                $html .= '<td style="vertical-align:top;text-align:right;" class="rgicmfwsdb akbmamllxh">' . $cartTotalArray['rewardPoints'] . '</td>';
                $html .= '</tr>';
                $html .= '<tr>';
            }
            
            if ($requiredOtpForRewardReedem == 1 and $minRewardPointsToSendOtp < Session::get("posCustomer") ['rewardPoints']) {
                $html .= '<td width="70%" class="prtduitanr">' . PosController::message("Reward Point Used") . ' (<span class="nrbnjzmpxy">' . $reward . '</span>)<br><span class="zumijhnuub">Send OTP TO Use Reward</span><br><span class="lqrwhmuvjf">SKIP OTP</span></td>';
            }
            else {
                $html .= '<td width="70%" class="prtduitanr">' . PosController::message("Reward Point Used") . ' (<span class="nrbnjzmpxy">' . $reward . '</span>)</td>';
            }
            $html .= '<td style="vertical-align:top;text-align:right;" class="zbetohaqje akbmamllxh">';
            if ($requiredOtpForRewardReedem == 1 and $minRewardPointsToSendOtp < Session::get("posCustomer") ['rewardPoints']) {
                $html .= '<input type="text" class="form-control faqsvztvml isNumeric" readonly value="' . $reward . '">';
            }
            else {
                $html .= '<input type="text" class="form-control faqsvztvml isNumeric" value="' . $reward . '">';
            }
            $html .= '</td>';
            $html .= '</tr>';
        }
        $html .= '<tbody class="utslibohbo">';
        if (!empty(Session::get('additionalCharges'))) {
            foreach (Session::get('additionalCharges') as $key => $extraCost) {
                $html .= '<tr>';
                $html .= '<td width="70%" class="prtduitanr">' . $key . ' (<span data-key="' . $key . '" class="hgwajgrogq">Remove</span>)';
                $html .= '</td>';
                $html .= '<td style="vertical-align:top;text-align:right;" class="symbol jmsxcnsuet akbmamllxh">' . $extraCost . '</td>';
                $html .= '</tr>';
            }
        }
        $html .= '</tbody>';
        if (!empty(Session::get('cartGlobalDiscount'))) {
            $html .= '<tr class="fvwuionill">';
            $html .= '<td width="70%" class="prtduitanr">' . PosController::message("Global Discount") . ' (<span class="xuphzwvpxk">' . Session::get('cartGlobalDiscount') ['discount'] . '</span>)</td>';
            $html .= '<td style="vertical-align:top;text-align:right;" class="symbol petxwuyzfd akbmamllxh">' . Session::get('cartGlobalDiscount') ['discountValue'] . '</td>';
            $html .= '</tr>';
        }
        $html .= '<tr>';
        $html .= '<td width="70%" class="prtduitanr">';
        $html .= '<div class="nfhmtqrhis">' . PosController::message("Total") . '</div>';
        $html .= '</td>';
        $html .= '<td style="vertical-align:top;text-align:right;">';
        $html .= '<div class="nfhmtqrhis symbol jjtopmmhob akbmamllxh">' . round($cartTotalArray['total']) . '</div>';
        $html .= '</td>';
        $html .= '</tr>';
        $html .= '<tr class="sroxqpvfxu">';
        $html .= '<td width="70%" class="prtduitanr">';
        $html .= '<div class="myvczezrbm">' . PosController::message("Payment Mode") . '</div>';
        $html .= '</td>';
        $html .= '<td style="vertical-align:top;text-align:right;">';
        if (empty(Session::get("paymentId"))) {
            $payments = Functions::getDataWhere("store_payments", "storeId", Session::get('storeId'));
            $jsonToArray = json_decode($payments[0]['payments'], true);
            foreach ($jsonToArray as $payment) {
                $payment = Functions::getDataWhere("payments", "paymentId", $payment);
                if (!empty($payment[0])) {
                    if ($payments[0]['default'] == $payment[0]['paymentId']) {
                        $html .= '<div class="myvczezrbm rmujjvcyhy akbmamllxh"><span class="kjjjudpgev" data-id="' . $payment[0]['paymentId'] . '">' . $payment[0]['name'] . '</span></div>';
                    }
                }
            }
        }
        else {
            $html .= '<div class="myvczezrbm rmujjvcyhy akbmamllxh"><span class="kjjjudpgev" data-id="' . Session::get("paymentId") ['paymentId'] . '">' . Session::get("paymentId") ['name'] . '</span></div>';
        }
        $html .= '</td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td colspan="2">';
        $html .= '<div class="flexContainer">';
        if ($restaurant == 1) {
            $html .= '<div class="flexDiv ymepjnmpun" style="margin-right:3px">';
            $html .= '<div class="kipxcfuiuv" data-id="sendToKot">' . PosController::message("KOT") . '</div>';
            $html .= '</div>';
        }
        else {
            $html .= '<div class="flexDiv ymepjnmpun" style="margin-right:3px">';
            $html .= '<div class="kipxcfuiuv" data-id="hold">' . PosController::message("HOLD") . '</div>';
            $html .= '</div>';
        }
        $html .= '<div class="flexDiv ymepjnmpun">';
        $html .= '<div class="oizfbjddqq" data-id="showPopup">' . PosController::message("OPTIONS") . '</div>';
        $html .= '</div>';
        $html .= '</div>';
        $html .= '</td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td colspan="2">';
        $html .= '<div class="ucduyqmgff" data-id="finalCheckout">' . PosController::message("CHECKOUT") . '</div>';
        $html .= '</td>';
        $html .= '</tr>';
        $html .= '</table>';
        $html .= '</div>';
        $html .= '</div>';
        echo $html;
    }
    public static function settings() {
        $settings = Functions::getDataWhere("store_settings", "storeId", Session::get('storeId'));
        $settings = Functions::arrayConvert($settings);
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
    public static function setOrderIdEdit() {
        $order = Functions::getDataWhere("order", "orderId", $_POST['orderId']);
        Session::forget("posCustomer");
        Session::forget("seatingTableId");
        Session::forget("multiple");
        Session::forget("rewardPoints");
        Session::forget("paymentId");
        Session::forget("posCart");
        Session::forget("updateId");
        Session::forget("additionalCharges");
        Session::forget("cartGlobalDiscount");
        Session::forget("hotelRoom");
        Session::put("posCustomer", Functions::getDataWhere("customers", "customerId", $order[0]['customerId']) [0]);
        Session::put("seatingTableId", $order[0]['seatingTableId']);
        Session::put("orderType", $order[0]['orderType']);
        Session::put("posCart", json_decode($order[0]['orderProduct'], true));
        Session::put("paymentId", Functions::getDataWhere("payments", "paymentId", $order[0]['paymentId']) [0]);
        Session::put("updateId", $order[0]['orderId']);
        Session::put("additionalCharges", json_decode($order[0]['additionalCharges'], true));
        Session::put("cartGlobalDiscount", json_decode($order[0]['globalDiscount'], true));
           
        if ($order[0]['hotel'] == 1) {
            
            
            $hotelData = Functions::getDataWhere("order_hotel_room", "orderId", $_POST['orderId']) [0];
            $hotel = Functions::getDataWhere("products", "productId", $hotelData['productId']) [0];
            $customerData = json_decode($hotelData['customerData'], true);

            $data = Session::get("hotelRoom");
            $dataNew['post']['productId'] = $hotelData['productId'];
            $dataNew['post']['dateCheckIn'] = $hotelData['dateCheckIn'];
            $dataNew['post']['dateCheckOut'] = $hotelData['dateCheckOut'];
            $dataNew['post']['timeCheckIn'] = $hotelData['timeCheckIn'];
            $dataNew['post']['timeCheckOut'] = $hotelData['timeCheckOut'];
            $dataNew['post']['personName'] = $customerData['personName'];
            $dataNew['post']['personId'] = $customerData['personId'];
            $dataNew['hotel'] = $hotel;
            $dataNew['hotelToken'] = $hotelData['hotelToken'];
            $dataNew['personId'] = $customerData['personId'];
            Session::put("hotelRoom", $dataNew);
        }
    }
    
    public static function checkout() {

        $settings = PosController::settings();
        if ($settings['enableHotelRoomMode'] == 1) {
            if (Session::get("hotelRoom") != '') {
                $hotelRoom = Session::get("hotelRoom");
            }
        }
        //print_r($hotelRoom);
        $totalOrderCount = DB::select("SELECT COUNT(*) AS total FROm `order`");
        $totalOrderCount = Functions::arrayConvert($totalOrderCount);
        if ($settings['maxBills'] > 0 and $settings['maxBills'] <= $totalOrderCount[0]['total']) {
            echo json_encode(array("status" => "error", "message" => 'You cant place more orders'));
            return;
        }
        $globalSettings = Functions::settings();
       
        if (isset($hotelRoom) && (Session::get("posCustomer") ['customerId']) == '1') {
            // if this is a hotel booking, customer can't be walkin customer
            echo json_encode(array("status" => "error", "message" => "For hotel bookings, selecting Walk-In Customer is not allowed."));
            return;
        }
 
        if (empty(Session::get("posCart"))) {
            echo json_encode(array("status" => "error", "message" => "Cart empty"));
            return;
        }
        if (empty(Session::get("paymentId"))) {
            $payment = Functions::getDataWhere("payments", "paymentId", $_POST['paymentId']) [0];
            Session::put("paymentId", $payment);
        }
        if (Session::get('updateId') != '' and Session::get('updateId') > 0) {
            $arrayOrder['update_id'] = Session::get('updateId');
            $arrayOrder['where_column'] = 'orderId';
        }
 
        $arrayOrder['invoicePrefix'] = $settings['invoicePrefix'];
        $arrayOrder['customerId'] = Session::get("posCustomer") ['customerId'];
        $arrayOrder['name'] = Session::get("posCustomer") ['name'];
        $arrayOrder['email'] = Session::get("posCustomer") ['email'];
        $arrayOrder['mobile'] = Session::get("posCustomer") ['mobile'];
        $arrayOrder['paymentId'] = $_POST['paymentId'];
        $arrayOrder['orderType'] = ($_POST['orderType']!='undefined')?$_POST['orderType']:'';
        $arrayOrder['checkoutType'] = $_POST['checkoutType'];
        $arrayOrder['employeeId'] = $_POST['employeeId'];
        $arrayOrder['posComment'] = $_POST['posComment'];
        $arrayOrder['deliveryDate'] = $_POST['deliveryDate'];
        if (!empty($_FILES['posImage']) and $_FILES['posImage']['name'] != '') {
            $image = Functions::uploadNewImage($_FILES['posImage']);
            $arrayOrder['posImage'] = $image['message'];
        }
        $arrayOrder['salesUserId'] = Session::get("userId");
        if ($_POST['orderType'] == 'DineIn' and $_POST['checkoutType'] != 'finalCheckout') {
            $orderStatus = Functions::getDataWhere('order_status', 'orderStatusId', $settings['runningOrderStatus']);
            if (!empty($orderStatus[0])) {
                $arrayOrder['orderStatusId'] = $orderStatus[0]['orderStatusId'];
                $arrayOrder['orderStatusHeading'] = $orderStatus[0]['heading'];
            }
        }
        else if ($_POST['checkoutType'] == 'hold') {
            $orderStatus = Functions::getDataWhere('order_status', 'orderStatusId', $settings['runningOrderStatus']);
            if (!empty($orderStatus[0])) {
                $arrayOrder['orderStatusId'] = $orderStatus[0]['orderStatusId'];
                $arrayOrder['orderStatusHeading'] = $orderStatus[0]['heading'];
            }
        }
        else {
            $orderStatus = Functions::getDataWhere('order_status', 'orderStatusId', $settings['defaultOrderStatus']);
            if (!empty($orderStatus[0])) {
                $arrayOrder['orderStatusId'] = $orderStatus[0]['orderStatusId'];
                $arrayOrder['orderStatusHeading'] = $orderStatus[0]['heading'];
            }
        }
        $arrayOrder['seatingTableId'] = (Session::get("seatingTableId") != '') ? Session::get("seatingTableId") : 0;
        if ($arrayOrder['seatingTableId'] > 0) {
            $arrayOrder['seatingTableHeading'] = Functions::getDataWhere("seating_tables", "seatingTableId", $arrayOrder['seatingTableId']) [0]['heading'];
        }
        $arrayOrder['paymentMethod'] = Functions::getDataWhere("payments", "paymentId", $_POST['paymentId']) [0]['name'];
        if ($globalSettings['multiplePaymentMethod'] == $_POST['paymentId']) {
            $arrayOrder['paymentMethod'] = Functions::getDataWhere("payments", "paymentId", $_POST['paymentId']) [0]['name'];
            $multiple = array();
            $multipleAmount = array();
            if (empty(Session::get("multiple"))) {
                Session::forget("multiple");
                echo json_encode(array("status" => "error", "message" => "Please press on save button to apply multiple payment mode.", "type" => "emptyMultiple"));
                return;
            }
            foreach (Session::get("multiple") as $key => $value) {
                $multiple[] = array("paymentId" => $key, "amount" => $value, "paymentMethod" => Functions::getDataWhere("payments", "paymentId", $key) [0]['name']);
                $multipleAmount[] = $value;
            }
            $arrayOrder['multiplePaymentData'] = json_encode($multiple);
            if (round(PosController::cartTotal() ['total']) != array_sum($multipleAmount)) {
                Session::forget("multiple");
                echo json_encode(array("status" => "error", "message" => "Multple payment amount data is not matching up with the order total. Please check it.", "type" => "multipleMisMatch"));
                return;
            }
        }
        else {
            $arrayOrder['multiplePaymentData'] = '';
        }
        $restaurant = $settings['restaurant'];
        if ($restaurant == 1) {
            $arrayOrder['kotToken'] = Functions::getToken(255);
            $kotToken = $arrayOrder['kotToken'];
            Session::put("kotToken", $kotToken);
        }
        $arrayOrder['totalItemsInCart'] = PosController::cartTotal() ['totalItemsInCart'];
        $arrayOrder['totalQuantityInCart'] = PosController::cartTotal() ['totalQuantityInCart'];
        $arrayOrder['subTotal'] = PosController::cartTotal() ['subTotal'];
        $arrayOrder['tax'] = PosController::cartTotal() ['tax'];
        $arrayOrder['productDiscount'] = PosController::cartTotal() ['productDiscount'];
        if (isset(PosController::cartTotal() ['additionalCharges']) and PosController::cartTotal() ['additionalCharges'] > 0) {
            $arrayOrder['additionalCharges'] = json_encode(PosController::cartTotal() ['additionalCharges']);
        }
        $arrayOrder['globalDiscount'] = json_encode(Session::get("cartGlobalDiscount"));
        $arrayOrder['total'] = round(PosController::cartTotal() ['total']);
        if ($settings['enableRewardPoints'] == 1) {
            $arrayOrder['rewardEarned'] = round(PosController::cartTotal() ['rewardPoints']);
            $arrayOrder['rewardUsed'] = (Session::get("rewardPoints") != '' || Session::get("rewardPoints") != 0) ? Session::get("rewardPoints") : 0;
        }
        if (Session::get("seatingTableId") != '') {
            $arrayOrder['hold'] = 1;
            $arrayOrder['runningOrder'] = 1;
        }
        if ($_POST['checkoutType'] == 'finalCheckout') {
            $arrayOrder['hold'] = 0;
            $arrayOrder['runningOrder'] = 0;
        }
        if ($_POST['checkoutType'] == 'hold') {
            $arrayOrder['hold'] = 1;
            $arrayOrder['runningOrder'] = 0;
        }
        if (!empty(Session::get("updateId")) and Session::get("updateId") != 0) {
            $previousValues = Functions::getDataWhere("order", "orderId", Session::get("updateId")) [0];
        }
        if (isset($hotelRoom)) {
            // $arrayOrder['hotel'] = 1;
            // $arrayOrder['hold'] = 1;
            // $arrayOrder['checkoutType'] = 'hold';
            // if ((Session::get('updateId') == '' || Session::get('updateId') == 0) and isset($hotelRoom)) {
            //     $arrayOrder['hotelToken'] = $hotelRoom['hotelToken'];
            // }
            if ($hotelRoom['post']['dateCheckOut'] != '' and $hotelRoom['post']['timeCheckOut'] != '') {
                $arrayOrder['hold'] = 0;
                $arrayOrder['checkoutType'] = 'finalCheckout';
            }
        }
        $orderData = Functions::setData("order", $arrayOrder);
        if ((Session::get('updateId') == '' || Session::get('updateId') == 0)) {
              $orderHistory['orderStatusId'] = $arrayOrder['orderStatusId'];
              $orderHistory['orderId'] = $orderData['insert_id'];
              Functions::setData("order_history",$orderHistory);
        }
        if ($orderData) {
            if ($settings['deductFromStock'] == 1) {
                if (!empty(Session::get("updateId")) && Session::get("updateId") != 0) {
                    if (!empty($previousValues['orderProduct'])) {
                        foreach (json_decode($previousValues['orderProduct'], true) as $cart) {
                            if (!empty($cart['productId']) && isset($cart['quantity'])) {
                                DB::update(
                                    "UPDATE products SET quantity = quantity + ? WHERE productId = ?",
                                    [$cart['quantity'], $cart['productId']]
                                );
                            }
                        }
                    }
                }

                $posCart = Session::get('posCart', []); // Default to an empty array
                if (is_array($posCart) && !empty($posCart)) {
                    foreach ($posCart as $cart) {
                        DB::select("UPDATE products SET quantity = quantity - " . $cart['quantity'] . " WHERE productId='" . $cart['productId'] . "'");
                    }
                }
                }
            $arrayOrder = array();
            if ($orderData['insertUpdate'] == 'update') {
                $arrayOrderTotal['update_id'] = $orderData['insert_id'];
                $arrayOrderTotal['where_column'] = "orderId";
            }
            $arrayOrder['totalItemsInCart'] = PosController::cartTotal() ['totalItemsInCart'];
            $arrayOrder['totalQuantityInCart'] = PosController::cartTotal() ['totalQuantityInCart'];
            $arrayOrder['roomRent'] = PosController::cartTotal() ['roomRent'];
            $arrayOrder['subTotal'] = PosController::cartTotal() ['subTotal'];
            $arrayOrder['tax'] = PosController::cartTotal() ['tax'];
            $arrayOrder['productDiscount'] = PosController::cartTotal() ['productDiscount'];
            if (isset(PosController::cartTotal() ['additionalCharges']) and PosController::cartTotal() ['additionalCharges'] > 0) {
                $arrayOrder['additionalCharges'] = json_encode(PosController::cartTotal() ['additionalCharges']);
            }
            if ($settings['enableRewardPoints'] == 1) {
                $arrayOrder['rewardEarned'] = round(PosController::cartTotal() ['rewardPoints']);
                $arrayOrder['rewardUsed'] = (Session::get("rewardPoints") != '' || Session::get("rewardPoints") != 0) ? Session::get("rewardPoints") : 0;
            }
            $arrayOrder['globalDiscount'] = json_encode(Session::get("cartGlobalDiscount"));
            $arrayOrder['total'] = round(PosController::cartTotal() ['total']);
            $arrayOrderTotal['orderId'] = $orderData['insert_id'];
            $arrayOrderTotal['orderTotal'] = json_encode($arrayOrder);
            Functions::setData("order_total", $arrayOrderTotal);
            if ($orderData['insertUpdate'] == 'update') {
                $previousOrderValues = Functions::getDataWhere("order_product", "orderId", $orderData['insert_id']);
                // DB::select("DELETE FROM order_product WHERE orderId='" . $orderData['insert_id'] . "'");
            }
            if (isset($hotelRoom) and Session::get("posCart") == "") {
                $skip = 1;
            }
            else if (isset($hotelRoom) and Session::get("posCart") != "") {
                $skip = 0;
            }
            else if (!isset($hotelRoom) and Session::get("posCart") != "") {
                $skip = 0;
            }
            if ($skip == 0) {
                foreach (Session::get("posCart") as $cart) {
                    unset($cart['manufacturerId']);
                    unset($cart['categoryId']);
                    unset($cart['vendorId']);
                    unset($cart['unitId']);
                    unset($cart['subtract']);
                    unset($cart['image']);
                    unset($cart['relatedImage']);
                    unset($cart['showInPos']);
                    unset($cart['softDelete']);
                    unset($cart['storeId']);
                    unset($cart['userId']);
                    unset($cart['updatedBy']);
                    unset($cart['insertedBy']);
                    unset($cart['dateUpdated']);
                    unset($cart['status']);
                    unset($cart['dateAdded']);
                    unset($cart['productType']);
                    $cart['tax'] = (($cart['taxExclusiveValue'] > 0) ? $cart['taxExclusiveValue'] : $cart['taxInclusiveValue']) * $cart['quantity'];
                    $cart['profit'] = ($cart['basePriceCost'] - $cart['discountValue']) - ($cart['cost'] * $cart['quantity']);
                    $cart['orderId'] = $orderData['insert_id'];
                    if ($restaurant == 1 and isset($kotToken)) {
                        $cart['kotToken'] = $kotToken;
                    }
                    if ($_POST['checkoutType'] == 'sendToKot') {
                        $cart['sentToKot'] = 1;
                        $cart['kotViewed'] = 0;
                    }
                    if ($orderData['insertUpdate'] == 'update') {
                        foreach ($previousOrderValues as $orderProduct) {
                            if ($orderProduct['productId'] == $cart['productId']) {
                                $cart['kotToken'] = $orderProduct['kotToken'];
                                $cart['sentToKot'] = $orderProduct['sentToKot'];
                                $cart['kotViewed'] = $orderProduct['kotViewed'];
                                $cart['kotViewedBy'] = $orderProduct['kotViewedBy'];
                            }
                        }
                    }
                    
                    Functions::setData("order_product", $cart);
                    //DB::select("UPDATE products SET quantity = quantity - '".$cart['quantity']."' WHERE productId='".$cart['productId']."'");
                }
                foreach (Session::get("posCart") as $cart) {
                    if ($_POST['checkoutType'] == 'sendToKot') {
                        $cart['sentToKot'] = 1;
                        $cart['kotViewed'] = 0;
                    }
                    $newCartJson[] = $cart;
                }
            }
            if (!empty($newCartJson)) {
                $arrayOrder = array();
                $arrayOrder['update_id'] = $orderData['insert_id'];
                $arrayOrder['where_column'] = 'orderId';
                $arrayOrder['orderProduct'] = json_encode($newCartJson);
                Functions::setData("order", $arrayOrder);
            }
            if ($settings['enableRewardPoints'] == 1) {
                if ($orderData['insertUpdate'] == 'update') {
                    DB::select("DELETE FROM customer_ledger_reward WHERE orderId='" . $orderData['insert_id'] . "'");
                }
                $rewardCredit = round(PosController::cartTotal() ['rewardPoints']);
                $rewardDebit = (Session::get("rewardPoints") != '' || Session::get("rewardPoints") != 0) ? Session::get("rewardPoints") : 0;
                if ($rewardCredit > 0) {
                    $rewardArray['orderId'] = $orderData['insert_id'];
                    $rewardArray['customerId'] = Session::get("posCustomer") ['customerId'];
                    $rewardArray['reward'] = $rewardCredit;
                    $rewardArray['type'] = 'Credit';
                    $rewardArray['paymentId'] = $_POST['paymentId'];
                    $rewardArray['remark'] = 'Credit Added';
                    Functions::setData("customer_ledger_reward", $rewardArray);
                }
                if ($rewardDebit > 0) {
                    $rewardArray['orderId'] = $orderData['insert_id'];
                    $rewardArray['customerId'] = Session::get("posCustomer") ['customerId'];
                    $rewardArray['reward'] = $rewardDebit;
                    $rewardArray['type'] = 'Debit';
                    $rewardArray['paymentId'] = $_POST['paymentId'];
                    $rewardArray['remark'] = 'Credit Debited';
                    Functions::setData("customer_ledger_reward", $rewardArray);
                }
                PosController::updateCustomerReward(Session::get("posCustomer") ['customerId']);
            }
            if ($globalSettings['creditPaymentMethod'] == $_POST['paymentId']) {
                if ($orderData['insertUpdate'] == 'update') {
                    $checkForSameCustomer = DB::select("SELECT customerId FROM customer_ledger_wallet WHERE orderId='" . $orderData['insert_id'] . "' AND customerId='" . Session::get('posCustomer') ['customerId'] . "' AND softDelete=0");
                    $checkForSameCustomer = Functions::arrayConvert($checkForSameCustomer);
                    if (!empty($checkForSameCustomer[0]) and Session::get('posCustomer') ['customerId'] != $checkForSameCustomer[0]['customerId']) {
                        DB::select("DELETE FROM customer_ledger_wallet WHERE orderId='" . $orderData['insert_id'] . "'");
                        PosController::updateCustomerWallet($checkForSameCustomer[0]['customerId']);
                    }
                    else {
                        DB::select("DELETE FROM customer_ledger_wallet WHERE orderId='" . $orderData['insert_id'] . "'");
                        PosController::updateCustomerWallet(Session::get('posCustomer') ['customerId']);
                    }
                }
                $creditArray['orderId'] = $orderData['insert_id'];
                $creditArray['customerId'] = Session::get("posCustomer") ['customerId'];
                $creditArray['amount'] = round(PosController::cartTotal() ['total']);
                $creditArray['type'] = 'Debit';
                $creditArray['paymentId'] = $_POST['paymentId'];
                $creditArray['remark'] = 'Credit Debited';
                Functions::setData("customer_ledger_wallet", $creditArray);
                PosController::updateCustomerWallet(Session::get('posCustomer') ['customerId']);
            }
            if ($globalSettings['walletPaymentMethod'] == $_POST['paymentId']) {
                $creditArray['orderId'] = $orderData['insert_id'];
                $creditArray['customerId'] = Session::get("posCustomer") ['customerId'];
                $creditArray['amount'] = round(PosController::cartTotal() ['total']);
                $creditArray['type'] = 'Debit';
                $creditArray['paymentId'] = $_POST['paymentId'];
                $creditArray['remark'] = 'Wallet Amount Used';
                Functions::setData("customer_ledger_wallet", $creditArray);
                PosController::updateCustomerWallet(Session::get('posCustomer') ['customerId']);
            }
            if (!empty(Session::get('multiple'))) {
                foreach (Session::get('multiple') as $k => $v) {
                    if ($globalSettings['creditPaymentMethod'] == $k) {
                        if ($orderData['insertUpdate'] == 'update') {
                            $checkForSameCustomer = DB::select("SELECT customerId FROM customer_ledger_wallet WHERE orderId='" . $orderData['insert_id'] . "' AND customerId='" . Session::get('posCustomer') ['customerId'] . "' AND softDelete=0");
                            $checkForSameCustomer = Functions::arrayConvert($checkForSameCustomer);
                            if (!empty($checkForSameCustomer[0]) and Session::get('posCustomer') ['customerId'] != $checkForSameCustomer[0]['customerId']) {
                                DB::select("DELETE FROM customer_ledger_wallet WHERE orderId='" . $orderData['insert_id'] . "'");
                                PosController::updateCustomerWallet($checkForSameCustomer[0]['customerId']);
                            }
                            else {
                                DB::select("DELETE FROM customer_ledger_wallet WHERE orderId='" . $orderData['insert_id'] . "'");
                                PosController::updateCustomerWallet(Session::get('posCustomer') ['customerId']);
                            }
                        }
                        $creditArray['orderId'] = $orderData['insert_id'];
                        $creditArray['customerId'] = Session::get("posCustomer") ['customerId'];
                        $creditArray['amount'] = round($v);
                        $creditArray['type'] = 'Debit';
                        $creditArray['paymentId'] = $_POST['paymentId'];
                        $creditArray['remark'] = 'Credit Debited';
                        Functions::setData("customer_ledger_wallet", $creditArray);
                        PosController::updateCustomerWallet(Session::get('posCustomer') ['customerId']);
                    }
                    if ($globalSettings['walletPaymentMethod'] == $_POST['paymentId']) {
                        $creditArray['orderId'] = $orderData['insert_id'];
                        $creditArray['customerId'] = Session::get("posCustomer") ['customerId'];
                        $creditArray['amount'] = round(PosController::cartTotal() ['total']);
                        $creditArray['type'] = 'Debit';
                        $creditArray['paymentId'] = $_POST['paymentId'];
                        $creditArray['remark'] = 'Wallet Amount Used';
                        Functions::setData("customer_ledger_wallet", $creditArray);
                        PosController::updateCustomerWallet(Session::get('posCustomer') ['customerId']);
                    }
                }
            }
            if (Session::get("skipOtpToken") != '') {
                $otpSkip['update_id'] = Session::get("skipOtpToken");
                $otpSkip['where_column'] = "skipOtpToken";
                $otpSkip['orderId'] = $orderData['insert_id'];
                Functions::setData("reward_otp_skip_reason", $otpSkip);
            }
            if (Session::get("otpToken") != '') {
                $otpSkip['update_id'] = Session::get("otpToken");
                $otpSkip['where_column'] = "otpToken";
                $otpSkip['orderId'] = $orderData['insert_id'];
                Functions::setData("reward_otp", $otpSkip);
            }
            //print_r($hotelRoom);
            //print_r($_POST);
            if (isset($hotelRoom)) {
                if (!empty(Session::get("updateId")) and Session::get("updateId") != 0) {
                }
                else {
                    DB::update("UPDATE order_hotel_room SET orderId='" . $orderData['insert_id'] . "' WHERE hotelToken = '" . $hotelRoom['hotelToken'] . "'");
                }
                //print_r($hotelRoom);
                
            }
            PosController::clearPosDataStatic();
            echo json_encode(array("status" => "success", "orderId" => $orderData['insert_id'], "type" => $_POST['checkoutType']));
        }
    }
    public static function updateCustomerReward($customerId) {
        $settings = PosController::settings();
        if ($settings['enableRewardPoints'] == 1) {
            $rewardCredit = DB::select("SELECT SUM(reward) AS rewardCredit FROM customer_ledger_reward WHERE `type` = 'Credit' AND customerId='" . $customerId . "' AND softDelete=0");
            $rewardCredit = Functions::arrayConvert($rewardCredit);
            $rewardDedit = DB::select("SELECT SUM(reward) AS rewardDedit FROM customer_ledger_reward WHERE `type` = 'Debit' AND customerId='" . $customerId . "' AND softDelete=0");
            $rewardDedit = Functions::arrayConvert($rewardDedit);
            $totalRewardPoints = $rewardCredit[0]['rewardCredit'] - $rewardDedit[0]['rewardDedit'];
            DB::select("UPDATE customers SET rewardPoints = '" . $totalRewardPoints . "' WHERE customerId='" . $customerId . "'");
        }
    }
    public static function updateCustomerWallet($customerId) {
        $amountOpening = DB::select("SELECT amount FROM customer_ledger_wallet WHERE `type` = 'opening' AND customerId='" . $customerId . "' AND softDelete=0");
        $amountOpening = Functions::arrayConvert($amountOpening);
        if (empty($amountOpening[0])) {
            $amountOpening[0]['amount'] = 0;
        }
        $amountCredit = DB::select("SELECT SUM(amount) AS amountCredit FROM customer_ledger_wallet WHERE `type` = 'Credit' AND customerId='" . $customerId . "' AND softDelete=0");
        $amountCredit = Functions::arrayConvert($amountCredit);
        $amountDedit = DB::select("SELECT SUM(amount) AS amountDedit FROM customer_ledger_wallet WHERE `type` = 'Debit' AND customerId='" . $customerId . "' AND softDelete=0");
        $amountDedit = Functions::arrayConvert($amountDedit);
        $totalWalletAmount = $amountCredit[0]['amountCredit'] - $amountDedit[0]['amountDedit'] + $amountOpening[0]['amount'];
        DB::select("UPDATE customers SET walletBalance = '" . $totalWalletAmount . "' WHERE customerId='" . $customerId . "'");
    }
    public function truncate() {
        //DB::table('products')->truncate();
        DB::table('order')->truncate();
        DB::table('order_product')->truncate();
        DB::table('order_history')->truncate();
        DB::table('order_total')->truncate();
        DB::table('customer_ledger_wallet')->truncate();
        DB::table('customer_ledger_reward')->truncate();
        //DB::table('purchases')->truncate();
        DB::table('customer_pay_in_out')->truncate();
        DB::table('databasebackup')->truncate();
        DB::table('personal_access_tokens')->truncate();
        DB::table('admin_login_history')->truncate();
        DB::select('DELETE FROM customers WHERE customerId > 1');
        DB::select('UPDATE customers SET walletBalance=0');
        DB::select('UPDATE customers SET rewardPoints=0');
    }
    public function checkQuickAddCustomerMobile() {
        $check = Db::select("SELECT * FROM customers WHERE mobile LIKE '" . $_POST['mobile'] . "%' AND storeId='" . Session::get('storeId') . "' AND status=1");
        $check = Functions::arrayConvert($check);
        echo json_encode($check);
    }
    public function sendOtpForReward() {
        if (empty(Session::get("posCart"))) {
            echo json_encode(array("status" => "error", "message" => "Cart empty"));
            return;
        }
        $data['settings'] = PosController::settings();
        $defaultCustomer = Functions::getDataWhere("customers", "customerId", $data['settings']['walkInCustomerId']);
        if (Session::get("posCustomer") ['customerId'] == $defaultCustomer[0]['customerId']) {
            echo json_encode(array("status" => "error", "message" => "Reward point OTP will not work with Walk In Customer"));
            return;
        }
        unset($_POST['_token']);
        $_POST['customerId'] = Session::get("posCustomer") ['customerId'];
        $otpToken = Functions::getToken(50);
        $_POST['otpToken'] = $otpToken;
        $_POST['otp'] = mt_rand("111111", "999999");
        Functions::setData("reward_otp", $_POST);
        Session::put("otpToken", $otpToken);
        echo json_encode(array("status" => "success"));
        return;
    }
    public function validateOtpForReward() {
        if (empty(Session::get("posCart"))) {
            echo json_encode(array("status" => "error", "message" => "Cart empty"));
            return;
        }
        $data['settings'] = PosController::settings();
        $defaultCustomer = Functions::getDataWhere("customers", "customerId", $data['settings']['walkInCustomerId']);
        if (Session::get("posCustomer") ['customerId'] == $defaultCustomer[0]['customerId']) {
            echo json_encode(array("status" => "error", "message" => "Reward point OTP will not work with Walk In Customer"));
            return;
        }
        unset($_POST['_token']);
        $getOtp = Functions::getDataWhere("reward_otp", "otpToken", Session::get("otpToken"));
        if ($getOtp[0]['otp'] == $_POST['otp']) {
            echo json_encode(array("status" => "success"));
            return;
        }
        else {
            echo json_encode(array("status" => "error", "message" => "OTP does not match"));
            return;
        }
    }
    public function skipOtpForRewardValidation() {
        if (empty(Session::get("posCart"))) {
            echo json_encode(array("status" => "error", "message" => "Cart empty"));
            return;
        }
        $data['settings'] = PosController::settings();
        $defaultCustomer = Functions::getDataWhere("customers", "customerId", $data['settings']['walkInCustomerId']);
        if (Session::get("posCustomer") ['customerId'] == $defaultCustomer[0]['customerId']) {
            echo json_encode(array("status" => "error", "message" => "Reward point OTP will not work with Walk In Customer"));
            return;
        }
        unset($_POST['_token']);
        $_POST['customerId'] = Session::get("posCustomer") ['customerId'];
        $skipOtpToken = Functions::getToken(50);
        $_POST['skipOtpToken'] = $skipOtpToken;
        Functions::setData("reward_otp_skip_reason", $_POST);
        Session::put("skipOtpToken", $skipOtpToken);
        echo json_encode(array("status" => "success"));
        return;
    }
    public function sendReminderToCustomer() {
        if ($_POST['value'] == 'sms') {
            $message = "";
        }
        else {
            $mail = Functions::sendMail("WalletBalance", Session::get('posCustomer'));
        }
        echo json_encode(array("status" => "success"));
    }
    public function editCustomer() {
        echo json_encode(array("status" => "success", "data" => Session::get('posCustomer')));
    }
    public function getProductInformation() {
        $product = $this->getProductById($_POST['productId']) [0];
        $html = '';
        $array = array("heading", "model", "barcode", "cost", "price", "basePriceCost", "tax", "taxHeading", "taxPercent", "rewardPoints", "profit", "dateAdded");
        foreach ($product as $key => $value) {
            if (!in_array($key, $array)) {
                continue;
            }
            if ($key == 'basePriceCost') {
                $key = 'Cost Per Unit';
                $value = number_format($value, 2);
            }
            if ($key == 'profit') {
                $key = 'Net profit';
                $value = number_format($value, 2);
            }
            $html .= '<tr><td>' . ModuleController::getUpperCasePosition($key) . '</td><td>' . $value . '</td></tr>';
        }
        $totalQuantitySold = DB::select("SELECT SUM(quantity) as quantity FROM order_product WHERE productId='" . $_POST['productId'] . "'");
        $totalQuantitySold = Functions::arrayConvert($totalQuantitySold);
        $html .= '<tr><td>' . ModuleController::getUpperCasePosition("Total Quantity Sold") . '</td><td>' . $totalQuantitySold[0]['quantity'] . '</td></tr>';
        $totalProfit = DB::select("SELECT SUM(profit) as profit FROM order_product WHERE productId='" . $_POST['productId'] . "'");
        $totalProfit = Functions::arrayConvert($totalProfit);
        $html .= '<tr><td>' . ModuleController::getUpperCasePosition("Total Profit") . '</td><td>' . number_format($totalProfit[0]['profit'], 2) . '</td></tr>';
        $totalCost = DB::select("SELECT SUM(basePriceCost) as basePriceCost FROM order_product WHERE productId='" . $_POST['productId'] . "'");
        $totalCost = Functions::arrayConvert($totalCost);
        $html .= '<tr><td>' . ModuleController::getUpperCasePosition("Total Cost") . '</td><td>' . number_format($totalCost[0]['basePriceCost'], 2) . '</td></tr>';
        $totalSaleValue = DB::select("SELECT SUM(total) as total FROM order_product WHERE productId='" . $_POST['productId'] . "'");
        $totalSaleValue = Functions::arrayConvert($totalSaleValue);
        $html .= '<tr><td>' . ModuleController::getUpperCasePosition("Total Sale Value") . '</td><td>' . number_format($totalSaleValue[0]['total'], 2) . '</td></tr>';
        echo $html;
    }
    public function getGstInformation() {
        $gst = $_POST['gst'];
        $globalSettings = Functions::settings();
        $gstDetail = file_get_contents("https://sheet.gstincheck.co.in/check/" . $globalSettings['gstApi'] . "/" . $gst);
        $gstDetail = json_decode($gstDetail, true);
        $name = $gstDetail['data']['tradeNam'];
        $address = $gstDetail['data']['pradr']['adr'];
        echo json_encode(array("status" => "success", "name" => $name, "address" => $address));
    }
    public function removeRoom() {
        Session::forget("hotelRoom");
        DB::select("DELETE FROM `order_hotel_room` WHERE orderId=0");
    }
    public function changeHotelRoom() {
        $hotel = Functions::getDataWhere("hotel_rooms", "hotelRoomId", $_POST['hotelRoomId']) [0];
        DB::select("UPDATE order_hotel_room SET hotelRoomId='" . $_POST['hotelRoomId'] . "',hotel='" . json_encode($hotel) . "' WHERE orderId='" . Session::get('updateId') . "'");
        $data = Session::get("hotelRoom");
        $dataNew['post']['hotelRoomId'] = $hotel['hotelRoomId'];
        $dataNew['post']['dateCheckIn'] = $data['post']['dateCheckIn'];
        $dataNew['post']['dateCheckOut'] = $data['post']['dateCheckOut'];
        $dataNew['post']['timeCheckIn'] = $data['post']['timeCheckIn'];
        $dataNew['post']['timeCheckOut'] = $data['post']['timeCheckOut'];
        $dataNew['post']['personName'] = $data['post']['personName'];
        $dataNew['post']['personId'] = $data['post']['personId'];
        $dataNew['hotel'] = $hotel;
        $dataNew['hotelToken'] = $data['hotelToken'];
        $dataNew['personId'] = $data['post']['personId'];
        Session::put("hotelRoom", $dataNew);
        //DB::select("DELETE FROM order_hotel_room WHERE orderId=0");
        
    }
    public function attachHotelRoomData(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
                'productId' => 'required',
                'dateCheckIn' => 'required',
                'timeCheckIn' => 'required',
            ]);

            if ($validator->fails()) {
                $errors = Functions::arrayConvert($validator->errors());
                $html = collect($errors)->flatten()->map(function ($error, $index) {
                    return ($index + 1) . ") " . $error;
                })->implode('</p><p>');
                return response()->json(["status" => "false", "message" => "<p>$html</p>"]);
            }

            $productId = $request->input('productId');
            $hotel = DB::table('products')->where('productId', $productId)->first();

            if (!$hotel) {
                return response()->json(["status" => "false", "message" => "Hotel not found."]);
            }

            $hotelRoomSession = Session::get('hotelRoom');
            $updateId = Session::get('updateId');
            $hotelToken = $hotelRoomSession['hotelToken'] ?? Functions::getToken(50);

            $dataInsert = [
                'productId' => $request->input('productId'),
                'dateCheckIn' => $request->input('dateCheckIn'),
                'dateCheckOut' => $request->input('dateCheckOut'),
                'timeCheckIn' => $request->input('timeCheckIn'),
                'timeCheckOut' => $request->input('timeCheckOut'),
                'hotel' => json_encode($hotel),
                'hotelToken' => $hotelToken,
            ];

            $personImages = [];
            foreach ($request->input('personName', []) as $key => $value) {
                try {
                    if ($request->hasFile("personId.$key")) {
                        $imageFile = $request->file("personId.$key");
                        $personImages[$key] = Functions::uploadNewImage($imageFile)['message'];
                    } else {
                        $personImages[$key] = $request->input("personIdSaved.$key", '');
                    }
                } catch (Exception $e) {
                    return response()->json(["status" => "false", "message" => "Error processing image for person: " . $e->getMessage()]);
                }
            }

            $dataInsert['customerData'] = json_encode([
                "personName" => $request->input('personName'),
                "personId" => $personImages
            ]);

            Session::put("hotelRoom", array_merge($request->all(), ['hotelToken' => $hotelToken, 'personId' => $personImages]));

            $existingRecord = DB::table('order_hotel_room')->where('hotelToken', $hotelToken)->exists();

            if ($existingRecord) {
                DB::table('order_hotel_room')->where('hotelToken', $hotelToken)->update($dataInsert);
            } else {
                DB::table('order_hotel_room')->insert($dataInsert);
            }

            return response()->json(["status" => "success"]);
        } catch (Exception $e) {
            return response()->json(["status" => "false", "message" => "An error occurred: " . $e->getMessage()]);
        }
    }

    public function getHotelStayInHours() {
        $date1 = date("Y-m-d H:i");
        $date2 = Session::get("hotelRoom") ['post']['dateCheckIn'] . " " . Session::get("hotelRoom") ['post']['timeCheckIn'];
        $time1 = strtotime($date1);
        $time2 = strtotime($date2);
        $difference = round(abs($time2 - $time1) / 3600, 2);
        echo $difference;
    }
    public function saveProductReturnDetails() {
        $explode = explode(",", $_POST['quantity']);
        $productId = explode(",", $_POST['productId']);
        $total = explode(",", $_POST['total']);
        $explode = array_filter($explode);
        $total1 = 0;
        for ($i = 0;$i < count($explode);$i++) {
            $product = DB::select("SELECT rewardPoints,quantity FROM order_product WHERE productId='" . $productId[$i] . "' AND orderId='" . $_POST['orderId'] . "'");
            $product = Functions::arrayConvert($product);
            $reward1 = $product[0]['rewardPoints']/$product[0]['quantity'];
            $reward2 = $explode[$i]*$reward1;
            DB::select("UPDATE products SET quantity = quantity+'" . $explode[$i] . "' WHERE productId='" . $productId[$i] . "'");
            $array['customerId'] = Session::get("posCustomer") ['customerId'];
            $array['orderId'] = $_POST['orderId'];
            $array['productId'] = $productId[$i];
            $array['quantity'] = $explode[$i];
            $array['rewardPoints'] = $reward2;
            $array['total'] = $total[$i];
            $total1 += $array['total'];
            Functions::setData("product_return", $array);
            DB::select("UPDATE order_product SET `return` = 1 WHERE productId='" . $productId[$i] . "' AND orderId='" . $_POST['orderId'] . "'");
            //$this->removeProductFromOrder($_POST['orderId'],$productId[$i]);
        }
        if ($_POST['checked'] == 1) {
            DB::select("INSERT INTO customer_ledger_wallet SET 
            orderId = '" . $_POST['orderId'] . "',
            customerId = '" . Session::get("posCustomer") ['customerId'] . "',
            amount = '" . $reward2 . "',
            type = 'Credit',
            storeId = '" . Session::get("storeId") . "',
            userId = '" . Session::get("userId") . "'
        ");

         $rewardArray['orderId'] = $_POST['orderId'];
         $rewardArray['customerId'] = Session::get("posCustomer") ['customerId'];
         $rewardArray['reward'] = $reward2;
         $rewardArray['type'] = 'Credit';
         $rewardArray['paymentId'] = 0;
         $rewardArray['remark'] = 'Product Return';
         Functions::setData("customer_ledger_reward", $rewardArray);

         PosController::updateCustomerReward(Session::get("posCustomer") ['customerId']);
         PosController::updateCustomerWallet(Session::get("posCustomer") ['customerId']);
         PosController::setCustomerPos(Session::get("posCustomer") ['customerId'],true);
        
        }
        echo json_encode(array("status" => "success"));
    }

    public function removeProductFromOrder($orderId, $productId){

        $order = DB::table('orders')->where('id', $orderId)->first();
        if (!$order) {
            return response()->json(['message' => 'Order not found'], 404);
        }
        
        $orderProducts = json_decode($order->orderProduct, true);
        if (!is_array($orderProducts)) {
            return response()->json(['message' => 'Invalid order product format'], 400);
        }

        $updatedProducts = array_filter($orderProducts, function($product) use ($productId) {
            return $product['id'] != $productId;
        });

        $total = empty($updatedProducts) ? 0 : array_sum(array_column($updatedProducts, 'price'));

        DB::table('orders')->where('orderId', $orderId)->update([
            'orderProduct' => json_encode(array_values($updatedProducts)),
            'total' => $total,
        ]);

        return response()->json(['message' => 'Product removed successfully']);
    }


    public static function checkHotelBookingStatus($productId) {
        $hotel = DB::select("SELECT * FROM order_hotel_room WHERE productId='" . $productId . "' AND dateCheckOut='' AND timeCheckOut=''");
        $hotel = Functions::arrayConvert($hotel);
        return count($hotel);
    }
    public static function updateHotelPriceInCart() {
        $orderId = Session::get("updateId");
        $orderHotelData = Functions::getDataWhere("order_hotel_room", "orderId", $orderId) [0];
        $settings = PosController::settings();
        $checkInTimeSettings = $settings['checkInTime'];
        $time1 = strtotime($orderHotelData['dateCheckIn'] . " " . $orderHotelData['timeCheckIn']);
        $time2 = strtotime($_POST['dateCheckOut'] . " " . $_POST['timeCheckOut']);
        $difference = round(abs($time2 - $time1) / 3600, 2);
        $days = ceil($difference / 24);
        DB::select("UPDATE order_hotel_room SET dateCheckOut='" . $_POST['dateCheckOut'] . "',timeCheckOut='" . $_POST['timeCheckOut'] . "',totalNoOfDays='" . $days . "' WHERE orderId='" . $orderId . "'");
        if (!empty(Session::get("posCart"))) {
            $carts = Session::get("posCart");
            $i = 0;
            foreach ($carts as $cart) {
                if (($cart['productId'] == $orderHotelData['productId'])) {
                    $carts[$i]['price'] = $carts[$i]['price'] * $days;
                    $carts[$i]['total'] = $carts[$i]['price'];
                }
                $i++;
            }
            $carts = array_values($carts);
            Session::put("posCart", $carts);
        }
        echo json_encode(array("status" => "success"));
    }
    public static function getIndianCurrency(float $number){
        $decimal = round($number - ($no = floor($number)), 2) * 100;
        $hundred = null;
        $digits_length = strlen($no);
        $i = 0;
        $str = array();
        $words = array(0 => '', 1 => 'one', 2 => 'two',
            3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six',
            7 => 'seven', 8 => 'eight', 9 => 'nine',
            10 => 'ten', 11 => 'eleven', 12 => 'twelve',
            13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen',
            16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen',
            19 => 'nineteen', 20 => 'twenty', 30 => 'thirty',
            40 => 'forty', 50 => 'fifty', 60 => 'sixty',
            70 => 'seventy', 80 => 'eighty', 90 => 'ninety');
        $digits = array('', 'hundred','thousand','lakh', 'crore');
        while( $i < $digits_length ) {
            $divider = ($i == 2) ? 10 : 100;
            $number = floor($no % $divider);
            $no = floor($no / $divider);
            $i += $divider == 10 ? 1 : 2;
            if ($number) {
                $plural = (($counter = count($str)) && $number > 9) ? '' : null;
                $hundred = ($counter == 1 && $str[0]) ? ' and ' : null;
                $str [] = ($number < 21) ? $words[$number].' '. $digits[$counter]. $plural.' '.$hundred:$words[floor($number / 10) * 10].' '.$words[$number % 10]. ' '.$digits[$counter].$plural.' '.$hundred;
            } else $str[] = null;
        }
        $Rupees = implode('', array_reverse($str));
        $paise = ($decimal > 0) ? "." . ($words[$decimal / 10] . " " . $words[$decimal % 10]) . ' Paise' : '';
        return ($Rupees ? $Rupees . 'Rupees ' : '') . $paise;
    }
    public function quickAddProduct(Request $request){

        $valid['heading'] = 'required';
        $valid['model'] = 'required';
        $valid['hsnCode'] = 'required';
        $valid['quantity'] = 'required|numeric';
        $valid['cost'] = 'required|numeric';
        $valid['price'] = 'required|numeric';
        $valid['vendorId'] = 'required';
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
        unset($_POST['_token']);
        $getMax = DB::select("SELECT MAX(barcode) as max FROM `products` WHERE storeId='".Session::get('storeId')."'");
        if(empty($getMax[0])){
        $_POST['barcode'] = $settings['startBarcodeFrom'];
        }else{
        $getMax = Functions::arrayConvert($getMax);
        $_POST['barcode'] = $getMax[0]['max']+1;
        }
        $result = Functions::setData("products",$_POST);
        //print_r($result);
        PosController::setCartPos($result['insert_id']);
        echo json_encode(array("status" => "success","message"=>$result['insert_id'],"data"=>$result));
    }
    
}