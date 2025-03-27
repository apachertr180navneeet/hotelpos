<?php
namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Functions;
use App\Models\Customer;
use App\Models\User;
use \Mailjet\Resources;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;
use Config;
class AuthController extends Controller {
    public function __construct() {
        $this->settings = Functions::settings();
        
    }
    public function login(Request $request) {
        $this->connectDb();
        $_POST = json_decode(file_get_contents('php://input'), true);
        $_POST['mobile'] = '8285187287';
        $customer = User::where('userMobile', $_POST['mobile']);
        $customer = User::where('userMobile', $_POST['mobile'])->first();
        $token = $customer->createToken('auth_token')->plainTextToken;
        return response()->json(['status' => 'success', 'token' => "Bearer " . $token, 'type' => 'Bearer']);
        exit;
    }
    public function getProducts() {
        $this->connectDb();
        $_POST = json_decode(file_get_contents('php://input'), true);
        $segments = request()->segments();
        $lastSegment = end($segments);
        $store = Functions::getDataWhere("stores","storeToken",$segments[1]);
        $sql = "SELECT * FROM products WHERE status=1 AND storeId='".$store[0]['storeId']."'";
        if(isset($segments[3])){
            $sql .= " AND (heading  LIKE '%" . $segments[3] . "%' || model  LIKE '%" . $segments[3] . "%' || barcode  LIKE '%" . $segments[3] . "%')";
        }
        $products = DB::select($sql);
        $products = Functions::arrayConvert($products);
        $array = array();
        foreach($products as $key => $product){
            
            $originalCost = $product['cost'];
            $costArray = str_split(round($product['cost']));
            
            $newCost = "";
            foreach($costArray as $cost){
                $code = DB::select("SELECT * FROM codes WHERE number='".$cost."'");
                $code = Functions::arrayConvert($code);
                $newCost .= $code[0]['alphabat'];
            }
            
            if($product['vendorId'] > 0){
                    $vendorId = " (".$product['vendorId'].")";
                }else{
                    $vendorId = "";
                }
                
            $array[$key]['productDetailId'] = 0;
            $array[$key]['productId'] = $product['productId'];
            $array[$key]['price'] = $product['price'];
            $array[$key]['productQuantity'] = $product['quantity'];
            $array[$key]['storeId'] = $product['storeId'];
            $array[$key]['shopName'] = $store[0]['name'];
            $array[$key]['productName'] = $product['heading'];
            $array[$key]['productModel'] = $product['model'];
            $array[$key]['productBarcode'] = $product['barcode'];
            $array[$key]['productCost'] = $product['cost'];
            $array[$key]['landingCost'] = $newCost.$vendorId;
            $array[$key]['salePrice'] = $product['price'];
            $array[$key]['productQuantity'] = $product['quantity'];
            $array[$key]['productColor'] = 0;
            $array[$key]['wholesale_price_lable'] = "";
            $array[$key]['manufacturerId'] = 0;
            $array[$key]['categories'] = array();
        }
        return response()->json($array);
        exit;
    }
    public function getPurchases() {
        $this->connectDb();
        $_POST = json_decode(file_get_contents('php://input'), true);
        $segments = request()->segments();
        $lastSegment = end($segments);
        $store = Functions::getDataWhere("stores","storeToken",$segments[1]);
        $sql = "SELECT * FROM purchases WHERE status=1 AND storeId='".$store[0]['storeId']."'";
        if(isset($segments[3])){
            $sql .= " AND (heading  LIKE '%" . $segments[3] . "%' || refrence  LIKE '%" . $segments[3] . "%')";
        }
        $products = DB::select($sql);
        $products = Functions::arrayConvert($products);
        $array = array();
        foreach($products as $key => $product){
            $array[$key]['heading'] = $product['heading'];
            $array[$key]['refrence'] = $product['refrence'];
            $array[$key]['purchaseId'] = $product['purchaseId'];
            $array[$key]['vendorId'] = $product['vendorId'];
            $array[$key]['comment'] = $product['comment'];
            $array[$key]['subTotal'] = $product['subTotal'];
            $array[$key]['tax'] = $product['tax'];
            $array[$key]['purchaseStatus'] = $product['purchaseStatus'];
            $array[$key]['storeId'] = $product['storeId'];
            $array[$key]['status'] = $product['status'];
            $array[$key]['mainOrderId'] = 0;
            $array[$key]['insertedBy'] = $product['insertedBy'];
            $array[$key]['dateAdded'] = $product['dateAdded'];
            $array[$key]['shopName'] = $store[0]['name'];
            $array[$key]['purchaseDate'] = $product['date'];
            $array[$key]['purchaseType'] = $product['billType'];
            $array[$key]['purchaseRefrenceNo'] = $product['refrence'];
            $array[$key]['purchaseTotalQuantity'] = $product['quantity'];
            $array[$key]['purchaseGrandTotal'] = $product['total'];
            $purchaseProducts = json_decode($product['products'],true);
            foreach($purchaseProducts as $pp){
                $salePrice = DB::select("SELECT * FROM products WHERE productId='".$pp['productId']."'");
                $salePrice = Functions::arrayConvert($salePrice);
                
                $originalPrice = $pp['price'];
                $priceArray = str_split(round($pp['price']));
                
                $newPrice = "";
                foreach($priceArray as $cost){
                    $code = DB::select("SELECT * FROM codes WHERE number='".$cost."'");
                    $code = Functions::arrayConvert($code);
                    $newPrice .= $code[0]['alphabat'];
                }
                if($product['vendorId'] > 0){
                    $vendorId = " (".$product['vendorId'].")";
                }else{
                    $vendorId = "";
                }
                $array[$key]['products'][] = array(
                    'productDetailId' => 0,
                    'purchaseProductId' => $pp['productId'],
                    'purchaseProductName' => $pp['heading'],
                    'purchaseQuantity' => $pp['quantity'],
                    'purchaseAmount' => $originalPrice,
                    'purchasePrice' => $newPrice.$vendorId,
                    'purchaseSalePrice' => $salePrice[0]['price'],
                    'productBarcode' => $pp['barcode'],
                    'productColor' => 0,
                    'productModel' => $pp['model']
                );
            }
        }
        return response()->json($array);
        exit;
    }
    public function connectDb(){
       /*         Config::set("database.connections.mysql", [
                    "driver" => "mysql",
                    "host" => "localhost",
                    "port" => "3306",
                    "database"=> 'jaitaran_pos_jaitaran',
                    "username" => "jaitaran_pos",
                    "password" => "mB9=s~Kj5aN[",
                ]);
                DB::purge('mysql');*/

                Config::set("database.connections.mysql", [
                    "driver" => "mysql",
                    "host" => "localhost",
                    "port" => "3306",
                    "database"=> session('dataBaseName'),
                    "username" => session('dbUser'),
                    "password" => session('dbPassword'),
                ]);
                DB::purge('mysql');
      
    }
}