<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Validator;
use Socialite;
use Exception;
use Auth;
use App\Models\Functions;
use App\Http\Controllers\Frontend\FrontendController;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Session;
class SocialController extends Controller
{
    public function googleRedirect(){
        return Socialite::driver('google')->redirect();
    }
    public function facebookRedirect(){
        return Socialite::driver('facebook')->redirect();
    }
    public function loginWithGoogle(Request $request){
        $user = Socialite::driver('google')->stateless()->user();
        
        $count = DB::select("SELECT COUNT(*) AS count FROM customers WHERE email='".$user->email."'");
        $count = Functions::arrayConvert($count);
        if($count[0]['count'] == 1){
            DB::select("UPDATE customers SET googleId = '".$user->id."' WHERE email='".$user->email."'");
            
            $usersData = Functions::getDataWhere("customers", "googleId", $user->id) [0];
            $customerArray['customerId'] = $user->id;
            $customerArray['name'] = $usersData['name'];
            $customerArray['email'] = $usersData['email'];
            $customerArray['mobile'] = $usersData['mobile'];
            $customerArray['wishlist'] = $usersData['wishlist'];
            $request->session()->put('customer', $customerArray);
            Session::put('customer', $customerArray);
            $updateWishlist['where_column'] = "customerId";
            $updateWishlist['update_id'] = $customerArray['customerId'];
            $updateWishlist['wishlist'] = json_encode(FrontendController::getWishlistMergeStatic());
            Functions::setData("customers", $updateWishlist);
            
            return redirect('/my-account');
        }else{
            $_POST['googleId'] = $user->id;
            $_POST['email'] = $user->email;
            $_POST['name'] = $user->name;
            
            $users = Functions::setData("customers", $_POST);
            
            $usersData = Functions::getDataWhere("customers", "customerId", $users['insert_id']) [0];
            $customerArray['customerId'] = $users['insert_id'];
            $customerArray['name'] = $usersData['name'];
            $customerArray['email'] = $usersData['email'];
            $customerArray['mobile'] = $usersData['mobile'];
            $customerArray['wishlist'] = $usersData['wishlist'];
            $request->session()->put('customer', $customerArray);
            Session::put('customer', $customerArray);
            $updateWishlist['where_column'] = "customerId";
            $updateWishlist['update_id'] = $customerArray['customerId'];
            $updateWishlist['wishlist'] = json_encode(FrontendController::getWishlistMergeStatic());
            Functions::setData("customers", $updateWishlist);
            //echo json_encode(array("status" => "success", "message" => Functions::getDataWhere("messages", "messageId", "2") [0]['message']));
            return redirect('/my-account');
        }
    }
    public function loginWithFacebook(Request $request){
        $user = Socialite::driver('facebook')->stateless()->user();
        $count = DB::select("SELECT COUNT(*) AS count FROM customers WHERE email='".$user->email."'");
        $count = Functions::arrayConvert($count);
        if($count[0]['count'] == 1){
            DB::select("UPDATE customers SET facebookId = '".$user->id."' WHERE email='".$user->email."'");
            
            $usersData = Functions::getDataWhere("customers", "facebookId", $user->id) [0];
            $customerArray['customerId'] = $user->id;
            $customerArray['name'] = $usersData['name'];
            $customerArray['email'] = $usersData['email'];
            $customerArray['mobile'] = $usersData['mobile'];
            $customerArray['wishlist'] = $usersData['wishlist'];
            $request->session()->put('customer', $customerArray);
            Session::put('customer', $customerArray);
            $updateWishlist['where_column'] = "customerId";
            $updateWishlist['update_id'] = $customerArray['customerId'];
            $updateWishlist['wishlist'] = json_encode(FrontendController::getWishlistMergeStatic());
            Functions::setData("customers", $updateWishlist);
            
            return redirect('/my-account');
        }else{
            $_POST['facebookId'] = $user->id;
            $_POST['email'] = $user->email;
            $_POST['name'] = $user->name;
            
            $users = Functions::setData("customers", $_POST);
            
            $usersData = Functions::getDataWhere("customers", "customerId", $users['insert_id']) [0];
            $customerArray['customerId'] = $users['insert_id'];
            $customerArray['name'] = $usersData['name'];
            $customerArray['email'] = $usersData['email'];
            $customerArray['mobile'] = $usersData['mobile'];
            $customerArray['wishlist'] = $usersData['wishlist'];
            $request->session()->put('customer', $customerArray);
            Session::put('customer', $customerArray);
            $updateWishlist['where_column'] = "customerId";
            $updateWishlist['update_id'] = $customerArray['customerId'];
            $updateWishlist['wishlist'] = json_encode(FrontendController::getWishlistMergeStatic());
            Functions::setData("customers", $updateWishlist);
            //echo json_encode(array("status" => "success", "message" => Functions::getDataWhere("messages", "messageId", "2") [0]['message']));
            return redirect('/my-account');
        }
    }
}