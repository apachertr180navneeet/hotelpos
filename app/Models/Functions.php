<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use \Mailjet\Resources;
use Mail;
use Session;
use App\Mail\SendMail;
use Intervention\Image\ImageManagerStatic as Image;
use App\Http\Controllers\Admin\PosController;
class Functions extends Model {
    use HasFactory; 
    

    public static function settings() {
        $settings = DB::table('settings')->select('*')->where("settingId", 1)->get()->toArray();
        return Functions::arrayConvert($settings[0]);
    }

    public static function getData($table) {
        $sql = "SELECT * FROM `$table` WHERE status=1";
        if (session('roleId') != 1) {
            if ($table != 'stores' AND Functions::checkIfColumnExists($table, "storeId")) {
                $sql .= " AND storeId = '" . session('storeId') . "'";
            }
            if ($table != 'users' AND Functions::checkIfColumnExists($table, "userId")) {
                $sql .= " AND userId = '" . session('userId') . "'";
            }
        }
        $results = DB::select($sql);
        return Functions::arrayConvert($results);
    }
    public static function getDataWhereAll($table, $where, $value) {
        $sql = "SELECT * FROM `$table`";
        $where = explode(",", $where);
        $value = explode(",", $value);
        $count = count($where);
        $operator = (isset($var['operator'])) ? $var['operator'] : " AND ";
        for ($i = 0;$i < $count;$i++) {
            if ($i == 0) {
                $sql .= " WHERE " . $where[$i] . " = '" . $value[$i] . "'";
            }
            else {
                $sql .= " " . $operator . " " . $where[$i] . " = '" . $value[$i] . "'";
            }
        }
        $results = DB::select($sql);
        return Functions::arrayConvert($results);
    }
    public static function getDataWhere($table, $where, $value) {
        $sql = "SELECT * FROM `$table`";
        $where = explode(",", $where);
        $value = explode(",", $value);
        $count = count($where);
        $operator = (isset($var['operator'])) ? $var['operator'] : " AND ";
        for ($i = 0;$i < $count;$i++) {
            if ($i == 0) {
                $sql .= " WHERE " . $where[$i] . " = '" . $value[$i] . "'";
            }
            else {
                $sql .= " " . $operator . " " . $where[$i] . " = '" . $value[$i] . "'";
            }
        }
        $sql .= " AND status = 1";
        $results = DB::select($sql);
        return Functions::arrayConvert($results);
    }
    public static function getDataWhereSelectBox($table, $where, $value, $opertor = "=") {
        $sql = "SELECT * FROM `$table`";
        $where = explode(",", $where);
        $value = explode(",", $value);
        $count = count($where);
        $operator = (isset($var['operator'])) ? $var['operator'] : " AND ";
        for ($i = 0;$i < $count;$i++) {
            if ($i == 0) {
                $sql .= " WHERE " . $where[$i] . " $opertor '" . $value[$i] . "'";
            }
            else {
                $sql .= " " . $operator . " " . $where[$i] . " $opertor '" . $value[$i] . "'";
            }
        }
        $sql .= " AND status = 1";
        $results = DB::select($sql);
        return Functions::arrayConvert($results);
    }
    public static function getDataOrderBy($table, $orderBy, $orderValue, $limit = 1000000) {
        $data = DB::table($table)->select('*')->orderBy($orderBy, $orderValue)->where('status', 1)->limit($limit)->get()->toArray();
        return Functions::arrayConvert($data);
    }
    public static function getDataWhereOrderBy($table, $where, $value, $orderBy, $orderValue, $limit = 0) {
        $sql = "SELECT * FROM $table";
        $where = explode(",", $where);
        $value = explode(",", $value);
        $count = count($where);
        $operator = (isset($var['operator'])) ? $var['operator'] : " AND ";
        for ($i = 0;$i < $count;$i++) {
            if ($i == 0) {
                $sql .= " WHERE " . $where[$i] . "  = '" . $value[$i] . "'";
            }
            else {
                $sql .= " " . $operator . " " . $where[$i] . "  = '" . $value[$i] . "'";
            }
        }
        $sql .= " AND status = 1";
        if ($table != 'stores' AND Functions::checkIfColumnExists($table, "storeId")) {
            $sql .= " AND storeId = '" . session('storeId') . "'";
        }
        if ($table != 'users' AND Functions::checkIfColumnExists($table, "userId")) {
            $sql .= " AND userId = '" . session('userId') . "'";
        }
        $sql .= " ORDER BY " . $orderBy . " " . $orderValue;
        if ($limit != false) {
            $sql .= " LIMIT " . $limit;
        }
        $results = DB::select($sql);
        return Functions::arrayConvert($results);
    }
    public static function setData($table, $post) {
        if (isset($post['update_id']) AND $post['update_id'] == 0) {
            unset($_POST['table']);
        }
        if (!isset($post['update_id'])) {
            $post['update_id'] = 0;
        }
        foreach ($post as $key => $value) {
            if ($post[$key] == "") {
                $data[$key] = $post[$key];
            }
            else {
                $data[$key] = $post[$key];
            }
        }
        if (isset($post['update_id']) AND $data['update_id'] == 0) {
            unset($data['update_id']);
        }
        unset($data['table']);
        if (isset($data['update_id'])) {
            $updateId = $post['update_id'];
            $whereColumn = $post['where_column'];
            unset($data['update_id']);
            unset($data['where_column']);
            if (!isset($data['storeId']) AND $table != 'stores' AND Functions::checkIfColumnExists($table, "storeId")) {
                $data['storeId'] = session('storeId');
            }
            if ($table != 'users' AND Functions::checkIfColumnExists($table, "userId")) {
                $data['userId'] = session('userId');
            }
            if (Functions::checkIfColumnExists($table, "updatedBy")) {
                $data['updatedBy'] = session('userId');
            }
            if (Functions::checkIfColumnExists($table, "dateUpdated")) {
                $data['dateUpdated'] = date("Y-m-d H:i:s");
            }
            $response = DB::table($table)->where($whereColumn, $updateId)->update($data);
            return array("status" => "success", "insert_id" => $updateId, "insertUpdate" => 'update', "data" => $data);
        }
        else {
            if ($table != 'stores' AND Functions::checkIfColumnExists($table, "storeId")) {
                if(!isset($post['storeId'])){
                    $data['storeId'] = session('storeId');
                }
            }
            if ($table != 'users' AND Functions::checkIfColumnExists($table, "userId")) {
                if(!isset($post['userId'])){
                    $data['userId'] = session('userId');
                }
            }
            if (Functions::checkIfColumnExists($table, "dateUpdated")) {
                $data['dateUpdated'] = date("Y-m-d H:i:s");
            }
            if (Functions::checkIfColumnExists($table, "dateInserted")) {
                $data['dateUpdated'] = date("Y-m-d H:i:s");
            }
            if (Functions::checkIfColumnExists($table, "insertedBy")) {
                if(!isset($post['insertedBy'])){
                    $data['insertedBy'] = session('userId');
                }
            }
            if (Functions::checkIfColumnExists($table, "sno")) {
                $data['sno'] = Functions::sno($table);
            }
            if (Functions::checkIfColumnExists($table, "storeToken")) {
                $data['storeToken'] = sha1(md5(mt_rand(0000000000, 9999999999)));
            }
            $response = DB::table($table)->insertGetId($data);
            return array("status" => "success", "insert_id" => $response, "insertUpdate" => 'insert', "data" => $data);
            //print_r($response);
            
        }
        /*if ($response || $response == 0) {
            if(isset($data['update_id'])){
                return array("status" => "success", "insert_id" => $response, "insertUpdate" => 'update', "data" => $data);
            }else{
                return array("status" => "success", "insert_id" => $response, "insertUpdate" => 'insert', "data" => $data);
            } 
        }*/
        /*else {
            return array("status" => false);
        }*/
    }
    public static function sno($table) {
        $lastSerialNumber = DB::select("SELECT MAX(sno) AS sno FROM `$table` WHERE storeId='" . session('storeId') . "'");
        $lastSerialNumber = Functions::arrayConvert($lastSerialNumber);
        return $lastSerialNumber[0]['sno'] + 1;
    }
    public static function deleteData($table, $post) {
        $query = DB::table($table)->where($post['whereColumn'], $post['whereId'])->delete();
        if ($query) {
            return true;
        }
        else {
            return false;
        }
    }
    public static function softDeleteData($table, $post) {
        $query = DB::select("UPDATE " . $table . " SET softDelete=1 WHERE " . $post['whereColumn'] . " = '" . $post['whereId'] . "'");
        if ($query) {
            return true;
        }
        else {
            return false;
        }
    }
    public static function resizeImage($image, $width, $height) {
        require 'public/intervention/autoload.php';
        $imageCache = str_replace("uploads", "cache", $image);
        $img = Image::make($image);
        $img->resize($width, $height);
        $explode = explode("/", $image);
        $imgname = 'public/assets/cache/' . end($explode);
        $img->save($imgname);
        return $imageCache;
    }
    public static function count($table) {
        $count = DB::table($table)->count();
        return $count;
    }
    public static function countBySql($sql) {
        $count = DB::select($sql);
        return count(Functions::arrayConvert($count));
    }
    public static function hash($string) {
        return sha1(md5($string));
    }
    public static function encrypt($string) {
        return base64_encode($string);
    }
    public static function decrypt($string) {
        return base64_decode($string);
    }
    public static function getUpperCasePosition($string) {
        $Words = preg_replace('/(?<!\ )[A-Z]/', ' $0', $string);
        $Words = str_replace("_", " ", $Words);
        return ucwords(strtolower($Words));
    }
    public static function uploadNewImage($file)
    {
        $settings = DB::table('settings')->select('*')->where("settingId", 1)->get()->toArray();

        if (!is_dir('public/assets/uploads/' . session('dataBaseName'))) {
            @mkdir('public/assets/uploads/' . session('dataBaseName'));
        }

        $target_dir = 'public/assets/uploads/' . session('dataBaseName') . '/';
        $rand = mt_rand(111111111, 999999999);
        $imageFileType = strtolower($file->getClientOriginalExtension());
        $target_file = $target_dir . $rand . "." . $imageFileType;

        // Validate file size
        if ($file->getSize() > $settings[0]->allowedImageSize) {
            $size = $settings[0]->allowedImageSize / 1000;
            return ["status" => "error", "message" => "Sorry, Your File Is Too Large, Allowed File Size Is " . $size . " KB"];
        }

        // Move file to the target directory
        if ($file->move($target_dir, $rand . "." . $imageFileType)) {
            return ["status" => "success", "message" => $target_file];
        } else {
            return ["status" => "error", "message" => "File upload failed"];
        }
    }

