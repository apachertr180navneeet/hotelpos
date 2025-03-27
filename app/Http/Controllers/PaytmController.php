<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use PaytmWallet;
use App\Models\Functions;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;
use Intervention\Image\ImageManagerStatic as Image;
class PaytmController extends Controller {
    public $settings;
    public function __construct() {
        $this->settings = Functions::settings();
    }
    public function paytmPayment(Request $request) {
        $payment = PaytmWallet::with('receive');
        $order = $this->placeOrder();
        $payment->prepare(['order' => $order['insert_id'], 'user' => Session::get('customer') ['customerId'], 'mobile_number' => Session::get('customer') ['mobile'], 'email' => Session::get('customer') ['email'], 'amount' => $order['total'], 'callback_url' => route('paytm.callback'), ]);
        return $payment->receive();
    }
    public function placeOrder() {
        if (!empty(Session::get("coupon"))) {
            $coupon = Session::get("coupon") ['couponAmount'];
            $couponDetail = json_encode(Session::get("coupon"));
        } else {
            $coupon = 0;
            $couponDetail = "";
        }
        $array['invoicePrefix'] = "PREFIX";
        $array['customerId'] = Session::get('customer') ['customerId'];
        $array['name'] = Session::get('customer') ['name'];
        $array['email'] = Session::get('customer') ['email'];
        $array['mobile'] = Session::get('customer') ['mobile'];
        $array['address'] = Functions::getAddressOfSelectCustomerByIdAndkey(Session::get('customer') ['customerId'], Session::get('deliveryAddressKey'));
        $array['addressKey'] = Session::get('deliveryAddressKey');
        $array['billingAddress'] = Functions::getAddressOfSelectCustomerByIdAndkey(Session::get('customer') ['customerId'], Session::get('billingAddressKey'));
        $array['billingAddressKey'] = Session::get('billingAddressKey');
        $array['paymentMethod'] = "online";
        if (!empty(Session::get("cart"))) {
            $array['products'] = json_encode(Session::get("cart"));
            $array['subTotal'] = Functions::cartTotal();
            $array['shippingCharges'] = Functions::shippingCharge();
            $array['couponDetail'] = $couponDetail;
            $array['total'] = round(Functions::cartTotal() + Functions::shippingCharge() - $coupon);
        }
        $array['paymentStatus'] = 0;
        $array['paymentDetails'] = "";
        $array['orderStatusId'] = 9;
        if (!empty(Session::get('galleryPrescription'))) {
            $array['galleryPrescription'] = json_encode(Session::get("galleryPrescription"));;
        }
        $query = Functions::setData("orders", $array);
        if ($query) {
            return array("insert_id" => $query['insert_id'], "total" => $array['total']);
        }
    }
    public function paytmCallback() {
        $transaction = PaytmWallet::with('receive');
        $response = $transaction->response();
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $data['settings'] = $this->settings;
        if ($transaction->isSuccessful()) {
            $res['TXNID'] = $response['TXNID'];
            $res['TXNAMOUNT'] = $response['TXNAMOUNT'];
            $res['PAYMENTMODE'] = $response['PAYMENTMODE'];
            $arr['paymentDetails'] = json_encode($res);
            $arr['update_id'] = $transaction->getOrderId();
            $arr['where_column'] = "orderId";
            $arr['paymentStatus'] = "1";
            $arr['orderStatusId'] = $this->settings['defaultOrderStatus'];
            Functions::setData("orders", $arr);
            if (!empty(Session::get("cart"))) {
                //foreach (Session::get("cart") as $cart) {
                $cart = Session::get("cart");
                foreach($cart as $key=>$value){
                    if(!empty($cart[$key]['packs'])){
                        //$product = Functions::getDataWhere("products", "productId",  $cart[$key]['id']) [0];
                        $pack = Functions::getDataWhere("packs","packId", $cart[$key]['packs']['id']);
                        $productQuantity = json_decode($pack[0]['productQuantity'],true);
                        
                        $totalQuantity = $productQuantity[$cart[$key]['packs']['key']]*$cart[$key]['quantity'];

                        DB::select("UPDATE products SET productQuantity = productQuantity - " . $totalQuantity . " WHERE productId='" . $cart[$key]['id'] . "'");
                    }else{
                        DB::select("UPDATE products SET productQuantity = productQuantity - " . $cart[$key]['quantity'] . " WHERE productId='" . $cart[$key]['id'] . "'");
                    }
                    
                    
                   // DB::select("UPDATE products SET productQuantity = productQuantity - " . $cart[$key]['quantity'] . " WHERE productId='" . $cart['id'] . "'");
                }
            }
            $arr['name'] = Session::get('customer') ['name'];
            $arr['email'] = Session::get('customer') ['email'];
            Functions::sendMail("Order", $arr);
            $arr = array();
            $arr['orderId'] = $transaction->getOrderId();
            $arr['orderStatusId'] = $this->settings['defaultOrderStatus'];
            $arr['notifyCustomer'] = "Yes";
            $html = "TXNID : ".$response['TXNID']."<br>";
            $html .= "TXNAMOUNT : ".$response['TXNAMOUNT']."<br>";
            $html .= "PAYMENTMODE : ".$response['PAYMENTMODE'];
            $arr['comment'] = $html;
            Functions::setData("order_history", $arr);
            Session::forget("cart");
            Session::forget("deliveryAddressKey");
            Session::forget("billingAddressKey");
            Session::forget("coupon");
            Session::forget("galleryPrescription");
            return view('frontend.thanks')->with($data);
        } else if ($transaction->isFailed()) {
            return view('frontend.failed')->with($data);
        } else if ($transaction->isOpen()) {
            return view('frontend.failed')->with($data);
        }
        $transaction->getResponseMessage();
        $transaction->getOrderId();
        $transaction->getTransactionId();
        
    }
    public function getDataWhere($table, $where, $value) {
        return Functions::getDataWhere($table, $where, $value);
    }
    public function pageBanner($id) {
        return Functions::getDataWhere("pages_banner", "pagesBannerId", $id) [0]['image'];
    }
    public function countInCart() {
        return Functions::countInCart();
    }
    public function getDataWhereOrderBy($table, $where, $value, $orderBy, $orderValue, $limit, $offset) {
        return Functions::getDataWhereOrderBy($table, $where, $value, $orderBy, $orderValue, $limit, $offset);
    }
    public function countInPrescription() {
        return Functions::countInPrescription();
    }
    public function getData($table) {
        return Functions::getData($table);
    }
    public function resizeImage($image, $width, $height) {
        require 'public/intervention/autoload.php';
        if (!file_exists($image)) {
            $noImage = "public/assets/no-image.png";
            $img = Image::make($noImage);
            $img->resize($width, $height);
            $explode = explode("/", $noImage);
            $ext = explode(".", end($explode));
            $newName = md5(mt_rand(111111111, 999999999)) . "." . $ext[1];
            $imgname = 'public/assets/cache/' . $width . "-" . $height . end($explode);
            $img->save($imgname);
            $imageCache = $imgname;
            return $imageCache;
        }
        $imageCache = str_replace("uploads", "cache", $image);
        $img = Image::make($image);
        $img->resize($width, $height);
        $explode = explode("/", $image);
        $ext = explode(".", end($explode));
        $newName = md5(mt_rand(111111111, 999999999)) . "." . $ext[1];
        $imgname = 'public/assets/cache/' . end($explode);
        $img->save($imgname);
        $imageCache = $imgname;
        return $imageCache;
    }
    public function paytmPurchase() {
        return view('frontend.paytm.payment-page');
    }
}
