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

class PurchaseController extends Controller {
    public function __construct(){
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
    public static function getCurrencySymbol() {
        $globalSettings = Functions::settings();
        return Functions::getDataWhere("currencies", "currencyId",$globalSettings['defaultCurrency'])[0]['symbol'];
    }
    public function purchases(Request $request) {
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
        $permission = $this->permissionStaticPage(51);
        if (empty($permission)) {
            return view('admin.no-permission')->with($data);
        }
        else {
            if (!isset($permission['view']) || $permission['view'] == 0) {
                return view('admin.no-permission')->with($data);
            }
            else {
                $data['vendors'] = Functions::getDataWhereOrderBy("vendors", "storeId", Session::get('storeId'), "heading", "ASC");
                $data['categories'] = Functions::getDataWhereOrderBy("categories", "storeId", Session::get('storeId'), "heading", "ASC");
                //print_r($data['vendors']);
                $data['permission'] = $permission;
                if ($lastSegment == "add" || is_numeric($lastSegment)) {
                    if (is_numeric($lastSegment)) {
                        if ($segments[2] == 'view') {
                            $data['view'] = 1;
                        }
                        $data['update_id'] = $lastSegment;
                        $content = Functions::getDataWhere("purchases", "purchaseId", $lastSegment) [0];
                        $data['content']['heading'] = $content['heading'];
                        $data['content']['refrence'] = $content['refrence'];
                        $data['content']['date'] = $content['date'];
                        $data['content']['vendorId'] = $content['vendorId'];
                        $data['content']['billType'] = $content['billType'];
                        $data['content']['comment'] = $content['comment'];
                        if (empty(Session::get("purchaseCart"))) {
                            Session::put("purchaseCart", json_decode($content['products'], true));
                        }
                    }
                    else {
                        $data['update_id'] = 0;
                        $data['content']['heading'] = "";
                        $data['content']['refrence'] = "";
                        $data['content']['date'] = "";
                        $data['content']['vendorId'] = "";
                        $data['content']['billType'] = "";
                        $data['content']['comment'] = "";
                    }
                    $data['taxes'] = Functions::getDataOrderBy("taxes", "percent", "ASC");
                    return view('admin.add-purchase')->with($data);
                }
                Session::forget("purchaseCart");
                return view('admin.purchases')->with($data);
            }
        }
    }
    public static function getProductById($productId) {
        $settings = PurchaseController::settings();
        $sql = "SELECT * FROM products WHERE productId='" . $productId . "'";
        $sql .= " ORDER BY productId DESC LIMIT 50";
        $products = DB::select($sql);
        $products = Functions::arrayConvert($products);
        $i = 0;
        foreach ($products as $cart) {
            $tax = Functions::getTaxAmountByProductId($cart['productId'], "cost");
            $products[$i]['taxHeading'] = $tax['taxHeading'];
            $products[$i]['taxPercent'] = $tax['taxPercent'];
            $products[$i]['taxExclusiveValue'] = $tax['taxExclusiveValue'];
            $products[$i]['taxInclusiveValue'] = $tax['taxInclusiveValue'];
            $products[$i]['tax'] = $tax['tax'];
            $products[$i]['basePriceCost'] = $tax['basePriceCost'];
            $products[$i]['discount'] = 0;
            $products[$i]['discountValue'] = 0;
            $products[$i]['extraInformation'] = "";
            if($settings['fetchCostInPurchase']==1){
                $products[$i]['total'] = $products[$i]['cost'];
            }else{
                $products[$i]['total'] = 0;
                $products[$i]['cost'] = 0;
                $products[$i]['tax'] = 0;
            }
            
            if ($settings['enableRewardPoints'] == 1) {
                $products[$i]['rewardPoints'] = ($settings['rewardPercentOnProduct'] / 100) * $products[$i]['cost'];
            }
            else {
                $products[$i]['rewardPoints'] = 0;
            }
            $i++;
        }
        return $products;
    }
    public function addToPurchase($productId = false) {
        //Session::forget("purchaseCart");
        if ($productId != false) {
            $_POST['productId'] = $productId;
        }
        $cart = Session::get("purchaseCart");
        $product = PurchaseController::getProductById($_POST['productId']);
        $product[0]['quantity'] = 1;
        if (empty($cart)) {
            Session::put("purchaseCart", $product);
        }
        else {
            if ($this->checkForDuplicateInCart($product[0]['productId']) == 0) {
                Session::push("purchaseCart", $product[0]);
            }
            else {
                echo json_encode(array("status" => "error", "message" => "Product already added in the cart"));
                return;
            }
        }
        if ($productId == false) {
            echo json_encode(array("status" => "success", "message" => "Product added successfully"));
        }
    }
    public function checkForDuplicateInCart($productId) {
        $duplicate = 0;
        if (!empty(Session::get("purchaseCart"))) {
            $carts = Session::get("purchaseCart");
            foreach ($carts as $cart) {
                if (($cart['productId'] == $productId)) {
                    $duplicate = 1;
                    break;
                }
            }
        }
        return $duplicate;
    }
    public function deleteProductFromPurchase() {
        if (isset($_POST['productId'])) {
            if (!empty(Session::get("purchaseCart"))) {
                $carts = Session::get("purchaseCart");
                $i = 0;
                foreach ($carts as $cart) {
                    if (($cart['productId'] == $_POST['productId'])) {
                        unset($carts[$i]);
                    }
                    $i++;
                }
                $carts = array_values($carts);
                Session::put("purchaseCart", $carts);
            }
        }
        echo json_encode(array("status" => "success", "message" => "Product deleted successfully"));
    }
    public function updatePurchaseQuantity() {
        if (isset($_POST['productId'])) {
            if (!empty(Session::get("purchaseCart"))) {
                $carts = Session::get("purchaseCart");
                $i = 0;
                foreach ($carts as $cart) {
                    if (($cart['productId'] == $_POST['productId'])) {
                        $carts[$i]['quantity'] = $_POST['quantity'];
                        $tax = Functions::getTaxAmountByProductId($cart['productId'], "cost");
                        $carts[$i]['taxHeading'] = $tax['taxHeading'];
                        $carts[$i]['taxPercent'] = $tax['taxPercent'];
                        $carts[$i]['taxExclusiveValue'] = $tax['taxExclusiveValue']*$_POST['quantity'];
                        $carts[$i]['taxInclusiveValue'] = $tax['taxInclusiveValue']*$_POST['quantity'];
                        $carts[$i]['tax'] = $tax['tax']*$_POST['quantity'];
                        $carts[$i]['basePriceCost'] = $tax['basePriceCost']*$_POST['quantity'];
                        $carts[$i]['total'] = $carts[$i]['cost'] * $_POST['quantity'];
                    }
                    $i++;
                }
                Session::put("purchaseCart", $carts);
            }
        }
        echo json_encode(array("status" => "success", "message" => "Product updated successfully"));
    }
    public function updateCostPrice() {
        if (isset($_POST['productId'])) {
            if (!empty(Session::get("purchaseCart"))) {
                $carts = Session::get("purchaseCart");
                $i = 0;
                foreach ($carts as $cart) {
                    if (($cart['productId'] == $_POST['productId'])) {
                        $carts[$i]['cost'] = $_POST['cost'];
                        DB::select("UPDATE products SET cost='" . $_POST['cost'] . "' WHERE productId='" . $_POST['productId'] . "'");
                        $tax = Functions::getTaxAmountByProductId($cart['productId'], "cost");
                        $carts[$i]['taxHeading'] = $tax['taxHeading'];
                        $carts[$i]['taxPercent'] = $tax['taxPercent'];
                        $carts[$i]['taxExclusiveValue'] = $tax['taxExclusiveValue'] * $carts[$i]['quantity'];
                        $carts[$i]['taxInclusiveValue'] = $tax['taxInclusiveValue'] * $carts[$i]['quantity'];
                        $carts[$i]['tax'] = $tax['tax'] * $carts[$i]['quantity'];
                        $carts[$i]['basePriceCost'] = $tax['basePriceCost'];
                        $carts[$i]['total'] = $_POST['cost'] * $carts[$i]['quantity'];
                    }
                    $i++;
                }
                Session::put("purchaseCart", $carts);
            }
        }
        echo json_encode(array("status" => "success", "message" => "Product updated successfully"));
    }
    public function updateTaxType() {
        if (isset($_POST['productId'])) {
            if (!empty(Session::get("purchaseCart"))) {
                $carts = Session::get("purchaseCart");
                $i = 0;
                foreach ($carts as $cart) {
                    if (($cart['productId'] == $_POST['productId'])) {
                        DB::select("UPDATE products SET taxType='" . $_POST['taxType'] . "',taxId='" . $_POST['taxId'] . "' WHERE productId='" . $_POST['productId'] . "'");
                        $product = PurchaseController::getProductById($_POST['productId']);
                        $tax = Functions::getTaxAmountByProductId($cart['productId'], "cost");
                        $carts[$i]['taxHeading'] = $tax['taxHeading'];
                        $carts[$i]['taxPercent'] = $tax['taxPercent'];
                        $carts[$i]['taxExclusiveValue'] = $tax['taxExclusiveValue'] * $carts[$i]['quantity'];
                        $carts[$i]['taxInclusiveValue'] = $tax['taxInclusiveValue'] * $carts[$i]['quantity'];
                        $carts[$i]['tax'] = $tax['tax'] * $carts[$i]['quantity'];
                        $carts[$i]['basePriceCost'] = $tax['basePriceCost'];
                        $carts[$i]['taxType'] = $product[0]['taxType'];
                        $carts[$i]['taxId'] = $product[0]['taxId'];
                        $carts[$i]['total'] = $carts[$i]['cost'] * $carts[$i]['quantity'];
                    }
                    $i++;
                }
                Session::put("purchaseCart", $carts);
            }
        }
        echo json_encode(array("status" => "success", "message" => "Product updated successfully"));
    }
    public function purchaseTotal() {
        if (!empty(Session::get("purchaseCart"))) {
            $carts = Session::get("purchaseCart");
            $subTotal = 0;
            $tax = 0;
            $total = 0;
            foreach ($carts as $cart) {
                $subTotal += $cart['total'];
                $tax += $cart['tax'];
                if ($cart['taxType'] == 'Exclusive') {
                    $total += $cart['total'] + $cart['tax'];
                }
                else {
                    $total += $cart['total'];
                }
            }
            $html = '<tr>';
            $html .= '<td width="50%"><strong>Sub Total</strong></td>';
            $html .= '<td align="right" class="symbol"><strong>' . $subTotal . '</strong></td>';
            $html .= '</tr>';
            $html .= '<tr>';
            $html .= '<td width="50%"><strong>Tax</strong></td>';
            $html .= '<td align="right" class="symbol"><strong>' . round($tax,2) . '</strong></td>';
            $html .= '</tr>';
            $html .= '<tr width="50%">';
            $html .= '<td><strong>Total</strong></td>';
            $html .= '<td align="right" class="symbol"><strong>' . $total . '</strong></td>';
            $html .= '</tr>';
            echo json_encode(array("status" => "success", "data" => $html));
        }
        else {
            $html = '<tr>';
            $html .= '<td width="50%"><strong>Sub Total</strong></td>';
            $html .= '<td align="right" class="symbol"><strong>0</strong></td>';
            $html .= '</tr>';
            $html .= '<tr>';
            $html .= '<td width="50%"><strong>Tax</strong></td>';
            $html .= '<td align="right" class="symbol"><strong>0</strong></td>';
            $html .= '</tr>';
            $html .= '<tr width="50%">';
            $html .= '<td><strong>Total</strong></td>';
            $html .= '<td align="right" class="symbol"><strong>0</strong></td>';
            $html .= '</tr>';
            echo json_encode(array("status" => "success", "data" => $html));
        }
    }
    public function getProducts(Request $request) {
        $sql = "SELECT * FROM products WHERE storeId=" . Session::get('storeId') . " AND status=1 AND showInPos=1 AND softDelete=0";
        if (isset($_POST['search']) AND $_POST['search'] != '') {
            $sql .= " AND (heading  LIKE '%" . $_POST['search'] . "%' || model  LIKE '%" . $_POST['search'] . "%' || barcode  LIKE '%" . $_POST['search'] . "%')";
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
    public function dataTablePurchases(Request $request) {
        $table = "roles";
        $orderColumn = array("purchaseId", "heading");
        $sql = "SELECT * FROM purchases WHERE status=1";
        if (isset($_POST['search']['value']) AND $_POST['search']['value'] != "") {
            $sql .= " AND heading LIKE '%" . $_POST['search']['value'] . "%'";
        }
        $sql .= " AND storeId='" . Session::get('storeId') . "'";
        if (isset($_POST['order'])) {
            $sql .= " ORDER BY " . $orderColumn[$_POST['order'][0]['column']] . " " . $_POST['order'][0]['dir'];
        }
        else {
            $sql .= " ORDER BY purchaseId DESC";
        }
        if ($_POST['length'] != - 1) {
            $sql .= " LIMIT " . $_POST['length'] . " OFFSET " . $_POST['start'];
        }
        $modules = DB::select($sql);
        $data = array();
        $i = 1;
        $permission = $this->permissionStaticPage(51);
        foreach ($modules as $row) {
            //if ( $row->roleId == 1 ) { continue; }
            $subArray = array();
            $subArray[] = $row->sno;
            $subArray[] = $row->heading;
            $subArray[] = $row->refrence;
            $subArray[] = $row->date;
            $subArray[] = Functions::getDataWhere("vendors", "vendorId", $row->vendorId) [0]['heading'];
            $subArray[] = '<span class="symbol">' . $row->total . '</span>';
            if ($row->purchaseStatus == 1) {
                $subArray[] = '<div class="badge badge-success changePurchaseStatus" style="cursor:pointer;margin:auto;" data-updateid="' . $row->purchaseId . '" data-table="purchases" data-tableidcolumn="purchaseId" data-status="Approved">Approved</div>';
            }
            else {
                $subArray[] = '<div class="badge badge-danger changePurchaseStatus" style="cursor:pointer;margin:auto;" data-updateid="' . $row->purchaseId . '" data-table="purchases" data-tableidcolumn="purchaseId" data-status="DisApproved">DisApproved</div>';
            }
            if (isset($permission['edit']) and $permission['edit'] == 1 AND $row->purchaseStatus == 0) {
                $txt = "E";
                $class = "warning";
                $addtext = "add";
            }
            else {
                $txt = "V";
                $class = "info";
                $addtext = "view";
            }
            $button = '<a class="btn btn-' . $class . '" style="margin-left:5px;"  href="' . url("/") . '/admin/purchase/' . $addtext . '/' . $row->purchaseId . '">' . $txt . '</a>';
            if (isset($permission['edit']) and $permission['edit'] == 1 AND $row->purchaseStatus == 0) {
                $button .= '<div class="btn btn-danger delete" style="margin-left:5px;" data-page="purchases" data-id="' . $row->purchaseId . '" data-column="purchaseId">D</a></div>';
            }
            $subArray[] = '<div class="pull-right">' . $button . '</div>';
            $data[] = $subArray;
            $i++;
        }
        $sql = "SELECT COUNT(*) AS total FROM purchases WHERE status=1";
        if (isset($_POST['search']['value']) AND $_POST['search']['value'] != "") {
            $sql .= " AND heading LIKE '%" . $_POST['search']['value'] . "%'";
        }
        $sql .= " AND storeId='" . Session::get('storeId') . "'";
        $count = DB::select($sql);
        $count = Functions::arrayConvert($count) [0]['total'];
        $numRows = $count;
        $allResults = $count;
        $output = array('draw' => intval($_POST['draw']), 'recordsTotal' => $numRows, 'recordsFiltered' => $allResults, 'data' => $data);
        echo json_encode($output);
    }
    public function quickAddProduct(Request $request) {
        $valid['heading'] = 'required';
        if ($_POST['barcode'] != '') {
            $valid['barcode'] = 'required|unique:products,barcode';
        }
        $valid['cost'] = 'required|numeric';
        $valid['price'] = 'required|numeric';
        $valid['taxId'] = 'required';
        $valid['taxType'] = 'required';
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
        //unset($_POST['percent']);
        unset($_POST['_token']);
        if ($_POST['barcode'] == '') {
            $max = DB::select("SELECT MAX(barcode) AS barcode FROM products WHERE storeId='" . Session::get('storeId') . "'");
            $max = Functions::arrayConvert($max);
            if (empty($max[0])) {
                $settings = PurchaseController::settings();
                $_POST['barcode'] = $settings['startBarcodeFrom'];
            }
            else {
                $_POST['barcode'] = $max[0]['barcode'] + 1;
            }
        }
        $query = Functions::setData("products", $_POST);
        if ($query) {
            echo json_encode(array("status" => "success", "message" => "Product added successfully", "insert_id" => $query['insert_id']));
            $this->addToPurchase($query['insert_id']);
        }
        else {
            echo json_encode(array("status" => "success", "message" => "There is some error"));
        }
    }
    public function submitPurchase(Request $request) {
        unset($_POST['heading']);
        unset($_POST['barcode']);
        unset($_POST['cost']);
        unset($_POST['price']);
        unset($_POST['taxId']);
        unset($_POST['taxType']);
        unset($_POST['percent']);
        unset($_POST['categoryId']);
        unset($_POST['hsnCode']);
        $valid['purchaseHeading'] = 'required';
        $valid['vendorId'] = 'required';
        $valid['date'] = 'required';
        $valid['billType'] = 'required';
        $validator = validator($request->all(), $valid);
        if ($validator->fails()) {
            $html = "";
            $errors = Functions::arrayConvert($validator->errors());
            $i = 1;
            foreach ($errors as $key => $value) {
                foreach ($value as $key1 => $value1) {
                    $html .= '<p style="color:red">' . $i++ . ") " . $value1 . '</p>';
                }
            }
            return json_encode(array("status" => "false", "message" => $html));
        }
        $_POST['heading'] = $_POST['purchaseHeading'];
        $_POST['products'] = json_encode(Session::get("purchaseCart"));
        $total = $this->purchaseTotalSubmit();
        $_POST['quantity'] = $total['quantity'];
        $_POST['subTotal'] = $total['subTotal'];
        $_POST['tax'] = $total['tax'];
        $_POST['total'] = $total['total'];
        unset($_POST['_token']);
        unset($_POST['purchaseHeading']);
        if ($_POST['update_id'] > 0) {
            $_POST['where_column'] = 'purchaseId';
        }
        $query = Functions::setData("purchases", $_POST);
        if ($query) {
            Functions::sendMail("Purchase",$_POST,Functions::settings() ['filedsToReplaceOnMail']);
            Session::forget("purchaseCart");
            echo json_encode(array("status" => "success", "message" => "Purchase added successfully", "insert_id" => $query['insert_id']));
        }
        else {
            echo json_encode(array("status" => "success", "message" => "There is some error"));
        }
    }
    public function purchaseTotalSubmit() {
        if (!empty(Session::get("purchaseCart"))) {
            $carts = Session::get("purchaseCart");
            $data['subTotal'] = 0;
            $data['tax'] = 0;
            $data['total'] = 0;
            $data['quantity'] = 0;
            foreach ($carts as $cart) {
                $data['tax'] += $cart['tax'];
                $data['quantity'] += $cart['quantity'];
                $data['subTotal'] += $cart['total'];
                if ($cart['taxType'] == 'Exclusive') {
                    $data['total'] += $cart['total'] + $cart['tax'];
                }
                else {
                    $data['total'] += $cart['total'];
                }
            }
            return $data;
        }
    }
    public function changeStatus() {
        $getProducts = Functions::getDataWhere("purchases", "purchaseId", $_POST['updateId']) [0];
        $products = json_decode($getProducts['products'], true);
        if ($_POST['status'] == "Approved") {
            $post['purchaseStatus'] = "0";
            foreach ($products as $product) {
                DB::select("UPDATE products SET quantity = quantity-'" . $product['quantity'] . "' WHERE productId='" . $product['productId'] . "'");
            }
            Functions::sendMail("PurchaseDisApproved",array("purchaseId"=>$_POST['updateId']),Functions::settings() ['filedsToReplaceOnMail']);
        }
        else {
            foreach ($products as $product) {
                DB::select("UPDATE products SET quantity = quantity+'" . $product['quantity'] . "' WHERE productId='" . $product['productId'] . "'");
            }
            $post['purchaseStatus'] = "1";
            Functions::sendMail("PurchaseApproved",array("purchaseId"=>$_POST['updateId']),Functions::settings() ['filedsToReplaceOnMail']);
        }
        $post['update_id'] = $_POST['updateId'];
        $post['where_column'] = $_POST['id'];
        Functions::setData($_POST['table'], $post);
    }
    public static function permissionStaticPage($menuId) {
        return Functions::permissionStaticPage($menuId);
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
    
}