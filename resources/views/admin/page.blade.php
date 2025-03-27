@extends('admin.common.main')
@section('main-container')
<div class="page-body">
   <div class="container-fluid list-products">
      <div class="row">
         <div class="col-sm-12">
            <div class="card">
               <div class="container-fluid">
                  <div class="page-title">
                     <div class="row">
                        <div class="col-12 col-sm-6">
                           <h3>{{$controller::message($controllerHeading)}}</h3>
                           @if(!$controller::checkIfColumnExists($menuData['tableName'], "softDelete") AND isset($menuData['listViewSoftDelete']) AND $menuData['listViewSoftDelete']=='Yes')
                           <br>
                           <h5 style="color:red">Soft Delete (Column Name : softDelete) is enabled for this module but table doesnt have that column in database</h5>
                           @endif
                        </div>
                        @if(Session::get("storeId")=='' AND in_array($menuData['tableName'],explode(",",$settings['hideAddEditDeleteIfNoStoreSelected'])))
                        @php($hideAdd=1)
                        @php($hideAction=1)
                        <div class="col-12 col-sm-6">
                           <h5 style="color:red" class="pull-right">Please select store from top to add edit this page.</h5>
                        </div>
                        @endif
                        @if($hideAdd==0)
                        <div class="col-12 col-sm-6">
                           <a href="{{url("/")}}/admin/inner/<?php echo $controllerClassName;?>/add" class="btn btn-primary jicrlyhywf pull-right">{{ ($addButtonText!='')?$addButtonText:'+' }}</a>
                           @if($copyTable == 'Yes')
                           <a href="javascript:void(0)" class="btn btn-info pull-right xyfiykkfkf" data-table="{{$tableName}}" data-moduleId="{{$moduleId}}" data-moduleFirstColumn="{{$tableIdColumn}}" style="margin-right:10px;">{{ ($copyButtonText!='')?$copyButtonText:'<i class="fa fa-files-o" aria-hidden="true"></i>' }}</a>
                           @endif
                        </div>
                        @endif
                        @include('admin.common.inner-filter')
                     </div>
                  </div>
               </div>
               <div class="card-body">
                  <table class="table table-bordered table-responsive" id="myDataTable">
                     <thead>
                        <?php $count = count((is_countable($modules['columnNameHeading'])?$modules['columnNameHeading']:[]))?>
                        <?php 
                        if($copyTable == 'Yes'){
                           $width = 100/($count+2);
                        }else{
                           $width = 100/($count+1);
                        }
                        ?>
                        <?php for($i=0;$i<$count;$i++){ ?>
                           @if($copyTable == 'Yes')
                              @if($i == 0)
                                 <th class="no-sort" width="<?php echo $width;?>%"><input type="checkbox" class="pznltryfem" id="selectAllCheckbox"></th>
                              @endif
                           @endif
                        <?php
                           $val = $modules['columnNameHeading'][$i];
                           if(!empty($menuData['tableColumnMerge'])){
                                           for($v = 0;$v < count($menuData['tableColumnMerge']);$v++){
                                               if($menuData['columnName'][$i]==$menuData['tableColumnMerge'][$v]){
                                                   $val .= " / ".$menuData['columnCustomName'][$v];
                                               }
                                           }
                                           }
                                          ?>
                        <th width="<?php echo $width;?>%"><?php echo $val;?></th>
                        <?php } ?>
                        <?php if($hideAction==0){?>
                        <th width="<?php echo $width;?>%" align="right">
                           <div align="right">{{$controller::message("Action")}}</div>
                        </th>
                        <?php } ?>
                     </thead>
                  </table>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
@if($hideAction==1)
@php($action = 1)
@else
@php($action = 0)
@endif
<script type="text/javascript">
   var controllerName = "<?php echo $controllerClassName;?>";
   var copyTable = "<?php echo $copyTable;?>";
   var tableName = "<?php echo $tableName;?>";
   var tableIdColumn = "<?php echo $tableIdColumn;?>";
   var moduleId = "<?php echo $moduleId;?>";
   <?php if ($moduleId != 20) {?>
   var countColumns = "<?php echo ($i+1)-$action;?>";
   <?php }else{ ?>
   var countColumns = "<?php echo $i-$action;?>";
   <?php } ?>
   var dataTableStatus = "1";
   var filterFields = "1";
</script>
@endsection