    public function uploadExcel($file) {
        $settings = DB::table('settings')->select('*')->where("settingId", 1)->get()->toArray();
        if (!is_dir('public/backend/excels/'.session('dataBaseName'))) {
            @mkdir('public/backend/excel/'.session('dataBaseName'));
        }
        $target_dir = 'public/backend/excel/'.session('dataBaseName').'/';
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
    public static function arrayConvert($object) {
        return json_decode(json_encode($object), true);
    }
    public static function columnNames($table) {
        $sql = "SHOW COLUMNS FROM `$table`";
        $results = DB::select($sql);
        $columnArr = array();
        foreach (Functions::arrayConvert($results) as $row) {
            $columnArr[] = $row;
        }
        return $columnArr;
    }
    public static function showAllDbTables() {
        $dbname = DB::connection()->getDatabaseName();
        $sql = "SELECT t.TABLE_NAME AS myTables FROM INFORMATION_SCHEMA.TABLES AS t WHERE t.TABLE_SCHEMA = '$dbname'";
        $results = DB::select($sql);
        $columnArr = array();
        foreach (Functions::arrayConvert($results) as $row) {
            $columnArr[] = $row['myTables'];;
        }
        return $columnArr;
    }
    public static function reArrangeColumnBySortOrder($menuData) {
        foreach ($menuData['columnSortOrder'] as $key => $value) {
            $menuData['columnSortOrder'][$key] = ($value == "") ? 100 : $value;
        }
        asort($menuData['columnSortOrder']);
        $a = 0;
        foreach ($menuData['columnSortOrder'] as $key => $value) {
            $columnName[$a] = $menuData['columnName'][$key];
            $columnCustomName[$a] = $menuData['columnCustomName'][$key];
            $foreignColumnShow[$a] = $menuData['foreignColumnShow'][$key];
            $foreignTable[$a] = $menuData['foreignTable'][$key];
            $foreignColumn[$a] = $menuData['foreignColumn'][$key];
            $showInList[$a] = $menuData['showInList'][$key];
            $type[$a] = $menuData['type'][$key];
            $foreignTableFirstColumn[$a] = isset($menuData['foreignTableFirstColumn'][$key]) ? $menuData['foreignTableFirstColumn'][$key] : "";
            $tableColumnMerge[$a] = isset($menuData['tableColumnMerge'][$key]) ? $menuData['tableColumnMerge'][$key] : "";
            $a++;
        }
        unset($menuData['columnName']);
        unset($menuData['columnCustomName']);
        unset($menuData['foreignColumnShow']);
        unset($menuData['foreignTable']);
        unset($menuData['foreignColumn']);
        unset($menuData['showInList']);
        unset($menuData['type']);
        unset($menuData['foreignTableFirstColumn']);
        unset($menuData['tableColumnMerge']);
        $menuData['columnName'] = $columnName;
        $menuData['columnCustomName'] = $columnCustomName;
        $menuData['foreignColumnShow'] = $foreignColumnShow;
        $menuData['foreignTable'] = $foreignTable;
        $menuData['foreignColumn'] = $foreignColumn;
        $menuData['showInList'] = $showInList;
        $menuData['type'] = $type;
        $menuData['foreignTableFirstColumn'] = $foreignTableFirstColumn;
        $menuData['tableColumnMerge'] = $tableColumnMerge;
        return $menuData;
    }
    public static function checkIfColumnExists($table, $column) {
        if (Schema::hasColumn($table, $column)) {
            return true;
        }
        else {
            return false;
        }
    }
    public static function sendMail($field, $post, $filedsToReplace = false) {
        require 'public/frontend/mailjet/autoload.php';
        if (!isset($post['name'])) {
            $name = 'User';
        }else{
            $name = $post['name'];
        }
        $settings = PosController::settings();
        //print_r($settings);
        $template = Functions::getDataWhere("templates", "forWhat,forWhom", $field . ",User");
        if (!empty($template[0])) {
            $template = $template[0];
            $subject = $template['subject'];
            $template = str_replace('{NAME}', $name, $template['template']);
            $template = str_replace('{WEBSITENAME}', $settings['websiteName'], $template);
            if(isset($post['walletBalance'])){
                $template = str_replace('{WALLETBALANCE}', $post['walletBalance'], $template);
            }
            if (isset($post['password'])) {
                $template = str_replace('{PASSWORD}', $post['password'], $template);
            }
            $content = "";
            $template = str_replace('{CONTENT}', $content, $template);
            $template = str_replace('{TEMPLATECONTENT}', $template, Functions::getEmailerTemplate());
            $mj = new \Mailjet\Client($settings['mailJetUsername'], $settings['mailJetPassword'], true, ['version' => 'v3.1']);
            $body = ['Messages' => [['From' => ['Email' => $settings['mailJetEmail'], 'Name' => $settings['mailJetName']], 'To' => [['Email' => $post['email'], 'Name' => $settings['mailJetName']]], 'Subject' => $subject, 'TextPart' => "", 'HTMLPart' => $template, 'CustomID' => "AppGettingStartedTest"]]];
            $response = $mj->post(Resources::$Email, ['body' => $body]);
        }
        $template = Functions::getDataWhere("templates", "forWhat,forWhom", $field . ",Admin");
        if (!empty($template[0])) {
            $template = $template[0];
            $subject = $template['subject'];
            $template = str_replace('{NAME}', 'Admin', $template['template']);
            if ($filedsToReplace == false) {
                $filedsToReplace = Functions::settings() ['fieldsToSendValueOnMail'];
            }
            else {
                $filedsToReplace = $filedsToReplace;
            }
            //$filedsToReplace = Functions::settings() ['fieldsToSendValueOnMail'];
            if ($filedsToReplace != false) {
                $html = '<table border="1" width="100%">';
                foreach ($post as $key => $value) {
                    $explode1 = explode(",", $filedsToReplace);
                    foreach ($explode1 as $exp) {
                        $explode2 = explode("-", $exp);
                        if (!empty($explode2)) {
                            if ($key == $explode2[0]) {
                                $getData = Functions::getDataWhere($explode2[2], $explode2[0], $value) [0][$explode2[1]];
                                $value = $getData;
                            }
                        }
                    }
                    $html .= '<tr>';
                    $html .= '<td>' . ucwords($key) . '</td>';
                    if ($key == 'image') {
                        $html .= '<td>' . url('/') . '/' . $value . '</td>';
                    }
                    else {
                        $html .= '<td>' . $value . '</td>';
                    }
                    $html .= '</tr>';
                }
                $html .= '</table>';
            }
            $template = str_replace('{CONTENT}', $html, $template);
            $template = str_replace('{WEBSITENAME}', $settings['websiteName'], $template);
            $content = "";
            $template = str_replace('{CONTENT}', $content, $template);
            $template = str_replace('{TEMPLATECONTENT}', $template, Functions::getEmailerTemplate());
            $mj = new \Mailjet\Client($settings['mailJetUsername'], $settings['mailJetPassword'], true, ['version' => 'v3.1']);
            $body = ['Messages' => [['From' => ['Email' => $settings['mailJetEmail'], 'Name' => $settings['mailJetName']], 'To' => [['Email' => $settings['adminEmail'], 'Name' => $settings['mailJetName']]], 'Subject' => $subject, 'TextPart' => "", 'HTMLPart' => $template, 'CustomID' => "AppGettingStartedTest"]]];
            $response = $mj->post(Resources::$Email, ['body' => $body]);
        }
    }
    public function sendMailSmtp($emails, $id, $templateName, $fileName, $heading = false) {
        $template = Functions::getDataWhere("templates", "forWhat,forWhom", $templateName . ",User") [0];
        $settings = Functions::settings();
        $name = "User";
        $subject = $template['subject'];
        if ($heading != false) {
            $subject = $heading;
        }
        $template = str_replace('{NAME}', $name, $template['template']);
        $template = str_replace('{WEBSITENAME}', $settings['websiteName'], $template);
        $template = str_replace('{ID}', $id, $template);
        if(isset($post['walletBalance'])){
            $template = str_replace('{WALLETBALANCE}', $post['walletBalance'], $template);
        }
        
        if (isset($post['password'])) {
            $template = str_replace('{PASSWORD}', $post['password'], $template);
        }
        $content = "";
        $template = str_replace('{CONTENT}', $content, $template);
        $testMailData = ['title' => $subject, 'body' => $template];
        foreach (explode(',', $emails) as $email) {
            $message = new SendMail($testMailData);
            $message->to($email)->from('sehrawat899@gmail.com', $subject)->subject($subject)->attach('public/' . $fileName . '-excel.xlsx', ['as' => $fileName . '-excel.xlsx', 'mime' => 'application/vnd.ms-excel']);
            Mail::send($message);
        }
    }
    public static function getEmailerTemplate() {
        $data = array();
        return view('frontend.emailer')->with($data);
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
    public function seoUrlGenerate($table, $id, $heading, $seo) {
        $datas = Functions::getData($table);
        foreach ($datas as $data) {
            $post['update_id'] = $data[$id];
            $post['where_column'] = $id;
            $post[$seo] = Functions::seoUrl($data[$heading]);
            Functions::setData($table, $post);
        }
    }
    public static function takeBackup($type = false) {
        $mysqlHostName = env('DB_HOST');
        $mysqlUserName = env('DB_USERNAME');
        $mysqlPassword = env('DB_PASSWORD');
        $DbName = env('DB_DATABASE');
        $con = mysqli_connect($mysqlHostName, $mysqlUserName, $mysqlPassword, $DbName);
        $tables = array();
        $result = mysqli_query($con, "SHOW TABLES");
        while ($row = mysqli_fetch_row($result)) {
            $tables[] = $row[0];
        }
        $return = '';
        foreach ($tables as $table) {
            $result = mysqli_query($con, "SELECT * FROM `" . $table."`");
            $num_fields = mysqli_num_fields($result);
            $return .= 'DROP TABLE IF EXISTS ' . $table . ';';
            $row2 = mysqli_fetch_row(mysqli_query($con, 'SHOW CREATE TABLE `' . $table.'`'));
            $return .= "\n\n" . $row2[1] . ";\n\n";
            for ($i = 0;$i < $num_fields;$i++) {
                while ($row = mysqli_fetch_row($result)) {
                    $return .= 'INSERT INTO ' . $table . ' VALUES(';
                    for ($j = 0;$j < $num_fields;$j++) {
                        $row[$j] = addslashes($row[$j]);
                        if (isset($row[$j])) {
                            $return .= '"' . $row[$j] . '"';
                        }
                        else {
                            $return .= '""';
                        }
                        if ($j < $num_fields - 1) {
                            $return .= ',';
                        }
                    }
                    $return .= ");\n";
                }
            }
            $return .= "\n\n\n";
        }
        $file_name = 'public/backup/databaseBackup_on_' . date('y-m-d_H_i_s') . '.sql';
        $createfile = fopen($file_name, 'x');
        $file_handle = fopen($file_name, 'w+');
        fwrite($file_handle, $return);
        fclose($file_handle);
        $query = DB::select("INSERT INTO databaseBackup SET backUpName='" . $file_name . "',type='" . $type . "'");
    }
    public static function getParentCategory($id) {
        $cat1 = Functions::getDataWhereAll("categories", "categoryId", $id);
        if (!empty($cat1[0])) {
            if ($cat1[0]['parentId'] == 0) {
                return $cat1[0]['heading'];
            }
        }
        if (!empty($cat1[0])) {
            $cat2 = Functions::getDataWhereAll("categories", "categoryId", $cat1[0]['parentId']);
            if (!empty($cat2[0])) {
                if ($cat2[0]['parentId'] == 0) {
                    return $cat2[0]['heading'] . "->" . $cat1[0]['heading'];
                }
            }
        }
        if (!empty($cat2[0])) {
            $cat3 = Functions::getDataWhereAll("categories", "categoryId", $cat2[0]['parentId']);
            if (!empty($cat3[0])) {
                if ($cat3[0]['parentId'] == 0) {
                    return $cat3[0]['heading'] . "->" . $cat2[0]['heading'] . "->" . $cat1[0]['heading'];
                }
            }
        }
        if (!empty($cat3[0])) {
            $cat4 = Functions::getDataWhereAll("categories", "categoryId", $cat3[0]['parentId']);
            if (!empty($cat4[0])) {
                if ($cat4[0]['parentId'] == 0) {
                    return $cat4[0]['heading'] . "->" . $cat3[0]['heading'] . "->" . $cat2[0]['heading'] . "->" . $cat1[0]['heading'];
                }
            }
        }
    }
    public static function isJson($string) {
        if (!is_array($string)) {
            json_decode($string);
        }
        return json_last_error() === JSON_ERROR_NONE;
    }
    public static function permissionStaticPage($menuId) {
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
    public static function filterDescriptionForModules($input) {
        $controller = "App\Models\Functions";
        $regex = '/\\{\\{\\$[A-Za-z]+::[A-Za-z]+\\(\\d\\d\\)\\}\\}/i';
        preg_match_all($regex, $input, $m);
        $url = url('/');
        foreach ($m[0] as $module) {
            preg_match_all('!\d+!', $module, $matches);
            $input = $input;
            foreach ($matches[0] as $moduleId) {
                $html = '';
                $fields = array();
                $content = Functions::getDataWhere("modules", "moduleId", $moduleId);
                $menuData = (json_decode($content[0]['moduleData'], true));
                for ($i = 0;$i < count($menuData['fieldType']);$i++) {
                    $menuData['fieldSelectOperator'][$i] = isset($menuData['fieldSelectOperator'][$i]) ? $menuData['fieldSelectOperator'][$i] : "";
                    $fields[] = array("fieldType" => $menuData['fieldType'][$i], "fieldHeading" => $menuData['fieldHeading'][$i], "fieldSortOrder" => $menuData['fieldSortOrder'][$i], "fieldColumn" => $menuData['fieldColumn'][$i], "fieldColumnName" => $menuData['fieldColumnName'][$i], "fieldName" => $menuData['fieldName'][$i], "fieldId" => $menuData['fieldId'][$i], "fieldClass" => $menuData['fieldClass'][$i], "fieldPlaceHolder" => $menuData['fieldPlaceHolder'][$i], "fieldDefaultValue" => $menuData['fieldDefaultValue'][$i], "fieldAttribute" => $menuData['fieldAttribute'][$i], "fieldRequired" => $menuData['fieldRequired'][$i], "fieldValidation" => $menuData['fieldValidation'][$i], "fieldAdditionalAttribute" => $menuData['fieldAdditionalAttribute'][$i], "fieldSelectBoxText" => $menuData['fieldSelectBoxText'][$i], "fieldSelectBoxValue" => $menuData['fieldSelectBoxValue'][$i], "fieldSelectTable" => $menuData['fieldSelectTable'][$i], "fieldSelectIdColumn" => $menuData['fieldSelectIdColumn'][$i], "fieldSelectMainColumn" => $menuData['fieldSelectMainColumn'][$i], "fieldSelectWhere" => $menuData['fieldSelectWhere'][$i], "fieldSelectValue" => $menuData['fieldSelectValue'][$i], "fieldSelectOperator" => $menuData['fieldSelectOperator'][$i], "fieldOrderBy" => $menuData['fieldOrderBy'][$i], "fieldOrderByValue" => $menuData['fieldOrderByValue'][$i], "fieldHeadingBefore" => $menuData['fieldHeadingBefore'][$i],);
                }
                usort($fields, function ($item1, $item2) {
                    return $item1['fieldSortOrder'] <=> $item2['fieldSortOrder'];
                });
                $html .= '<form method="POST" enctype="multipart/form-data" class="frontendDynamicForm" id="frontendDynamicForm' . $moduleId . '">';
                $html .= '<div class="row">';
                $html .= '<input type="hidden" value="' . $content[0]['moduleTable'] . '" name="table">';
                $html .= '<input type="hidden" value="' . $content[0]['moduleName'] . '" name="controllerClassName">';
                $html .= '<input type="hidden" value="' . $content[0]['moduleFirstColumn'] . '" name="tableIdColumn">';
                $html .= '<input type="hidden" value="' . $content[0]['moduleName'] . '" name="page">';
                $html .= '<input type="hidden" value="' . $content[0]['frontendRedirectPage'] . '" name="frontendRedirectPage">';
                $html .= '<input type="hidden" value="' . $content[0]['filedsToReplaceOnMail'] . '" name="filedsToReplaceOnMail">';
                $html .= '<input type="hidden" value="' . $content[0]['sendMailToAdmin'] . '" name="sendMailToAdmin">';
                $html .= '<input type="hidden" value="' . $moduleId . '" name="moduleId">';
                $html .= '<input type="hidden" value="0" name="update_id">';
                $filedTypeText = array("text", "date", "email", "time", "file", "password", "number", "color");
                $i = 0;
                $update_id = 0;
                foreach ($fields as $field) {
                    if (isset($field['fieldHeadingBefore']) AND $field['fieldHeadingBefore'] != '') {
                        $html .= '<div class="col-md-12">';
                        $html .= '<h3>' . $field['fieldHeadingBefore'] . '</h3>';
                        $html .= '</div>';
                    }
                    if ($field['fieldType'] == "hidden") {
                        $html .= '<input class="form-control" type="hidden" name="' . $field['fieldType'] . '" value="' . $field['fieldDefaultValue'] . '">';
                    }
                    else {
                        if ($field['fieldAdditionalAttribute'] == 'hideThisField' || $field['fieldAdditionalAttribute'] == 'hideThisFieldFrontend') {
                            $hideThisField = ' hideThisField';
                        }
                        else {
                            $hideThisField = '';
                        }
                        if ($field['fieldRequired'] == 1 AND $update_id == 0) {
                            $required = 1;
                        }
                        else if ($field['fieldRequired'] == 1 AND $update_id > 0 AND $field['fieldAdditionalAttribute'] != 'notRequiredInEdit') {
                            $required = 1;
                        }
                        else if ($field['fieldRequired'] == 1 AND $update_id > 0 AND $field['fieldAdditionalAttribute'] == 'notRequiredInEdit') {
                            $required = 0;
                        }
                        else {
                            $required = 0;
                        }
                        if ($update_id == 0) {
                            $readonly = 0;
                        }
                        else if ($update_id > 0 AND $field['fieldAdditionalAttribute'] == 'readonlyInEdit') {
                            $readonly = 1;
                        }
                        else {
                            $readonly = 0;
                        }
                        if ($required == 1) {
                            $requiredAttr = 'required';
                        }
                        else {
                            $requiredAttr = '';
                        }
                        if ($readonly == 1) {
                            $readonly = 'readonly';
                        }
                        else {
                            $readonly = '';
                        }
                        if ($field['fieldAttribute'] == 'multiple') {
                            $fieldAttribute = '[]';
                        }
                        else {
                            $fieldAttribute = '';
                        }
                        if ($field['fieldType'] != "password" AND $field['fieldType'] != "file") {
                            $fieldDefaultValue = $field['fieldDefaultValue'];
                        }
                        else {
                            $fieldDefaultValue = '';
                        }
                        if ($required == 1) {
                            $requiredHtml = '<span class="required" style="color:red">*</span>';
                        }
                        else {
                            $requiredHtml = '';
                        }
                        $array = is_array(json_decode($field['fieldDefaultValue'], true)) ? array_values(json_decode($field['fieldDefaultValue'], true)) : array();
                        $html .= '<div class="col-md-' . $field['fieldColumn'] . $hideThisField . '">';
                        $html .= '<div class="mb-3">';
                        $html .= '<label class="form-label">' . $field['fieldHeading'] . $requiredHtml . '</label>';
                        if (in_array($field['fieldType'], $filedTypeText)) {
                            $html .= '<input type="' . $field['fieldType'] . '" placeholder="' . $field['fieldHeading'] . '" name="' . $field['fieldName'] . $fieldAttribute . '" class="form-control ' . $field['fieldClass'] . '' . $required . '" id="' . $field['fieldId'] . '" value="' . $fieldDefaultValue . '" ' . $requiredAttr . ' ' . $readonly . ' ' . $field['fieldAttribute'] . '>';
                            if ($field['fieldType'] == "file") {
                                if ($field['fieldAttribute'] != 'multiple') {
                                    $html .= '<div class="relatedImages">';
                                    if (file_exists($field['fieldDefaultValue'])) {
                                        $extension = explode(".", $field['fieldDefaultValue']);
                                        if ($extension[array_key_last($extension) ] == "jpg" || $extension[array_key_last($extension) ] == "jpeg" || $extension[array_key_last($extension) ] == "png" || $extension[array_key_last($extension) ] == "bmp" || $extension[array_key_last($extension) ] == "jiff") {
                                            $html .= '<div class="relatedImagesDiv">';
                                            $html .= '<div class="imageDiv">';
                                            $html .= '<img src="' . $url . '/' . $field['fieldDefaultValue'] . '"  style="width:100px;height: 100px;border:1px solid #e5e5e5;margin-top:10px;">';
                                            $html .= '<input type="hidden" value="' . $field['fieldDefaultValue'] . '" name="' . $field['fieldName'] . $fieldAttribute . '">';
                                            $html .= '</div>';
                                            $html .= '<div class="btn btn-danger deleteImage" data-image="' . $field['fieldDefaultValue'] . '" style="margin: auto;text-align: center;margin-top: 10px;width:100px;font-size: 12px;">Delete</div>';
                                            $html .= '</div>';
                                        }
                                        else {
                                            $html .= '<a class="btn btn-info" href="' . $url . '/' . $field['fieldDefaultValue'] . '" target="_BLANK" style="margin: auto;text-align: center;margin-top: 10px;width:100px;font-size: 12px;">View</a>';
                                            $html .= '<input type="hidden" value="' . $field['fieldDefaultValue'] . '" name="' . $field['fieldName'] . $fieldAttribute . '">';
                                        }
                                    }
                                    $html .= '</div>';
                                }
                                if ($field['fieldAttribute'] == 'multiple') {
                                    $html .= '<div class="relatedImages">';
                                    $images = json_decode($field['fieldDefaultValue'], true);
                                    if (!empty($images)) {
                                        for ($v = 0;$v < count($images);$v++) {
                                            if (file_exists($images[$v])) {
                                                $html .= '<div class="relatedImagesDiv" style="display: inline-block;">';
                                                $html .= '<div class="imageDiv">';
                                                $html .= '<img src="' . $url . '/' . $images[$v] . '"  style="width:100px;height: 100px;border:1px solid #e5e5e5;margin-top:10px;">';
                                                $html .= '<input type="hidden" value="' . $images[$v] . '" name="' . $field['fieldName'] . $fieldAttribute . '">';
                                                $html .= '</div>';
                                                $html .= '<div class="btn btn-danger deleteImage" data-image="' . $images[$v] . '" style="margin: auto;text-align: center;margin-top: 10px;width:100px;font-size: 12px;">Delete</div>';
                                                $html .= '</div>';
                                            }
                                        }
                                    }
                                    $html .= '</div>';
                                }
                            }
                        }
                        if ($field['fieldType'] == "select") {
                            $html .= '<select name="' . $field['fieldName'] . $fieldAttribute . '" class="form-control ' . $field['fieldClass'] . '' . $required . '" id="' . $field['fieldId'] . '" ' . $requiredAttr . ' ' . $readonly . ' ' . $field['fieldAttribute'] . '>';
                            if ($field['fieldAdditionalAttribute'] != 'removePleaseSelect' AND $field['fieldSelectBoxText'] == '' AND $field['fieldAdditionalAttribute'] != 'hideThisField') {
                                $html .= '<option value="">Please Select</option>';
                            }
                            if ($field['fieldAdditionalAttribute'] != 'autoSuggestive') {
                                if ($field['fieldSelectBoxText'] != '') {
                                    $explodes = explode(",", $field['fieldSelectBoxText']);
                                    $explodesId = explode(",", $field['fieldSelectBoxValue']);
                                    $a = 0;
                                    foreach ($explodes as $explode) {
                                        if ((is_array(json_decode($field['fieldDefaultValue'], true)) AND in_array($explodesId[$a], json_decode($field['fieldDefaultValue'], true)))) {
                                            $selected = 'selected';
                                        }
                                        else {
                                            $selected = '';
                                        }
                                        if ($field['fieldDefaultValue'] == $explodesId[$a]) {
                                            $selected2 = 'selected';
                                        }
                                        else {
                                            $selected2 = '';
                                        }
                                        $html .= '<option ' . $selected . ' ' . $selected2 . ' value="' . $explodesId[$a++] . '">' . $explode . '</option>';
                                    }
                                }
                                if ($field['fieldSelectTable'] != '') {
                                    if ($field['fieldSelectWhere'] != '') {
                                        $slv = ($field['fieldSelectValue'] == "this") ? $update_id : $field['fieldSelectValue'];
                                        $values = $controller::getDataWhereSelectBox($field['fieldSelectTable'], $field['fieldSelectWhere'], $slv, $field['fieldSelectOperator']);
                                    }
                                    else {
                                        $values = $controller::getData($field['fieldSelectTable']);
                                    }
                                    foreach ($values as $value) {
                                        if (in_array($value[$field['fieldSelectIdColumn']], $array)) {
                                            $selected = 'selected';
                                        }
                                        else {
                                            $selected = '';
                                        }
                                        if ($field['fieldDefaultValue'] == $value[$field['fieldSelectIdColumn']]) {
                                            $selected2 = 'selected';
                                        }
                                        else {
                                            $selected2 = '';
                                        }
                                        if ($field['fieldSelectIdColumn'] == "categoryId") {
                                            $html .= '<option ' . $selected . '  ' . $selected2 . ' value="' . $value[$field['fieldSelectIdColumn']] . '">' . App\Models\Functions::getParentCategory($value[$field['fieldSelectIdColumn']]) . '</option>';
                                        }
                                        else {
                                            $txt = '';
                                            foreach (explode(",", $field['fieldSelectMainColumn']) as $ex) {
                                                $txt .= $value[$ex] . "--";
                                            }
                                            $txt = rtrim($txt, "--");
                                            $html .= '<option ' . $selected . '  ' . $selected2 . ' value="' . $value[$field['fieldSelectIdColumn']] . '">' . $txt . '</option>';
                                        }
                                    }
                                }
                            }
                            if ($field['fieldAdditionalAttribute'] == 'autoSuggestive') {
                                if ($update_id == 0) {
                                    $autosuggestive[$field['fieldClass']] = array($field['fieldSelectTable'], $field['fieldSelectIdColumn'], $field['fieldSelectMainColumn']);
                                }
                                else {
                                    if ($field['fieldSelectTable'] != '') {
                                        if ($field['fieldSelectWhere'] != '') {
                                            $values = $controller::getDataWhere($field['fieldSelectTable'], $field['fieldSelectWhere'], $field['fieldSelectValue']);
                                        }
                                        else {
                                            $values = $controller::getData($field['fieldSelectTable']);
                                        }
                                        if ($field['fieldDefaultValue'] == $value[$field['fieldSelectIdColumn']]) {
                                            $selected2 = 'selected';
                                        }
                                        else {
                                            $selected2 = '';
                                        }
                                        foreach ($values as $value) {
                                            $html = '<option ' . $selected . ' ' . $selected2 . ' value="' . $value[$field['fieldSelectIdColumn']] . '">' . $value[$field['fieldSelectMainColumn']] . '</option>';
                                        }
                                    }
                                }
                            }
                            $html .= '</select>';
                        }
                        if ($field['fieldType'] == "textarea" || $field['fieldType'] == "wysiwyg") {
                            $html .= '<textarea class="form-control ' . $field['fieldClass'] . '' . $required . '" placeholder="' . $field['fieldHeading'] . '" name="' . $field['fieldName'] . $fieldAttribute . '" class="form-control ' . $field['fieldClass'] . '' . $required . '" id="' . $field['fieldId'] . '" value="' . $fieldDefaultValue . '" ' . $requiredAttr . ' ' . $readonly . ' ' . $field['fieldAttribute'] . '>' . $fieldDefaultValue . '</textarea>';
                            if ($field['fieldType'] == "wysiwyg") {
                                $html .= '<style type="text/css">';
                                $html .= '.ck.ck-editor__main .ck-content {';
                                $html .= 'height: 250px;';
                                $html .= '}';
                                $html .= '</style>';
                                $html .= '<script>';
                                $html .= 'CKEDITOR.replace( ' . $field['fieldId'] . ' )';
                                $html .= '</script>';
                            }
                        }
                        if ($required == 0) {
                            $field['fieldValidation'] = str_replace('required|', '', $field['fieldValidation']);
                            $field['fieldValidation'] = str_replace('required', '', $field['fieldValidation']);
                        }
                        $html .= '<input type="hidden" name="' . $field['fieldName'] . '_validation" value="' . $field['fieldValidation'] . '">';
                        $html .= '<input type="hidden" name="' . $field['fieldName'] . '_fieldType" value="' . $field['fieldType'] . '">';
                        $html .= '<input type="hidden" name="' . $field['fieldName'] . '_fieldAttribute" value="' . $field['fieldAttribute'] . '">';
                        $html .= '</div>';
                        $html .= '</div>';
                    }
                }
                $html .= '<div style="padding:15px;"><div style="margin-top:20px;" class="btn btn-primary float-right dynamicSubmitButton" id="dynamicSubmitButton' . $moduleId . '">Submit</div></div>';
                $html .= '</div>';
                $html .= '</form>';
                $input = str_replace($module, $html, $input);
            }
        }
        echo $input;
    }
    public static function generateModuleData($moduleId) {
        $controller = "App\Models\Functions";
        $matches[0] = array($moduleId);
        foreach ($matches[0] as $moduleId) {
            $html = '';
            $fields = array();
            $content = Functions::getDataWhere("modules", "moduleId", $moduleId);
            $menuData = (json_decode($content[0]['moduleData'], true));
            for ($i = 0;$i < count($menuData['fieldType']);$i++) {
                $menuData['fieldSelectOperator'][$i] = isset($menuData['fieldSelectOperator'][$i]) ? $menuData['fieldSelectOperator'][$i] : "";
                $fields[] = array("fieldType" => $menuData['fieldType'][$i], "fieldHeading" => $menuData['fieldHeading'][$i], "fieldSortOrder" => $menuData['fieldSortOrder'][$i], "fieldColumn" => $menuData['fieldColumn'][$i], "fieldColumnName" => $menuData['fieldColumnName'][$i], "fieldName" => $menuData['fieldName'][$i], "fieldId" => $menuData['fieldId'][$i], "fieldClass" => $menuData['fieldClass'][$i], "fieldPlaceHolder" => $menuData['fieldPlaceHolder'][$i], "fieldDefaultValue" => $menuData['fieldDefaultValue'][$i], "fieldAttribute" => $menuData['fieldAttribute'][$i], "fieldRequired" => $menuData['fieldRequired'][$i], "fieldValidation" => $menuData['fieldValidation'][$i], "fieldAdditionalAttribute" => $menuData['fieldAdditionalAttribute'][$i], "fieldSelectBoxText" => $menuData['fieldSelectBoxText'][$i], "fieldSelectBoxValue" => $menuData['fieldSelectBoxValue'][$i], "fieldSelectTable" => $menuData['fieldSelectTable'][$i], "fieldSelectIdColumn" => $menuData['fieldSelectIdColumn'][$i], "fieldSelectMainColumn" => $menuData['fieldSelectMainColumn'][$i], "fieldSelectWhere" => $menuData['fieldSelectWhere'][$i], "fieldSelectValue" => $menuData['fieldSelectValue'][$i], "fieldSelectOperator" => $menuData['fieldSelectOperator'][$i], "fieldOrderBy" => $menuData['fieldOrderBy'][$i], "fieldOrderByValue" => $menuData['fieldOrderByValue'][$i], "fieldHeadingBefore" => $menuData['fieldHeadingBefore'][$i],);
            }
            usort($fields, function ($item1, $item2) {
                return $item1['fieldSortOrder'] <=> $item2['fieldSortOrder'];
            });
            $html .= '<form method="POST" enctype="multipart/form-data" class="frontendDynamicForm" id="frontendDynamicForm' . $moduleId . '">';
            $html .= '<div class="row">';
            $html .= '<input type="hidden" value="' . $content[0]['moduleTable'] . '" name="table">';
            $html .= '<input type="hidden" value="' . $content[0]['moduleName'] . '" name="controllerClassName">';
            $html .= '<input type="hidden" value="' . $content[0]['moduleFirstColumn'] . '" name="tableIdColumn">';
            $html .= '<input type="hidden" value="' . $content[0]['moduleName'] . '" name="page">';
            $html .= '<input type="hidden" value="' . $content[0]['frontendRedirectPage'] . '" name="frontendRedirectPage">';
            $html .= '<input type="hidden" value="' . $content[0]['filedsToReplaceOnMail'] . '" name="filedsToReplaceOnMail">';
            $html .= '<input type="hidden" value="' . $content[0]['sendMailToAdmin'] . '" name="sendMailToAdmin">';
            $html .= '<input type="hidden" value="' . $moduleId . '" name="moduleId">';
            $html .= '<input type="hidden" value="0" name="update_id">';
            $filedTypeText = array("text", "date", "email", "time", "file", "password", "number", "color");
            $i = 0;
            $update_id = 0;
            foreach ($fields as $field) {
                if (isset($field['fieldHeadingBefore']) AND $field['fieldHeadingBefore'] != '') {
                    $html .= '<div class="col-md-12">';
                    $html .= '<h3>' . $field['fieldHeadingBefore'] . '</h3>';
                    $html .= '</div>';
                }
                if ($field['fieldType'] == "hidden") {
                    $html .= '<input class="form-control" type="hidden" name="' . $field['fieldType'] . '" value="' . $field['fieldDefaultValue'] . '">';
                }
                else {
                    if ($field['fieldAdditionalAttribute'] == 'hideThisField' || $field['fieldAdditionalAttribute'] == 'hideThisFieldFrontend') {
                        $hideThisField = ' hideThisField';
                    }
                    else {
                        $hideThisField = '';
                    }
                    if ($field['fieldRequired'] == 1 AND $update_id == 0) {
                        $required = 1;
                    }
                    else if ($field['fieldRequired'] == 1 AND $update_id > 0 AND $field['fieldAdditionalAttribute'] != 'notRequiredInEdit') {
                        $required = 1;
                    }
                    else if ($field['fieldRequired'] == 1 AND $update_id > 0 AND $field['fieldAdditionalAttribute'] == 'notRequiredInEdit') {
                        $required = 0;
                    }
                    else {
                        $required = 0;
                    }
                    if ($update_id == 0) {
                        $readonly = 0;
                    }
                    else if ($update_id > 0 AND $field['fieldAdditionalAttribute'] == 'readonlyInEdit') {
                        $readonly = 1;
                    }
                    else {
                        $readonly = 0;
                    }
                    if ($required == 1) {
                        $requiredAttr = 'required';
                    }
                    else {
                        $requiredAttr = '';
                    }
                    if ($readonly == 1) {
                        $readonly = 'readonly';
                    }
                    else {
                        $readonly = '';
                    }
                    if ($field['fieldAttribute'] == 'multiple') {
                        $fieldAttribute = '[]';
                    }
                    else {
                        $fieldAttribute = '';
                    }
                    if ($field['fieldType'] != "password" AND $field['fieldType'] != "file") {
                        $fieldDefaultValue = $field['fieldDefaultValue'];
                    }
                    else {
                        $fieldDefaultValue = '';
                    }
                    if ($required == 1) {
                        $requiredHtml = '<span class="required" style="color:red">*</span>';
                    }
                    else {
                        $requiredHtml = '';
                    }
                    $array = is_array(json_decode($field['fieldDefaultValue'], true)) ? array_values(json_decode($field['fieldDefaultValue'], true)) : array();
                    $html .= '<div class="col-md-' . $field['fieldColumn'] . $hideThisField . '">';
                    $html .= '<div class="mb-3">';
                    $html .= '<label class="form-label">' . $field['fieldHeading'] . $requiredHtml . '</label>';
                    if (in_array($field['fieldType'], $filedTypeText)) {
                        $html .= '<input type="' . $field['fieldType'] . '" placeholder="' . $field['fieldHeading'] . '" name="' . $field['fieldName'] . $fieldAttribute . '" class="form-control ' . $field['fieldClass'] . '' . $required . '" id="' . $field['fieldId'] . '" value="' . $fieldDefaultValue . '" ' . $requiredAttr . ' ' . $readonly . ' ' . $field['fieldAttribute'] . '>';
                        if ($field['fieldType'] == "file") {
                            if ($field['fieldAttribute'] != 'multiple') {
                                $html .= '<div class="relatedImages">';
                                if (file_exists($field['fieldDefaultValue'])) {
                                    $extension = explode(".", $field['fieldDefaultValue']);
                                    if ($extension[array_key_last($extension) ] == "jpg" || $extension[array_key_last($extension) ] == "jpeg" || $extension[array_key_last($extension) ] == "png" || $extension[array_key_last($extension) ] == "bmp" || $extension[array_key_last($extension) ] == "jiff") {
                                        $html .= '<div class="relatedImagesDiv">';
                                        $html .= '<div class="imageDiv">';
                                        $html .= '<img src="' . $url . '/' . $field['fieldDefaultValue'] . '"  style="width:100px;height: 100px;border:1px solid #e5e5e5;margin-top:10px;">';
                                        $html .= '<input type="hidden" value="' . $field['fieldDefaultValue'] . '" name="' . $field['fieldName'] . $fieldAttribute . '">';
                                        $html .= '</div>';
                                        $html .= '<div class="btn btn-danger deleteImage" data-image="' . $field['fieldDefaultValue'] . '" style="margin: auto;text-align: center;margin-top: 10px;width:100px;font-size: 12px;">Delete</div>';
                                        $html .= '</div>';
                                    }
                                    else {
                                        $html .= '<a class="btn btn-info" href="' . $url . '/' . $field['fieldDefaultValue'] . '" target="_BLANK" style="margin: auto;text-align: center;margin-top: 10px;width:100px;font-size: 12px;">View</a>';
                                        $html .= '<input type="hidden" value="' . $field['fieldDefaultValue'] . '" name="' . $field['fieldName'] . $fieldAttribute . '">';
                                    }
                                }
                                $html .= '</div>';
                            }
                            if ($field['fieldAttribute'] == 'multiple') {
                                $html .= '<div class="relatedImages">';
                                $images = json_decode($field['fieldDefaultValue'], true);
                                if (!empty($images)) {
                                    for ($v = 0;$v < count($images);$v++) {
                                        if (file_exists($images[$v])) {
                                            $html .= '<div class="relatedImagesDiv" style="display: inline-block;">';
                                            $html .= '<div class="imageDiv">';
                                            $html .= '<img src="' . $url . '/' . $images[$v] . '"  style="width:100px;height: 100px;border:1px solid #e5e5e5;margin-top:10px;">';
                                            $html .= '<input type="hidden" value="' . $images[$v] . '" name="' . $field['fieldName'] . $fieldAttribute . '">';
                                            $html .= '</div>';
                                            $html .= '<div class="btn btn-danger deleteImage" data-image="' . $images[$v] . '" style="margin: auto;text-align: center;margin-top: 10px;width:100px;font-size: 12px;">Delete</div>';
                                            $html .= '</div>';
                                        }
                                    }
                                }
                                $html .= '</div>';
                            }
                        }
                    }
                    if ($field['fieldType'] == "select") {
                        $html .= '<select name="' . $field['fieldName'] . $fieldAttribute . '" class="form-control select2 ' . $field['fieldClass'] . '' . $required . '" id="' . $field['fieldId'] . '" ' . $requiredAttr . ' ' . $readonly . ' ' . $field['fieldAttribute'] . '>';
                        if ($field['fieldAdditionalAttribute'] != 'removePleaseSelect' AND $field['fieldSelectBoxText'] == '' AND $field['fieldAdditionalAttribute'] != 'hideThisField') {
                            $html .= '<option value="">Please Select</option>';
                        }
                        if ($field['fieldAdditionalAttribute'] != 'autoSuggestive') {
                            if ($field['fieldSelectBoxText'] != '') {
                                $explodes = explode(",", $field['fieldSelectBoxText']);
                                $explodesId = explode(",", $field['fieldSelectBoxValue']);
                                $a = 0;
                                foreach ($explodes as $explode) {
                                    if ((is_array(json_decode($field['fieldDefaultValue'], true)) AND in_array($explodesId[$a], json_decode($field['fieldDefaultValue'], true)))) {
                                        $selected = 'selected';
                                    }
                                    else {
                                        $selected = '';
                                    }
                                    if ($field['fieldDefaultValue'] == $explodesId[$a]) {
                                        $selected2 = 'selected';
                                    }
                                    else {
                                        $selected2 = '';
                                    }
                                    $html .= '<option ' . $selected . ' ' . $selected2 . ' value="' . $explodesId[$a++] . '">' . $explode . '</option>';
                                }
                            }
                            if ($field['fieldSelectTable'] != '') {
                                if ($field['fieldSelectWhere'] != '') {
                                    $slv = ($field['fieldSelectValue'] == "this") ? $update_id : $field['fieldSelectValue'];
                                    $values = $controller::getDataWhereSelectBox($field['fieldSelectTable'], $field['fieldSelectWhere'], $slv, $field['fieldSelectOperator']);
                                }
                                else {
                                    $values = $controller::getData($field['fieldSelectTable']);
                                }
                                foreach ($values as $value) {
                                    if (in_array($value[$field['fieldSelectIdColumn']], $array)) {
                                        $selected = 'selected';
                                    }
                                    else {
                                        $selected = '';
                                    }
                                    if ($field['fieldDefaultValue'] == $value[$field['fieldSelectIdColumn']]) {
                                        $selected2 = 'selected';
                                    }
                                    else {
                                        $selected2 = '';
                                    }
                                    if ($field['fieldSelectIdColumn'] == "categoryId") {
                                        $html .= '<option ' . $selected . '  ' . $selected2 . ' value="' . $value[$field['fieldSelectIdColumn']] . '">' . Functions::getParentCategory($value[$field['fieldSelectIdColumn']]) . '</option>';
                                    }
                                    else {
                                        $txt = '';
                                        foreach (explode(",", $field['fieldSelectMainColumn']) as $ex) {
                                            $txt .= $value[$ex] . "--";
                                        }
                                        $txt = rtrim($txt, "--");
                                        $html .= '<option ' . $selected . '  ' . $selected2 . ' value="' . $value[$field['fieldSelectIdColumn']] . '">' . $txt . '</option>';
                                    }
                                }
                            }
                        }
                        if ($field['fieldAdditionalAttribute'] == 'autoSuggestive') {
                            if ($update_id == 0) {
                                $autosuggestive[$field['fieldClass']] = array($field['fieldSelectTable'], $field['fieldSelectIdColumn'], $field['fieldSelectMainColumn']);
                            }
                            else {
                                if ($field['fieldSelectTable'] != '') {
                                    if ($field['fieldSelectWhere'] != '') {
                                        $values = $controller::getDataWhere($field['fieldSelectTable'], $field['fieldSelectWhere'], $field['fieldSelectValue']);
                                    }
                                    else {
                                        $values = $controller::getData($field['fieldSelectTable']);
                                    }
                                    if ($field['fieldDefaultValue'] == $value[$field['fieldSelectIdColumn']]) {
                                        $selected2 = 'selected';
                                    }
                                    else {
                                        $selected2 = '';
                                    }
                                    foreach ($values as $value) {
                                        $html = '<option ' . $selected . ' ' . $selected2 . ' value="' . $value[$field['fieldSelectIdColumn']] . '">' . $value[$field['fieldSelectMainColumn']] . '</option>';
                                    }
                                }
                            }
                        }
                        $html .= '</select>';
                    }
                    if ($field['fieldType'] == "textarea" || $field['fieldType'] == "wysiwyg") {
                        $html .= '<textarea class="form-control ' . $field['fieldClass'] . '' . $required . '" placeholder="' . $field['fieldHeading'] . '" name="' . $field['fieldName'] . $fieldAttribute . '" class="form-control ' . $field['fieldClass'] . '' . $required . '" id="' . $field['fieldId'] . '" value="' . $fieldDefaultValue . '" ' . $requiredAttr . ' ' . $readonly . ' ' . $field['fieldAttribute'] . '>' . $fieldDefaultValue . '</textarea>';
                        if ($field['fieldType'] == "wysiwyg") {
                            $html .= '<style type="text/css">';
                            $html .= '.ck.ck-editor__main .ck-content {';
                            $html .= 'height: 250px;';
                            $html .= '}';
                            $html .= '</style>';
                            $html .= '<script>';
                            $html .= 'CKEDITOR.replace( ' . $field['fieldId'] . ' )';
                            $html .= '</script>';
                        }
                    }
                    if ($required == 0) {
                        $field['fieldValidation'] = str_replace('required|', '', $field['fieldValidation']);
                        $field['fieldValidation'] = str_replace('required', '', $field['fieldValidation']);
                    }
                    $html .= '<input type="hidden" name="' . $field['fieldName'] . '_validation" value="' . $field['fieldValidation'] . '">';
                    $html .= '<input type="hidden" name="' . $field['fieldName'] . '_fieldType" value="' . $field['fieldType'] . '">';
                    $html .= '<input type="hidden" name="' . $field['fieldName'] . '_fieldAttribute" value="' . $field['fieldAttribute'] . '">';
                    $html .= '</div>';
                    $html .= '</div>';
                }
            }
            $html .= '<div style="padding:15px;"><div style="margin-top:20px;" class="btn btn-primary float-right dynamicSubmitButton" id="dynamicSubmitButton' . $moduleId . '">Submit</div></div>';
            $html .= '</div>';
            $html .= '</form>';
        }
        echo $html;
    }
    public static function image($image) {
        if (file_exists($image)) {
            return url('/') . '/' . $image;
        }
        else {
            return url('/') . '/assets/no-image.png';
        }
    }
    public static function message($message) {
        $check = Functions::getDataWhere("messages", "message", $message);
        if (empty($check[0])) {
            DB::insert("INSERT INTO messages SET message='" . ucwords($message) . "'");
            return ucwords($message);
        }
        else {
            $language = strtolower(Session::get("languageId"));
            if ($language == 'english') {
                $language = 'message';
            }
            $check = Functions::getDataWhere("messages", "message", ucwords($message));
            if ($check[0][$language] == "") {
                return ucwords($message);
            }
            else {
                return ucwords($check[0][$language]);
            }
        }
    }
    public static function getToken($length) {
        $token = "";
        $codeAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        $codeAlphabet .= "abcdefghijklmnopqrstuvwxyz";
        $codeAlphabet .= "0123456789";
        $max = strlen($codeAlphabet); // edited
        for ($i = 0;$i < $length;$i++) {
            $token .= $codeAlphabet[Functions::crypto_rand_secure(0, $max - 1) ];
        }
        return $token;
    }
    public static function crypto_rand_secure($min, $max) {
        $range = $max - $min;
        if ($range < 1) return $min; // not so random...
        $log = ceil(log($range, 2));
        $bytes = (int)($log / 8) + 1; // length in bytes
        $bits = (int)$log + 1; // length in bits
        $filter = (int)(1 << $bits) - 1; // set all lower bits to 1
        do {
            $rnd = hexdec(bin2hex(openssl_random_pseudo_bytes($bytes)));
            $rnd = $rnd & $filter; // discard irrelevant bits
            
        } while ($rnd > $range);
        return $min + $rnd;
    }
    public static function getTaxAmountByProductId($productId,$field,$customePriceCost = false,$product = false) {
        $productFromDb = Functions::getDataWhere("products","productId",$productId)[0];
        if($product != false){
            $product = $product[0];
        }else{
            $product = $productFromDb;
        }
        if($customePriceCost != false){
            $product[$field] = $customePriceCost;
        }
        $pro['taxInclusiveValue'] = 0;
        $pro['taxExclusiveValue'] = 0;
        $pro['tax'] = 0;
        $pro['taxHeading'] = "";
        $pro['taxPercent'] = 0;
        $pro['basePriceCost'] = 0;
        if($product['taxId'] > 0){
            $taxData = Functions::getDataWhere("taxes","taxId",$product['taxId'])[0];
            if($product['taxType']=='Exclusive'){
                $pro['taxInclusiveValue'] = 0;
                $pro['taxExclusiveValue'] = ($taxData['percent'] / 100) * $product[$field];
                $pro['tax'] = $pro['taxExclusiveValue'];
                $pro['basePriceCost'] = $product[$field];
            }else{
                $pro['taxInclusiveValue'] = $product[$field] - ($product[$field] * (100/(100 + $taxData['percent'])));
                $pro['taxExclusiveValue'] = 0;
                $pro['tax'] = $pro['taxInclusiveValue'];
                $pro['basePriceCost'] = $product[$field] - $pro['taxInclusiveValue'];
            } 
            $pro['taxHeading'] = $taxData['heading'];
            $pro['taxPercent'] = $taxData['percent'];
        }
        return $pro;
    }
}