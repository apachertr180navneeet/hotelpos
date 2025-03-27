<?php
namespace App\Http\Controllers\Frontend;
use App\Http\Controllers\Controller;
use App\Models\Functions;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
require ('frontend/razorpay-php/Razorpay.php');
use Razorpay\Api\Api;
use Razorpay\Api\Errors\SignatureVerificationError;
use Session;
class FrontendController extends Controller {
    public $settings;
    public function __construct() {
        $this->settings = Functions::settings();
    }
    public function index(Request $request) {
        $data['settings'] = $this->settings;
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        return view('frontend.home')->with($data);
    }
    public function getData($table) {
        return Functions::getData($table);
    }
    public function getDataWhereOrderBy($table, $where, $value, $orderBy, $orderValue, $limit) {
        return Functions::getDataWhereOrderBy($table, $where, $value, $orderBy, $orderValue, $limit);
    }
    public function getDataWhere($table, $where, $value) {
        return Functions::getDataWhere($table, $where, $value);
    }
    public function getDataOrderBy($table, $where, $value) {
        return Functions::getDataOrderBy($table, $where, $value);
    }
    public function arrayConvert($array) {
        return Functions::arrayConvert($array);
    }
    public static function moduleShortCode($moduleId) {
        $module = Functions::getDataWhere("modules", "moduleId", $moduleId);
        return $module[0];
    }
    public function page(Request $request) {
        $data['settings'] = $this->settings;
        $data['method'] = ucwords(request()->route()->getActionMethod());
        $data['controller'] = $this;
        $segments = request()->segments();
        $lastSegment = end($segments);
        $page = Functions::getDataWhere("pages", "seo", $lastSegment);
        /*$data['breadCrumbs'][] = array("heading" => $page[0]['heading'], "link" => "#");*/
        if (empty($page[0])) {
            return redirect('errors.404');
        }
        $data['metaTitle'] = $page[0]['metaTitle'];
        $data['metaKeyword'] = $page[0]['metaKeyword'];
        $data['metaDescription'] = $page[0]['metaDescription'];
        $data['innerBanner'] = !empty($innerBanner[0]) ? $innerBanner[0] : array();
        $data['content'] = $page[0];
        return view('frontend.page')->with($data);
    }
    
    public function submitDynamicData(Request $request) {
        if ($this->settings['databaseBackup'] == 1) {
            Functions::takeBackup($_POST['table'] . " INSERT / UPDATE BEFORE");
        }
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
        $frontendRedirectPage = $_POST['frontendRedirectPage'];
        $filedsToReplaceOnMail = $_POST['filedsToReplaceOnMail'];
        $sendMailToAdmin = $_POST['sendMailToAdmin'];
        unset($_POST['table']);
        unset($_POST['controllerClassName']);
        unset($_POST['moduleName_single']);
        unset($_POST['pageHeading_single']);
        unset($_POST['moduleTable_single']);
        unset($_POST['moduleFirstColumn_single']);
        unset($_POST['tableIdColumn']);
        unset($_POST['frontendRedirectPage']);
        unset($_POST['filedsToReplaceOnMail']);
        unset($_POST['sendMailToAdmin']);
        unset($_POST['page']);
        unset($_POST['_token']);
        $image = 0;
        foreach ($_POST as $key => $value) {
            if ($key != "extra") {
                if (strpos($key, '_validation') !== false) {
                    $normalKey = str_replace('_validation', '', $key);
                    if (strpos($_POST[$key], 'unique') !== false AND $_POST['update_id'] > 0) {
                    }
                    else {
                        $valid[$normalKey] = $_POST[$key];
                        if (strpos($_POST[$key], 'mimes') !== false) {
                            if ($_FILES[$normalKey]['name'] == "") {
                                unset($valid[$normalKey]);
                            }
                        }
                        if (isset($valid[$normalKey]) AND $normalKey == "image" AND $_FILES['image']['name'] == "" AND $valid[$normalKey] != "" AND $_POST['update_id'] > 0) {
                            unset($valid[$normalKey]);
                        }
                        $validator = validator($request->all(), $valid);
                        if ($validator->fails()) {
                            $html = "";
                            $errors = Functions::arrayConvert($validator->errors());
                            $i = 1;
                            foreach ($errors as $key => $value) {
                                foreach ($value as $key1 => $value1) {
                                    $html .= '<p style="margin-top:10px;color:red;text-align:left">' . $i++ . ") " . $value1 . '</p>';
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
        if (!empty($_POST['extra']) AND $_POST['extra'] != "") {
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
                            if (isset($_FILES[$key]['name'][$a]) AND $_FILES[$key]['name'][$a] != "") {
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
                                        if (isset($array[$key]) AND $array[$key] != "") {
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
            if (isset($array['seo']) AND $array['update_id'] == 0) {
                $count = Functions::getDataWhere($table, "seo", $array['seo']);
                if (!empty($count)) {
                    $array['seo'] = $array['seo'] . "-" . mt_rand(111111111, 999999999);
                }
            }
            if (!empty($array['relatedImage']) AND is_array($array['relatedImage'])) {
                $array['relatedImage'] = json_encode($array['relatedImage']);
            }
            $reply = Functions::setData($table, $array);
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
        if($frontendRedirectPage!=''){
            $reply['reffer'] = $frontendRedirectPage;
        }else{
            $reply['reffer'] = '';
        }
        if($sendMailToAdmin == 'Yes'){
            if($filedsToReplaceOnMail !='' ){
                Functions::sendMail($table,$array,$filedsToReplaceOnMail);
            }else{
                Functions::sendMail($table,$array);
            }
        }
        echo json_encode($reply);
    }
    public static function filterDescriptionForModules($input){
        return Functions::filterDescriptionForModules($input);
    }
    public static function generateModuleData($moduleId){
        return Functions::generateModuleData($moduleId);
    }
}