<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Functions;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
Use Session;
Use Config;

class ModuleController extends Controller{

    public $settings;
    public function __construct(){
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

    public static function getCurrencySymbol() {
        $globalSettings = Functions::settings();
        return Functions::getDataWhere("currencies", "currencyId",$globalSettings['defaultCurrency'])[0]['symbol'];
    }
    public function modules(Request $request){
        $userId = $request->session()->get('userId');
        if($userId==""){
            return redirect('/admin/login');
        }
        $data['controller'] = $this;
        $segments = request()->segments();
        $lastSegment  = end($segments);
        $data['content'] = array();

        if($lastSegment=="add"){

            $data['update_id'] = 0;
            $data['content']['moduleName'] = "";
            $data['content']['moduleTable'] = "";
            $data['content']['moduleFirstColumn'] = "";
            $data['content']['pageHeading'] = "";
            $data['content']['sortOrder'] = "0";
            $data['content']['hideAdd'] = "0";
            $data['content']['hideEdit'] = "0";
            $data['content']['hideDelete'] = "0";
            $data['content']['hideAction'] = "0";
            $data['content']['extraButtons'] = "";
            $data['content']['submitCodeBefore'] = "";
            $data['content']['submitCodeAfter'] = "";
            $data['content']['extraActionOnDeleteButton'] = "";
            $data['content']['status'] = "";
            $data['content']['moduleData'] = "";
            $data['content']['additionalText'] = "";
            $data['content']['filedsToReplaceOnMail'] = "";
            $data['content']['sendMailToAdmin'] = "";
            $data['content']['copyTable'] = "";
            $data['content']['dataOfColumnToSkip'] = "";
            $data['content']['autoIncreamentColumn'] = "";
            $data['content']['addButtonText'] = "";
            $data['content']['copyButtonText'] = "";
            $data['content']['menus'] = Functions::getDataOrderBy("menus","menuHeading","ASC");
            $data['content']['tables'] = Functions::showAllDbTables();

        }else if(is_numeric($lastSegment)){

            $data['update_id'] = $lastSegment;
            $module = Functions::getDataWhere("modules","moduleId",$lastSegment)[0];
            $data['content']['moduleName'] = $module['moduleName'];
            $data['content']['moduleTable'] = $module['moduleTable'];
            $data['content']['moduleFirstColumn'] = $module['moduleFirstColumn'];
            $data['content']['pageHeading'] = $module['pageHeading'];
            $data['content']['sortOrder'] = $module['sortOrder'];
            $data['content']['hideAdd'] = $module['hideAdd'];
            $data['content']['hideEdit'] = $module['hideEdit'];
            $data['content']['hideDelete'] = $module['hideDelete'];
            $data['content']['hideAction'] = $module['hideAction'];
            $data['content']['extraButtons'] = base64_decode($module['extraButtons']);
            $data['content']['submitCodeBefore'] = base64_decode($module['submitCodeBefore']);
            $data['content']['submitCodeAfter'] = base64_decode($module['submitCodeAfter']);
            $data['content']['extraActionOnDeleteButton'] = base64_decode($module['extraActionOnDeleteButton']);
            $data['content']['status'] = $module['status'];
            $data['content']['parentMenu'] = $module['parentMenu'];
            $data['content']['moduleData'] = $module['moduleData'];
            $data['content']['additionalText'] = $module['additionalText'];
            $data['content']['filedsToReplaceOnMail'] = $module['filedsToReplaceOnMail'];
            $data['content']['sendMailToAdmin'] = $module['sendMailToAdmin'];
            $data['content']['copyTable'] = $module['copyTable'];
            $data['content']['dataOfColumnToSkip'] = $module['dataOfColumnToSkip'];
            $data['content']['autoIncreamentColumn'] = $module['autoIncreamentColumn'];
            $data['content']['addButtonText'] = $module['addButtonText'];
            $data['content']['copyButtonText'] = $module['copyButtonText'];
            $data['content']['menus'] = Functions::getDataOrderBy("menus","menuHeading","ASC");
            $data['content']['tables'] = Functions::showAllDbTables();
            $data['content']['filters'] = json_decode($module['filters'],true);

        }else{

            $data['update_id'] = 0;

        }

        $data['settings'] = $this->settings;
        $data['method'] = "Modules";
        $data['controller'] = $this;

        if($lastSegment=="add" || is_numeric($lastSegment)){
            return view('admin.addmodule')->with($data);
        }else{
            return view('admin.modules')->with($data);
        }
        
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
    public static function getDataOrderBy($table, $where, $value) {
        return Functions::getDataOrderBy($table, $where, $value);
    }
    public static function getDataWhereFilter($value) {
        $query = DB::select("SELECT * FROM filters WHERE fieldNameReadonly='".$value."'");
        $query = Functions::arrayConvert($query);
        return $query;
    }
    public function manage(Request $request){
        $userId = $request->session()->get('userId');
        if($userId==""){
            return redirect('/admin/login');
        }
        $segments = request()->segments();
        $lastSegment  = end($segments);
        $columns = Functions::columnNames("modules");
        $data['settings'] = $this->settings;
        $data['controller'] = $this;
        $data['update_id'] = $lastSegment;
        $content = Functions::getDataWhere('modules', "moduleId", $lastSegment);
        if (!$content) {
            return redirect('/admin/modules');
        }
        foreach ($columns as $column) {
            $data['content'][$column['Field']] = $content[0][$column['Field']];
        }
        $data['columns'] = Functions::columnNames($content[0]['moduleTable']);
        $data['showAllDbTables'] = Functions::showAllDbTables();
        $data['moduleDetail'] = Functions::getDataWhere("modules", "moduleId", $lastSegment);

        $data['tableName'] = $content[0]['moduleTable'];
        $data['method'] = "ManageModule";
        $data['controller'] = $this;
        $data['moduleFieldDetail'] = ($content[0]['moduleData'] != "") ? json_decode($content[0]['moduleData'], true) : array();
        if (empty($data['moduleFieldDetail'])) {
            $data['moduleFieldDetail'] = array();
            $data['moduleFieldDetail']['foreignTable'] = array();
            $data['moduleFieldDetail']['columnName'] = array();
            $data['moduleFieldDetail']['columnCustomName'] = array();
            $data['moduleFieldDetail']['foreignColumnShow'] = array();
            $data['moduleFieldDetail']['foreignColumn'] = array();
            $data['moduleFieldDetail']['foreignTableColumnDetail'] = array();
        }
        foreach ($data['moduleFieldDetail']['foreignTable'] as $table) {
            if ($table != "") {
                $fields = array();
                foreach (Functions::columnNames($table) as $columnName) {
                    $fields[] = $columnName['Field'];
                }
                $data['moduleFieldDetail']['foreignTableColumnDetail'][] = implode(",", $fields);
            } else {
                $data['moduleFieldDetail']['foreignTableColumnDetail'][] = "";
            }
        }
        if ($lastSegment != "") {
            $data['pageName'] = $lastSegment;
        } else {
            $data['pageName'] = 0;
        }
        return view('admin.manage')->with($data);
    }
    public function dataTableModule(Request $request){
        $table = "modules";
        $orderColumn = array("moduleId", "moduleName", "moduleTable", "moduleFirstColumn", "moduleData");
        $sql = "SELECT * FROM modules";
        if(isset($_POST['search']['value']) AND $_POST['search']['value']!=""){
            $sql .= " WHERE moduleName LIKE '%".$_POST['search']['value']."%'";
            $sql .= " OR moduleName LIKE '%".$_POST['search']['value']."%'";
            $sql .= " OR moduleTable LIKE '%".$_POST['search']['value']."%'";
            $sql .= " OR moduleFirstColumn LIKE '%".$_POST['search']['value']."%'";
        }
        if (isset($_POST['order'])) {
            $sql .= " ORDER BY ".$orderColumn[$_POST['order'][0]['column']]." ".$_POST['order'][0]['dir'];
        } else {
            $sql .= " ORDER BY moduleId DESC";
        }
        if ($_POST['length'] != - 1) {
            $sql .= " LIMIT ".$_POST['length']." OFFSET ".$_POST['start'];
        }
        $modules = DB::select($sql);
        $data = array();
        $i = 1;
        foreach ($modules as $row) {
            $subArray = array();
            $subArray[] = $row->moduleId;
            $subArray[] = $row->moduleName;
            $subArray[] = $row->moduleTable;
            $subArray[] = $row->moduleFirstColumn;
            $subArray[] = $row->pageHeading;
            $button = '<div class="pull-right"><a class="btn btn-info" href="' . url("/") . '/admin/modules/manage/' . $row->moduleId . '">M</a>';
            $button.= '<a class="btn btn-warning" style="margin-left:5px;"  href="' . url("/") . '/admin/modules/add/' . $row->moduleId . '">E</a>';
            $button.= '<div class="btn btn-danger delete" style="margin-left:5px;" data-page="modules" data-id="' . $row->moduleId . '" data-column="moduleId">D</a></div>';
            $subArray[] = $button;
            $data[] = $subArray;
            $i++;
        }
        $count = Functions::count("modules");
        $numRows = $count;
        $allResults = $count;
        $output = array('draw' => intval($_POST['draw']), 'recordsTotal' => $numRows, 'recordsFiltered' => $allResults, 'data' => $data);
        echo json_encode($output);
    }
    public static function getUpperCasePosition($string) {
        return Functions::getUpperCasePosition($string);
    }
    public static function columnNames($table) {
        return Functions::columnNames($table);
    }
    public static function getColumnByTableName() {
        echo json_encode(Functions::columnNames($_POST['tableName']));
    }
    public static function showAllDbTables() {
        return Functions::showAllDbTables();
    }
    public static function changeSortOrder() {
        $updateId = $_POST['updateId'];
        $table = $_POST['table'];
        $tableidcolumn = $_POST['tableidcolumn'];
        $value = $_POST['value'];
        DB::update("UPDATE $table SET sortOrder=$value WHERE $tableidcolumn = $updateId");
        echo json_encode(array("status"=>"success"));
    }
    public function truncatingTable() {
        $table = $_POST['table'];
        DB::table($table)->truncate();
        echo json_encode(array("status"=>"success"));
    }
    public static function changeFeatured() {
        $updateId = $_POST['updateId'];
        $table = $_POST['table'];
        $tableidcolumn = $_POST['tableidcolumn'];
        $value = $_POST['value'];
        DB::update("UPDATE $table SET featured='".$value."' WHERE $tableidcolumn = $updateId");
        echo json_encode(array("status"=>"success"));
    }
    public function setPagesFields() {
        $array['table'] = "modules";
        $array['where_column'] = "moduleId";
        $array['update_id'] = $_POST['moduleId'];
        unset($_POST['_token']);
        $addMore = $_POST['addMore'];
        unset($_POST['addMore']);
        $count = count($addMore['addMoreFieldHeading']);
        for($i=0;$i<$count;$i++){
            if($addMore['addMoreFieldHeading'][$i]!=""){
                $_POST['addMore']['addMoreFieldType'][] = $addMore['addMoreFieldType'][$i];
                $_POST['addMore']['addMoreFieldRequired'][] = $addMore['addMoreFieldRequired'][$i];
                $_POST['addMore']['addMoreFieldHeading'][] = $addMore['addMoreFieldHeading'][$i];
                $_POST['addMore']['addMoreFieldName'][] = $addMore['addMoreFieldName'][$i];
                $_POST['addMore']['addMoreFieldId'][] = $addMore['addMoreFieldId'][$i];
                $_POST['addMore']['addMoreFieldClass'][] = $addMore['addMoreFieldClass'][$i];
                $_POST['addMore']['addMoreFieldPlaceholder'][] = $addMore['addMoreFieldPlaceholder'][$i];
                $_POST['addMore']['addMoreFieldDefaultValue'][] = $addMore['addMoreFieldDefaultValue'][$i];
                $_POST['addMore']['addMoreColumn'][] = $addMore['addMoreColumn'][$i];
                $_POST['addMore']['addMoreSortOrder'][] = $addMore['addMoreSortOrder'][$i];
                $_POST['addMore']['addMoreDbColumn'][] = $addMore['addMoreDbColumn'][$i];
                $_POST['addMore']['addMoreSelectTable'][] = $addMore['addMoreSelectTable'][$i];
                $_POST['addMore']['addMoreSelectIdColumn'][] = $addMore['addMoreSelectIdColumn'][$i];
                $_POST['addMore']['addMoreSelectMainColumn'][] = $addMore['addMoreSelectMainColumn'][$i];
                $_POST['addMore']['addMoreSelectWhere'][] = $addMore['addMoreSelectWhere'][$i];
                $_POST['addMore']['addMoreSelectValue'][] = $addMore['addMoreSelectValue'][$i];
                $_POST['addMore']['addMoreSelectCustomText'][] = $addMore['addMoreSelectCustomText'][$i];
                $_POST['addMore']['addMoreSelectCustomValue'][] = $addMore['addMoreSelectCustomValue'][$i];
                $_POST['addMore']['addMoreValidation'][] = $addMore['addMoreValidation'][$i];
            }
        }
        $array['moduleData'] = $_POST;
        if($_POST['filterWorkingCondition']!=''){
            DB::update("UPDATE filters SET filterWorkingCondition='".$_POST['filterWorkingCondition']."' WHERE filterModuleId='".$_POST['moduleId']."'");
        }else{
            $_POST['filterWorkingCondition'] = "OR";
            DB::update("UPDATE filters SET filterWorkingCondition='".$_POST['filterWorkingCondition']."' WHERE filterModuleId='".$_POST['moduleId']."'");
        }
        echo json_encode(Functions::setData("modules", $array));
    }
    public static function message($messageId) {
        return Functions::message($messageId);
    }
    public function copyTableData() {
        $dataToCopied = rtrim($_POST['string'], ",");
        $dataToCopied = explode(",",$dataToCopied);
        $array = implode("','",$dataToCopied);
        $table = $_POST['table'];
        $moduleFirstColumn = $_POST['moduleFirstColumn'];
        $module = Functions::getDataWhere("modules","moduleId",$_POST['moduleId'])[0];
        $results = DB::select("SELECT * FROM `".$table."` WHERE ".$moduleFirstColumn." IN ('".$array."')");
        $results = Functions::arrayConvert($results);
        foreach($results as $result){
            foreach($result as $k=>$v){
                if($moduleFirstColumn != $k AND !in_array($k,explode(",", $module['dataOfColumnToSkip']))){
                    if(in_array($k,explode(",", $module['autoIncreamentColumn']))){
                        $getMax = DB::select("SELECT MAX($k) as max FROM `".$table."` WHERE storeId='".Session::get('storeId')."'");
                        $getMax = Functions::arrayConvert($getMax);
                        $resultToCopy[$k] = $getMax[0]['max']+1;
                    }else{
                        $resultToCopy[$k] = $v;
                    }
                }
            }
            Functions::setData($table,$resultToCopy);
        }
        echo json_encode(array("staus"=>"success"));
    }
}
