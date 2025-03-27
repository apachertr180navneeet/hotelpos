@extends('admin.common.main')
@section('main-container')
<div class="page-body" style="margin-top:100px;">
   <div class="container-fluid">
      <div class="edit-profile">
         <div class="row">
            <div class="col-xl-12">
               <div>
                  <h5 style="color:red;padding:15px;">
                     Required Columns In Table<br><br>softDelete, status, updatedBy, insertedBy, dateAdded, dateUpdated, sortOrder
                  </h5>
               </div>
               <form class="card" method="POST" action="" id="createFieldsForm">
                  <input type="hidden" value="<?php echo $update_id;?>" name="moduleId">
                  <input type="hidden" value="{{csrf_token()}}" name="_token">
                  <input type="hidden" value="{{$tableName}}" name="tableName" class="tableName">
       
                  <table class="table table-bordered">
                     <tr>
                        <td width="2%"><strong>Sno</strong></td>
                        <td width="9.80%"><strong>Column Name</strong></td>
                        <td width="9.80%"><strong>Column Heading</strong></td>
                        <td width="9.80%"><strong>Foreign Key</strong></td>
                        <td width="9.80%"><strong>Foreign Table/Column</strong></td>
                        <td width="9.80%"><strong>Show</strong></td>
                        <td width="9.80%"><strong>Type</strong></td>
                        <td width="9.80%"><strong>Sort Order</strong></td>
                        <td width="9.80%"><strong>Merge</strong></td>
                        <td width="9.80%"><strong>Filter</strong></td>
                     </tr>
                     <?php $i=1;foreach($columns as $table){ ?>
                     <?php
                        $key = array_search($table['Field'], $moduleFieldDetail['columnName']);
                        $dbTableName = $table['Field'];
                        ?>
                     <tr>
                        <td><strong><?php echo $i;?></strong></td>
                        <td><input class="form-control" name="columnName[]" type="text" value="<?php echo $table['Field'];?>" readonly="readonly"></td>
                        <td><input class="form-control" name="columnCustomName[]" type="text" value="<?php echo (isset($moduleFieldDetail['columnCustomName'][$key]) AND $moduleFieldDetail['columnCustomName'][$key]!="" AND $key!="")?$moduleFieldDetail['columnCustomName'][$key]:$controller::getUpperCasePosition($table['Field']);?>"></td>
                        <td>
                           <select class="form-control qysmpryxid" name="foreignColumnShow[]" id="qysmpryxid<?php echo $i;?>" data-id="<?php echo $i;?>">
                              <option <?php echo (isset($moduleFieldDetail['foreignColumnShow'][$key]) AND $moduleFieldDetail['foreignColumnShow'][$key]=="No")?"selected":"";?>>No</option>
                              <option <?php echo (isset($moduleFieldDetail['foreignColumnShow'][$key]) AND $moduleFieldDetail['foreignColumnShow'][$key]=="Yes")?"selected":"";?>>Yes</option>
                           </select>
                        </td>
                        <td>
                           <select class="form-control <?php echo (isset($moduleFieldDetail['foreignColumnShow'][$key]) AND $moduleFieldDetail['foreignColumnShow'][$key]=="Yes")?"":"hidden";?> dxlmujpqqq" name="foreignTable[]" id="dxlmujpqqq<?php echo $i;?>" data-id="<?php echo $i;?>">
                              <option value="">Please Select</option>
                              <?php foreach($showAllDbTables as $table2){ ?>
                              <option <?php echo (isset($moduleFieldDetail['foreignTable'][$key]) AND $moduleFieldDetail['foreignTable'][$key]==$table2)?"selected":"";?>><?php echo $table2;?></option>
                              <?php } ?>
                           </select>
                           <select style="margin-top: 10px;" class="form-control <?php echo (isset($moduleFieldDetail['foreignColumnShow'][$key]) AND $moduleFieldDetail['foreignColumnShow'][$key]=="Yes")?"":"hidden";?> uqgvamdhfy" name="foreignColumn[]" id="uqgvamdhfy<?php echo $i;?>" data-id="<?php echo $i;?>">
                              <?php if(!empty($moduleFieldDetail['foreignTableColumnDetail'][$key])){?>
                              <?php foreach(explode(",",$moduleFieldDetail['foreignTableColumnDetail'][$key]) as $column){?>
                              <option <?php echo (isset($moduleFieldDetail['foreignColumn'][$key]) AND $moduleFieldDetail['foreignColumn'][$key]==$column)?"selected":"";?>><?php echo $column;?></option>
                              <?php } ?>
                              <?php }else{ ?>
                              <option value="">Please Select</option>
                              <?php } ?>
                           </select>
                           <?php if(isset($moduleFieldDetail['foreignTableColumnDetail'][$key])){ ?>
                           <input name="foreignTableFirstColumn[]" type="hidden" value="<?php echo explode(",",$moduleFieldDetail['foreignTableColumnDetail'][$key])[0];?>" class="form-control <?php echo (isset($moduleFieldDetail['foreignColumnShow'][$key]) AND $moduleFieldDetail['foreignColumnShow'][$key]=="Yes")?"":"hidden";?>">
                           <?php } ?>
                        </td>
                        <td>
                           <select class="form-control lmquhorrmm" name="showInList[]" id="lmquhorrmm<?php echo $i;?>" data-id="<?php echo $i;?>">
                              <option <?php echo (isset($moduleFieldDetail['showInList'][$key]) AND $moduleFieldDetail['showInList'][$key]=="No"  AND in_array($dbTableName,$moduleFieldDetail['columnName']))?"selected":"";?> value="No">No</option>
                              <option <?php echo (isset($moduleFieldDetail['showInList'][$key]) AND $moduleFieldDetail['showInList'][$key]=="Yes" AND in_array($dbTableName,$moduleFieldDetail['columnName']))?"selected":"";?> value="Yes">Yes</option>
                           </select>
                        </td>
                        <td>
                           <?php
                              $selected1 = $table['Field']=='image'?'selected':'';
                              $selected2 = $table['Field']=='videoId'?'selected':'';
                              $selected3 = $table['Field']=='videoThumb'?'selected':'';
                              $selected4 = $table['Field']=='linkInternal'?'selected':'';
                              $selected5 = $table['Field']=='linkExternal'?'selected':'';
                              $selected6 = $table['Field']=='sortOrder'?'selected':'';
                              $selected7 = $table['Field']=='featured'?'selected':'';
                              $selected8 = $table['Field']=='status'?'selected':'';
                              //$selected9 = $table['Field']=='makeDefault'?'selected':'';
                              
                              ?>
                           <select class="form-control" name="type[]">
                              <option value="">None</option>
                              <option <?php echo (isset($moduleFieldDetail['type'][$key]) AND $moduleFieldDetail['type'][$key]=='image')?"selected":$selected1;?> value="image">Image</option>
                              <option <?php echo (isset($moduleFieldDetail['type'][$key]) AND $moduleFieldDetail['type'][$key]=='video')?"selected":$selected2;?> value="video">Video</option>
                              <option <?php echo (isset($moduleFieldDetail['type'][$key]) AND $moduleFieldDetail['type'][$key]=='videoThumb')?"selected":$selected3;?> value="videoThumb">Video Thumb</option>
                              <option <?php echo (isset($moduleFieldDetail['type'][$key]) AND $moduleFieldDetail['type'][$key]=='linkInternal')?"selected":$selected4;?> value="linkInternal">linkInternal</option>
                              <option <?php echo (isset($moduleFieldDetail['type'][$key]) AND $moduleFieldDetail['type'][$key]=='linkExternal')?"selected":$selected5;?> value="linkExternal">linkExternal</option>
                              <option <?php echo (isset($moduleFieldDetail['type'][$key]) AND $moduleFieldDetail['type'][$key]=='sortOrderUpdateFromOutSide')?"selected":$selected6;?> value="sortOrderUpdateFromOutSide">Sort Order</option>
                              <option <?php echo (isset($moduleFieldDetail['type'][$key]) AND $moduleFieldDetail['type'][$key]=='featuredUpdateFromOutSide')?"selected":$selected7;?> value="featuredUpdateFromOutSide">Featured</option>
                              <option <?php echo (isset($moduleFieldDetail['type'][$key]) AND $moduleFieldDetail['type'][$key]=='status')?"selected":$selected8;?> value="status">Status</option>
                           </select>
                        </td>
                        <td><input autocomplete="off"  type="text" value="<?php echo (isset($moduleFieldDetail['columnSortOrder'][$key]) AND $moduleFieldDetail['columnSortOrder'][$key]!="" AND in_array($dbTableName,$moduleFieldDetail['columnName']))?$moduleFieldDetail['columnSortOrder'][$key]:"";?>" placeholder="Sort Order" class="form-control qavgfjjiak" name="columnSortOrder[]" id="qavgfjjiak<?php echo $i;?>" data-id="<?php echo $i;?>"></td>
                        <td>
                           <select class="form-control" name="tableColumnMerge[]" data-id="<?php echo $i;?>">
                              <option value="">Please Select</option>
                              @foreach($columns as $table3)
                              <option <?php echo (isset($moduleFieldDetail['tableColumnMerge'][$key]) AND $moduleFieldDetail['tableColumnMerge'][$key]==$table3['Field'])?"selected":"";?> value="{{$table3['Field']}}">{{$table3['Field']}}</option>
                              @endforeach
                           </select>
                        </td>
                        <td>
                           <div class="btn btn-info jpzztmbhdn" style="margin-top:5px;"  data-value="<?php echo $table['Field'];?>___{{$tableName}}___<?php echo (isset($moduleFieldDetail['columnCustomName'][$key]) AND $moduleFieldDetail['columnCustomName'][$key]!="" AND $key!="")?$moduleFieldDetail['columnCustomName'][$key]:$controller::getUpperCasePosition($table['Field']);?>">Filter</div>
                           @php($fieldToCheck = $table['Field'].",".$tableName)
                           @php($checkIfExists = $controller::getDataWhereFilter($fieldToCheck))
                           @if(!empty($checkIfExists))
                           <div class="btn btn-danger hliabfpbie" style="margin-top:5px;" data-id="{{$checkIfExists[0]['filterId']}}">Clear</div>
                           @endif
                        </td>
                     </tr>
                     <?php $i++;} ?>
                     <tr>
                        <td colspan="10" align="center"><h3>List Page Settings</h3></td>
                     </tr>
                     <tr>
                        <td colspan="4">
                           <label>Filter Working Condition</label>
                           <select class="form-control" name="filterWorkingCondition">
                              <option value="">Please Select</option>
                              <option <?php echo (isset($moduleFieldDetail['filterWorkingCondition']) AND $moduleFieldDetail['filterWorkingCondition']=="OR")?"selected":"";?>>OR</option>
                              <option <?php echo (isset($moduleFieldDetail['filterWorkingCondition']) AND $moduleFieldDetail['filterWorkingCondition']=="AND")?"selected":"";?>>AND</option>
                           </select>
                        </td>
                        <td colspan="3">
                           <label>List View Sort order(ColumnName_ASC)</label>
                           <input type="text" class="form-control" name="listViewSortOrder" value="<?php echo (isset($moduleFieldDetail['listViewSortOrder']))?$moduleFieldDetail['listViewSortOrder']:"";?>">
                        </td>
                        <td colspan="3">
                           <label>List View Soft Delete</label>
                           <select class="form-control" name="listViewSoftDelete">
                              <option <?php echo (isset($moduleFieldDetail['listViewSoftDelete']) AND $moduleFieldDetail['listViewSoftDelete']=="No")?"selected":"";?>>No</option>
                              <option <?php echo (isset($moduleFieldDetail['listViewSoftDelete']) AND $moduleFieldDetail['listViewSoftDelete']=="Yes")?"selected":"";?>>Yes</option>
                           </select>
                        </td>
                     </tr>
                  </table>
                  <table class="table table-bordered">
                     <tr>
                        <td width="16.66%"><strong>Sno</strong></td>
                        <td width="16.66%"><strong>Field</strong></td>
                        <td width="16.66%"><strong>Heading</strong></td>
                        <td width="16.66%"><strong><input type="checkbox" id="setZero" value="0">&nbsp;Sort Order</strong></td>
                        <td width="16.66%"><strong><input type="checkbox" id="setColumnThree" value="0">&nbsp;Column</strong></td>
                        <td width="16.66%"><strong class="pull-right">Action</strong></td>
                     </tr>
                     <?php
                        if(!empty($moduleFieldDetail['fieldColumnName'])){
                        $a=0;foreach($moduleFieldDetail['fieldColumnName'] as $tables){
                        $tableData[] = $tables;
                        $a++;}
                        }else{
                        $tableData = $controller::columnNames($moduleDetail[0]['moduleTable']);
                        }
                        $i=1;$v=0;foreach($tableData as $table){
                        if(!empty($moduleFieldDetail['fieldColumnName'])){
                        $key = array_search($table, $moduleFieldDetail['fieldColumnName']);
                        $tables = $table;
                        }else{
                        $key = array_search($table['Field'], $moduleFieldDetail['columnName']);
                        $tables = $table['Field'];
                        }
                        $show = 1;
                        /*if($table[$key]!="" AND $update_id > 0){
                           $show = 1;
                        }*/
                        ?>
                     <?php if($show==1){?>
                     <tr class="pinqadcrvo" id="pinqadcrvo<?php echo $i;?>">
                        <td>
                           <strong><?php echo $i;?></strong>
                           <?php if(isset($moduleFieldDetail['fieldColumnName'][$key]) AND $moduleFieldDetail['fieldColumnName'][$key]!=""){?>
                           <i class="fa fa-check xvilmfukva" id="xvilmfukva<?php echo $i;?>" style="color:green;margin-left: 15px;" aria-hidden="true"></i>
                           <?php }else{ ?>
                           <i class="fa fa-check xvilmfukva" id="xvilmfukva<?php echo $i;?>" style="color:green;margin-left: 15px;display: none;" aria-hidden="true"></i>
                           <?php } ?>
                        </td>
                        <td>
                           <select class="form-control dlcjyqvwju" id="dlcjyqvwju<?php echo $i;?>" name="fieldType[]">
                              <optgroup label="Main">
                                 <option <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="text")?"selected":"";?> value="text">Text</option>
                                 <option {{($tables=="email"  AND !isset($moduleFieldDetail['fieldColumnName'][$key]))?'selected':''}} <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="email")?"selected":"";?> value="email">Email</option>
                                 <option {{($tables=="status" || str_contains($tables, "Id") AND !isset($moduleFieldDetail['fieldColumnName'][$key]))?'selected':''}} <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="select")?"selected":"";?> value="select">Select</option>
                                 <!-- <option <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="textarea")?"selected":"";?> value="textarea">Textarea</option> -->
                                 <option {{(($tables=="metaTitle" || $tables=="metaDescription" || $tables=="metaKeyword")  AND !isset($moduleFieldDetail['fieldColumnName'][$key]))?'selected':''}} <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND ($moduleFieldDetail['fieldType'][$key]=="metaDescription" || $moduleFieldDetail['fieldType'][$key]=="metaKeyword" || $moduleFieldDetail['fieldType'][$key]=="metaTitle"))?"metaTitle":"";?> value="textarea">Textarea</option>
                                 <option {{(($tables=="description" || $tables=="shortDescription") AND !isset($moduleFieldDetail['fieldColumnName'][$key]))?'selected':''}} <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="wysiwyg")?"selected":"";?> value="wysiwyg">Wysiwyg Editor</option>
                                 <option {{($tables=="image"  AND !isset($moduleFieldDetail['fieldColumnName'][$key]))?'selected':''}} <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="file")?"selected":"";?> value="file">File</option>
                                 <option {{($tables=="password"  AND !isset($moduleFieldDetail['fieldColumnName'][$key]))?'selected':''}} <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="password")?"selected":"";?> value="password">Password</option>
                                 <option <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="hidden")?"selected":"";?> value="hidden">Hidden</option>
                                 <option <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="number")?"selected":"";?> value="number">Number</option>
                              </optgroup>
                              <optgroup label="Additional">
                                 <option <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="checkbox")?"selected":"";?> value="checkbox">Checkbox</option>
                                 <option <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="radio")?"selected":"";?> value="radio">Radio</option>
                                 <option {{($tables=="color" AND !isset($moduleFieldDetail['fieldColumnName'][$key]))?'selected':''}} <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="color")?"selected":"";?> value="color">Color</option>
                                 <option {{($tables=="date" AND !isset($moduleFieldDetail['fieldColumnName'][$key]))?'selected':''}} <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="date")?"selected":"";?> value="date">Date</option>
                                 <option <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="datetime")?"selected":"";?> value="datetime">Datetime Local</option>
                                 <option <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="month")?"selected":"";?> value="month">Month</option>
                                 <option <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="tel")?"selected":"";?> value="tel">Tel</option>
                                 <option {{($tables=="time" AND !isset($moduleFieldDetail['fieldColumnName'][$key]))?'selected':''}}  <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="time")?"selected":"";?> value="time">Time</option>
                                 <option <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="url")?"selected":"";?> value="url">Url</option>
                                 <option <?php echo (isset($moduleFieldDetail['fieldType'][$key]) AND $moduleFieldDetail['fieldType'][$key]=="week")?"selected":"";?> value="week">Week</option>
                              </optgroup>
                           </select>
                        </td>
                        <td>
                           <input class="form-control" type="text" name="fieldHeading[]" placeholder="Field Heading" value="<?php echo (isset($moduleFieldDetail['fieldHeading'][$key]) AND $moduleFieldDetail['fieldHeading'][$key]!="")?$moduleFieldDetail['fieldHeading'][$key]:$controller::getUpperCasePosition($tables);?>">
                        </td>
                        <td><input class="form-control" type="text" name="fieldSortOrder[]" placeholder="Sort Order" value="<?php echo (isset($moduleFieldDetail['fieldSortOrder'][$key]) AND $moduleFieldDetail['fieldSortOrder'][$key]!="")?$moduleFieldDetail['fieldSortOrder'][$key]:$v++;?>"></td>
                        <td><input class="form-control" type="text" name="fieldColumn[]" placeholder="Column" value="<?php echo (isset($moduleFieldDetail['fieldColumn'][$key]) AND $moduleFieldDetail['fieldColumn'][$key]!="")?$moduleFieldDetail['fieldColumn'][$key]:4;?>"></td>
                        <td>
                           <div class="pull-right">
                              <div class="btn btn-primary afvotqkbvd wyewhxojgh" data-column="<?php echo $tables;?>" id="wyewhxojgh<?php echo $i;?>" data-id="<?php echo $i;?>" style="margin-left:3px;">O</div>
                              <div class="btn btn-danger afvotqkbvd irqyjvvpul" id="irqyjvvpul<?php echo $i;?>" data-id="<?php echo $i;?>" style="margin-left:4px;">-</div>
                              <div class="btn btn-success afvotqkbvd pjppcadihh" id="pjppcadihh<?php echo $i;?>" data-id="<?php echo $i;?>" style="margin-left:3px;">+</div>
                              <div class="acvbxmwlfv" id="acvbxmwlfv<?php echo $i;?>">
                                 <input type="hidden" class="otbikxofbc<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldColumnName'][$key]) AND $moduleFieldDetail['fieldColumnName'][$key]!="")?$moduleFieldDetail['fieldColumnName'][$key]:"";?>" name="fieldColumnName[]">
                                 <input type="hidden" class="iotvnxomzy<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldName'][$key]) AND $moduleFieldDetail['fieldName'][$key]!="")?$moduleFieldDetail['fieldName'][$key]:"";?>" name="fieldName[]">
                                 <input type="hidden" class="otvglqedpo<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldId'][$key]) AND $moduleFieldDetail['fieldId'][$key]!="")?$moduleFieldDetail['fieldId'][$key]:"";?>" name="fieldId[]">
                                 <input type="hidden" class="lrcoqnsfwn<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldClass'][$key]) AND $moduleFieldDetail['fieldClass'][$key]!="")?$moduleFieldDetail['fieldClass'][$key]:"";?>" name="fieldClass[]">
                                 <input type="hidden" class="sbjlewmslt<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldPlaceHolder'][$key]) AND $moduleFieldDetail['fieldPlaceHolder'][$key]!="")?$moduleFieldDetail['fieldPlaceHolder'][$key]:"";?>" name="fieldPlaceHolder[]">
                                 <input type="hidden" class="wxjbpbqksd<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldDefaultValue'][$key]) AND $moduleFieldDetail['fieldDefaultValue'][$key]!="")?$moduleFieldDetail['fieldDefaultValue'][$key]:"";?>" name="fieldDefaultValue[]">
                                 <input type="hidden" class="qobngwixqp<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldAttribute'][$key]) AND $moduleFieldDetail['fieldAttribute'][$key]!="")?$moduleFieldDetail['fieldAttribute'][$key]:"";?>" name="fieldAttribute[]">
                                 <input type="hidden" class="buztgveyvq<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldRequired'][$key]) AND $moduleFieldDetail['fieldRequired'][$key]!="")?$moduleFieldDetail['fieldRequired'][$key]:"";?>" name="fieldRequired[]">
                                 <input type="hidden" class="pdefvqxgms<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldValidation'][$key]) AND $moduleFieldDetail['fieldValidation'][$key]!="")?$moduleFieldDetail['fieldValidation'][$key]:"";?>" name="fieldValidation[]">
                                 <input type="hidden" class="cnxqojxdcw<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldHeadingBefore'][$key]) AND $moduleFieldDetail['fieldHeadingBefore'][$key]!="")?$moduleFieldDetail['fieldHeadingBefore'][$key]:"";?>" name="fieldHeadingBefore[]">
                                 <input type="hidden" class="upjkmamola<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldAdditionalAttribute'][$key]) AND $moduleFieldDetail['fieldAdditionalAttribute'][$key]!="")?$moduleFieldDetail['fieldAdditionalAttribute'][$key]:"";?>" name="fieldAdditionalAttribute[]">
                                 <input type="hidden" class="pussbzkrei<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldAdditionalAttribute2'][$key]) AND $moduleFieldDetail['fieldAdditionalAttribute2'][$key]!="")?$moduleFieldDetail['fieldAdditionalAttribute2'][$key]:"";?>" name="fieldAdditionalAttribute2[]">
                                 <input type="hidden" class="bgwogeundq<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldSelectBoxText'][$key]) AND $moduleFieldDetail['fieldSelectBoxText'][$key]!="")?$moduleFieldDetail['fieldSelectBoxText'][$key]:"";?>" name="fieldSelectBoxText[]">
                                 <input type="hidden" class="alyrzixsnv<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldSelectBoxValue'][$key]) AND $moduleFieldDetail['fieldSelectBoxValue'][$key]!="")?$moduleFieldDetail['fieldSelectBoxValue'][$key]:"";?>" name="fieldSelectBoxValue[]">
                                 <input type="hidden" class="zqipqmrlrj<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldSelectTable'][$key]) AND $moduleFieldDetail['fieldSelectTable'][$key]!="")?$moduleFieldDetail['fieldSelectTable'][$key]:"";?>" name="fieldSelectTable[]">
                                 <input type="hidden" class="loofcswkif<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldSelectIdColumn'][$key]) AND $moduleFieldDetail['fieldSelectIdColumn'][$key]!="")?$moduleFieldDetail['fieldSelectIdColumn'][$key]:"";?>" name="fieldSelectIdColumn[]">
                                 <input type="hidden" class="uaavuucqgk<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldSelectMainColumn'][$key]) AND $moduleFieldDetail['fieldSelectMainColumn'][$key]!="")?$moduleFieldDetail['fieldSelectMainColumn'][$key]:"";?>" name="fieldSelectMainColumn[]">
                                 <input type="hidden" class="utzuibfsgf<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldSelectWhere'][$key]) AND $moduleFieldDetail['fieldSelectWhere'][$key]!="")?$moduleFieldDetail['fieldSelectWhere'][$key]:"";?>" name="fieldSelectWhere[]">
                                 <input type="hidden" class="iecsiaosir<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldOrderBy'][$key]) AND $moduleFieldDetail['fieldOrderBy'][$key]!="")?$moduleFieldDetail['fieldOrderBy'][$key]:"";?>" name="fieldOrderBy[]">
                                 <input type="hidden" class="rhuuqdogvt<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldOrderByValue'][$key]) AND $moduleFieldDetail['fieldOrderByValue'][$key]!="")?$moduleFieldDetail['fieldOrderByValue'][$key]:"";?>" name="fieldOrderByValue[]">
                                 <input type="hidden" class="ircimpknot<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldSelectValue'][$key]) AND $moduleFieldDetail['fieldSelectValue'][$key]!="")?$moduleFieldDetail['fieldSelectValue'][$key]:"";?>" name="fieldSelectValue[]">                            
                                 <input type="hidden" class="ivomalhdrc<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldColumnName'][$key]) AND $moduleFieldDetail['fieldColumnName'][$key]!="")?$moduleFieldDetail['fieldColumnName'][$key]:$tables;?>" name="fieldTableColumn[]">
                                 <input type="hidden" class="fjdowyvrjr<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldSelectOperator'][$key]) AND $moduleFieldDetail['fieldSelectOperator'][$key]!="")?$moduleFieldDetail['fieldSelectOperator'][$key]:"";?>" name="fieldSelectOperator[]">
                                 <input type="hidden" class="hponxlzdtn<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldCustomQuery'][$key]) AND $moduleFieldDetail['fieldCustomQuery'][$key]!="")?$moduleFieldDetail['fieldCustomQuery'][$key]:"";?>" name="fieldCustomQuery[]">
                                 <input type="hidden" class="xzzvuuizlz<?php echo $i;?>" value="<?php echo (isset($moduleFieldDetail['fieldCustomFields'][$key]) AND $moduleFieldDetail['fieldCustomFields'][$key]!="")?$moduleFieldDetail['fieldCustomFields'][$key]:"";?>" name="fieldCustomFields[]">
                              </div>
                           </div>
                        </td>
                     </tr>
                     <?php $i++;} ?>
                     <?php } ?>
                     <tbody class="appendResult">
                     </tbody>
                  </table>
                  <div style="display: block;">
                     <div class="showAllTableTr btn btn-primary pull-right" style="width: 200px;margin-top: 30px;margin-right: 15px;">Show All</div>
                  </div>
                  <table class="table table-bordered" style="margin-top: 30px;">
                     <tr>
                        <td width="14.28%">Field Type</td>
                        <td width="14.28%">Field Name</td>
                        <td width="14.28%">Sort Order</td>
                        <td width="14.28%">Column</td>
                        <td width="14.28%">DB Column</td>
                        <td width="14.28%">Select Column</td>
                        <td width="14.28%">Validation</td>
                     </tr>
                     <?php for($i=0;$i<10;$i++){?>
                     <tr class="sgrgvtpleu" <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldHeading'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldHeading'][$i]!="")?'':'style="display:none;"';?>>
                        <td>
                           <select class="form-control vicowlcjhu" id="vicowlcjhu<?php echo $i;?>" name="addMore[addMoreFieldType][]">
                              <optgroup label="Main">
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="text")?"selected":"";?> value="text">Text</option>
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="email")?"selected":"";?> value="email">Email</option>
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="select")?"selected":"";?> value="select">Select</option>
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="textarea")?"selected":"";?> value="textarea">Textarea</option>
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="wysiwyg")?"selected":"";?> value="wysiwyg">Wysiwyg Editor</option>
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="file")?"selected":"";?> value="file">File</option>
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="password")?"selected":"";?> value="password">Password</option>
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="hidden")?"selected":"";?> value="hidden">Hidden</option>
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="number")?"selected":"";?> value="number">Number</option>
                              </optgroup>
                              <optgroup label="Additional">
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="checkbox")?"selected":"";?> value="checkbox">Checkbox</option>
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="radio")?"selected":"";?> value="radio">Radio</option>
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="color")?"selected":"";?> value="color">Color</option>
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="date")?"selected":"";?> value="date">Date</option>
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="datetime")?"selected":"";?> value="datetime">Datetime Local</option>
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="month")?"selected":"";?> value="month">Month</option>
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="tel")?"selected":"";?> value="tel">Tel</option>
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="time")?"selected":"";?> value="time">Time</option>
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="url")?"selected":"";?> value="url">Url</option>
                                 <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldType'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldType'][$i]=="week")?"selected":"";?> value="week">Week</option>
                              </optgroup>
                           </select>
                           <label style="margin-top:10px;">Required</label>
                           <select class="form-control yyarqtvhbm" name="addMore[addMoreFieldRequired][]">
                              <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldRequired'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldRequired'][$i]=="0")?"selected":"";?> value="0">No</option>
                              <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldRequired'][$i]) AND $moduleFieldDetail['addMore']['addMoreFieldRequired'][$i]=="1")?"selected":"";?> value="1">Yes</option>
                           </select>
                        </td>
                        <td>
                           <input class="form-control acpchwhbhe" type="text" name="addMore[addMoreFieldName][]" placeholder="Field Name" value="<?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldName'][$i]))?$moduleFieldDetail['addMore']['addMoreFieldName'][$i]:"";?>">
                           <label style="margin-top:10px;">Field Heading</label>
                           <input class="form-control jtyuiofwvz" type="text" name="addMore[addMoreFieldHeading][]" style="margin-bottom:5px;"  placeholder="Heading" value="<?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldHeading'][$i]))?$moduleFieldDetail['addMore']['addMoreFieldHeading'][$i]:"";?>">
                           <label style="margin-top:10px;">Id</label>
                           <input class="form-control axxgncqyhi" type="text" name="addMore[addMoreFieldId][]" style="margin-bottom:5px;"  placeholder="Id" value="<?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldId'][$i]))?$moduleFieldDetail['addMore']['addMoreFieldId'][$i]:"";?>">
                           <label style="margin-top:10px;">Class</label>
                           <input class="form-control bfjhaqgczl" type="text" name="addMore[addMoreFieldClass][]" style="margin-bottom:5px;" placeholder="Class" value="<?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldClass'][$i]))?$moduleFieldDetail['addMore']['addMoreFieldClass'][$i]:"";?>">
                           <label style="margin-top:10px;">Placeholder</label>
                           <input class="form-control cerkhzzpsn" type="text" name="addMore[addMoreFieldPlaceholder][]" style="margin-bottom:5px;" placeholder="Placeholder" value="<?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldPlaceholder'][$i]))?$moduleFieldDetail['addMore']['addMoreFieldPlaceholder'][$i]:"";?>">
                           <label style="margin-top:10px;">Default Value</label>
                           <input class="form-control bvanccyjtv" type="text" name="addMore[addMoreFieldDefaultValue][]" placeholder="Default Value" value="<?php echo (isset($moduleFieldDetail['addMore']['addMoreFieldDefaultValue'][$i]))?$moduleFieldDetail['addMore']['addMoreFieldDefaultValue'][$i]:"";?>">
                        </td>
                        <td><input class="form-control" type="text" name="addMore[addMoreSortOrder][]" placeholder="Add More Sort Order" value="<?php echo (isset($moduleFieldDetail['addMore']['addMoreSortOrder'][$i]))?$moduleFieldDetail['addMore']['addMoreSortOrder'][$i]:"0";?>"></td>
                        <td><input class="form-control" type="text" name="addMore[addMoreColumn][]" placeholder="Add More Column" value="<?php echo (isset($moduleFieldDetail['addMore']['addMoreColumn'][$i]))?$moduleFieldDetail['addMore']['addMoreColumn'][$i]:"3";?>"></td>
                        <td>
                           <select class="form-control gqqkhjzrae" name="addMore[addMoreDbColumn][]">
                              <option value="">Please Select</option>
                              <?php foreach($controller::columnNames($moduleDetail[0]['moduleTable']) as $table){ ?>
                              <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreDbColumn'][$i]) AND $moduleFieldDetail['addMore']['addMoreDbColumn'][$i]==$table['Field'])?"selected":"";?> value="<?php echo $table['Field'];?>"><?php echo $table['Field'];?></option>
                              <?php } ?>
                           </select>
                        </td>
                        <td>
                           <select class="form-control dihaxsktpe" style="margin-bottom:5px;" name="addMore[addMoreSelectTable][]">
                              <option value="">Please Select</option>
                              <?php foreach($controller::showAllDbTables() as $table){ ?>
                              <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreSelectTable'][$i]) AND $moduleFieldDetail['addMore']['addMoreSelectTable'][$i]==$table)?"selected":"";?>><?php echo $table;?></option>
                              <?php } ?>
                           </select>
                           <label>Select Column</label>
                           <select class="form-control jztfvxaqvs" name="addMore[addMoreSelectIdColumn][]" style="margin-bottom:5px;" >
                              <?php if($update_id > 0){ ?>
                              <?php if(isset($moduleFieldDetail['addMore']['addMoreSelectTable'][$i]) AND $moduleFieldDetail['addMore']['addMoreSelectTable'][$i]!=""){ ?>
                              <?php foreach($controller::columnNames($moduleFieldDetail['addMore']['addMoreSelectTable'][$i]) as $table){ ?>
                              <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreSelectIdColumn'][$i]) AND $moduleFieldDetail['addMore']['addMoreSelectIdColumn'][$i]==$table['Field'])?"selected":"";?> value="<?php echo $table['Field'];?>"><?php echo $table['Field'];?></option>
                              <?php } ?>
                              <?php }else{ ?>
                              <option value="">Please Select</option>
                              <?php } ?>
                              <?php }else{ ?>
                              <option value="">Please Select</option>
                              <?php } ?>
                           </select>
                           <label>Select Column</label>
                           <select class="form-control aejqvtcizy" name="addMore[addMoreSelectMainColumn][]" style="margin-bottom:5px;" >
                              <?php if($update_id > 0){ ?>
                              <?php if(isset($moduleFieldDetail['addMore']['addMoreSelectTable'][$i]) AND $moduleFieldDetail['addMore']['addMoreSelectTable'][$i]!=""){ ?>
                              <?php foreach($controller::columnNames($moduleFieldDetail['addMore']['addMoreSelectTable'][$i]) as $table){ ?>
                              <option <?php echo (isset($moduleFieldDetail['addMore']['addMoreSelectMainColumn'][$i]) AND $moduleFieldDetail['addMore']['addMoreSelectMainColumn'][$i]==$table['Field'])?"selected":"";?> value="<?php echo $table['Field'];?>"><?php echo $table['Field'];?></option>
                              <?php } ?>
                              <?php }else{ ?>
                              <option value="">Please Select</option>
                              <?php } ?>
                              <?php }else{ ?>
                              <option value="">Please Select</option>
                              <?php } ?>
                           </select>
                           <label>Select Where</label>
                           <input autocomplete="off"  type="text" class="form-control yfyhzidjvc" placeholder="Where" name="addMore[addMoreSelectWhere][]" style="margin-bottom:5px;"  value="<?php echo (isset($moduleFieldDetail['addMore']['addMoreSelectWhere'][$i]))?$moduleFieldDetail['addMore']['addMoreSelectWhere'][$i]:"";?>">
                           <label>Select Value</label>
                           <input autocomplete="off"  type="text" class="form-control bzqkgdsnjx" placeholder="Value" name="addMore[addMoreSelectValue][]"  style="margin-bottom:5px;" value="<?php echo (isset($moduleFieldDetail['addMore']['addMoreSelectValue'][$i]))?$moduleFieldDetail['addMore']['addMoreSelectValue'][$i]:"";?>">
                           <label>Select Custom Text</label>
                           <input autocomplete="off"  type="text" class="form-control opmeyyesad" placeholder="Custom Text" name="addMore[addMoreSelectCustomText][]"  style="margin-bottom:5px;" value="<?php echo (isset($moduleFieldDetail['addMore']['addMoreSelectCustomText'][$i]))?$moduleFieldDetail['addMore']['addMoreSelectCustomText'][$i]:"";?>">
                           <label>Select Custom Value</label>
                           <input autocomplete="off"  type="text" class="form-control ygvdhpsmjb" placeholder="Custom Value" name="addMore[addMoreSelectCustomValue][]"  value="<?php echo (isset($moduleFieldDetail['addMore']['addMoreSelectCustomValue'][$i]))?$moduleFieldDetail['addMore']['addMoreSelectCustomValue'][$i]:"";?>">
                        </td>
                        <td>
                           <textarea class="form-control fqleusfqbq" name="addMore[addMoreValidation][]" style="height:208px;"><?php echo (isset($moduleFieldDetail['addMore']['addMoreValidation'][$i]))?$moduleFieldDetail['addMore']['addMoreValidation'][$i]:"";?></textarea>
                        </td>
                     </tr>
                     <?php } ?>
                  </table>
                  <div style="display: block;">
                     <div class="btn btn-primary pull-right vigwmrmasu" style="margin-top: 20px;margin-bottom: 20px;width: 100px;margin-right: 15px;">SAVE</div>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
<div class="modal fade" id="fieldOptions" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
   <div class="modal-dialog" role="document" style="max-width:80%;">
      <div class="modal-content">
         <div class="modal-header">
            <h4 class="modal-title" id="exampleModalLabel1">More Field Options</h4>
         </div>
         <div class="modal-body">
            <input type="hidden" class="fieldCount" value="0">
            <table class="table table-bordered">
               <tr>
                  <td width="25%">
                     <label for="recipient-name" class="control-label">Name</label>
                     <select class="form-control vpdskwkhrw">
                        <option value="">Please Select</option>
                        <?php foreach($controller::columnNames($moduleDetail[0]['moduleTable']) as $table){ ?>
                        <option value="<?php echo $table['Field'];?>"><?php echo $table['Field'];?></option>
                        <?php } ?>
                     </select>
                  </td>
                  <td width="25%">
                     <label for="recipient-name" class="control-label">Id:</label>
                     <input autocomplete="off"  type="text" class="form-control vmbeagfcqb">
                  </td>
                  <td width="25%">
                     <label for="recipient-name" class="control-label">Class:</label>
                     <input autocomplete="off"  type="text" class="form-control mzxbwicqmr">
                  </td>
                  <td width="25%">
                     <label for="recipient-name" class="control-label">Placeholder:</label>
                     <input autocomplete="off"  type="text" class="form-control wcahrihaye">
                  </td>
               </tr>
               <tr>
                  <td width="20%">
                     <label for="recipient-name" class="control-label">Default Value:</label>
                     <input autocomplete="off"  type="text" class="form-control baqowwepyo">
                  </td>
                  <td width="20%">
                     <label for="recipient-name" class="control-label">Attribute:</label>
                     <select class="form-control juesuetyud">
                        <option value="">Please Select</option>
                        <option value="disabled">Disabled</option>
                        <option value="multiple">Multiple</option>
                        <option value="readonly">Readonly</option>
                     </select>
                  </td>
                  <td width="20%">
                     <label for="recipient-name" class="control-label">Field Required:</label>
                     <select class="form-control zsuubmpqzw">
                        <option value="0">No</option>
                        <option value="1">Yes</option>
                     </select>
                  </td>
                  <td width="20%">
                     <label for="recipient-name" class="control-label">Additional Attributes:</label>
                     <select class="form-control igfgafmqku">
                        <option value="">Please Select</option>
                        <option value="removePleaseSelect">Remove Please Select</option>
                        <option value="readonlyInEdit">Read Only In Edit Mode</option>
                        <option value="notRequiredInEdit">Not Required In Edit Mode</option>
                        <option value="autoSuggestive">AutoSuggestive</option>
                        <option value="hideThisField">Hide This Field Both (Backend & Frontend)</option>
                        <option value="hideThisFieldBackend">Hide This Field Backend</option>
                        <option value="hideThisFieldFrontend">Hide This Field Frontend</option>
                     </select>
                     <label for="recipient-name" class="control-label">Additional Attributes 2:</label>
                     <select class="form-control nofsloifut">
                        <option value="">Please Select</option>
                        <option value="showOnlyToSuperAdmin">Show Only To Super Admin</option>
                     </select>
                  </td>
               
               </tr>
               <tr>
                  <td colspan="4">
                     <div class="rdlbljzlgi btn btn-primary" data-id="required">Req</div>
                     <div class="rdlbljzlgi btn btn-primary" data-id="email">Email</div>
                     <div class="rdlbljzlgi btn btn-primary dztvenfyvo" data-id="unique:customers,email">Unique:Customers,email</div>
                     <div class="rdlbljzlgi btn btn-primary wbqotgybbz" data-id="mimes:jpeg,jpg,png,webp">mimes:jpeg,jpg,png,webp</div>
                     <div class="rdlbljzlgi btn btn-primary" data-id="min:10">Min:10</div>
                     <div class="rdlbljzlgi btn btn-primary" data-id="max:10">Max:10</div>
                     <div class="rdlbljzlgi btn btn-primary" data-id="digits:10">Digits:10</div>
                     <div class="rdlbljzlgi btn btn-primary" data-id="digits:6">Digits:6</div>
                     <div class="rdlbljzlgi btn btn-primary" data-id="numeric">Number</div>
                     <div class="rdlbljzlgi btn btn-primary" data-id="regex:/^[\p{L}\s-]+$/u">Alpha</div>
                  </td>
               </tr>
               <tr>
                  <td colspan="2">
                     <label for="recipient-name" class="control-label">Custom Validation</label>
                     <input autocomplete="off"  type="text" class="form-control abptvlieua" placeholder="Custom Validation">
                  </td>
                  <td colspan="2">
                     <label for="recipient-name" class="control-label">Heading Before This Field</label>
                     <input autocomplete="off"  type="text" class="form-control lmgdwaxaof" placeholder="Heading Before This Field">
                  </td>
               </tr>
               <tr>
                  <td colspan="4">
                     <div class="btn btn-primary abmmgmlscb" data-value="1,0" data-id="Enable,Disable">Enable,Disable</div>
                     <div class="btn btn-primary abmmgmlscb" data-value="Yes,No" data-id="Yes,No">Yes,No</div>
                     <div class="btn btn-primary abmmgmlscb" data-value="0,1" data-id="Disable,Enable">Disable,Enable</div>
                     <div class="btn btn-primary abmmgmlscb" data-value="No,Yes" data-id="No,Yes">No,Yes</div>
                  </td>
               </tr>
               <tr>
                  <td colspan="2">
                     <label for="recipient-name" class="control-label">Select Box Text - Seprated By Comma:</label>
                     <input autocomplete="off"  type="text" class="form-control egyldrhzwj">
                  </td>
                  <td colspan="2">
                     <label for="recipient-name" class="control-label">Select Box Value - Seprated By Comma:</label>
                     <input autocomplete="off"  type="text" class="form-control zvbnfvdxfd">
                  </td>
               </tr>
               <tr>
                  <td>
                     <label for="recipient-name" class="control-label">Table</label>
                     <select class="form-control pfqplgtnka">
                        <option value="">Please Select</option>
                        <?php foreach($controller::showAllDbTables() as $table){ ?>
                        <option><?php echo $table;?></option>
                        <?php } ?>
                     </select>
                  </td>
                  <td>
                     <label for="recipient-name" class="control-label">Id Column</label>
                     <select class="form-control skexvazfne">
                        <option value="">Please Select</option>
                     </select>
                     <label for="recipient-name" class="control-label" style="margin-top: 20px;">Main Column</label>
                     <select class="form-control tanfdmfntg" multiple>
                        <option value="">Please Select</option>
                     </select>
                  </td>
                  <td>
                     <label for="recipient-name" class="control-label">Where - Seprated By Comma:</label>
                     <input autocomplete="off"  type="text" class="form-control tiztpnoemz">
                     <br>
                     <label for="recipient-name" class="control-label">Order By</label>
                     <input autocomplete="off"  type="text" class="form-control ocjrrctggx">
                  </td>
                  <td>
                     <label for="recipient-name" class="control-label">Value - Seprated By Comma:</label>
                     <input autocomplete="off"  type="text" class="form-control kbjjujieje">
                     <br>
                     <label for="recipient-name" class="control-label">Order By Value</label>
                     <select class="form-control iowztvfkgr">
                        <option>ASC</option>
                        <option>DESC</option>
                     </select>
                  </td>
               </tr>
               <tr>
                  <td>
                     <label for="recipient-name" class="control-label">Operator</label>
                     <input autocomplete="off"  type="text" class="form-control zhlfhzpsum">
                  </td>
                  <td colspan="2">
                     <label for="recipient-name" class="control-label">Custom Query</label>
                     <input autocomplete="off"  type="text" class="form-control aldpyzfyyq">
                  </td>
                  <td>
                     <label for="recipient-name" class="control-label">Custom Fields (primaryKey-heading,mobile)</label>
                     <input autocomplete="off"  type="text" class="form-control bofvremmxr">
                  </td>
               </tr>
            </table>
            <div class="modal-footer">
               <button type="button" class="btn btn-primary bblolfjgbb">SAVE</button>
            </div>
         </div>
      </div>
   </div>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog  modal-xl" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Additional Filters</h5>
            <button type="button" class="close oqrxovtjdb" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
         </div>
         <div class="modal-body">
            <form method="POST" id="filterForm">
               <input type="hidden" value="<?php echo $update_id;?>" name="filterModuleId">
               <input type="hidden" value="{{$tableName}}" name="filtertableName" class="filtertableName">
               <div class="row">
                  <div class="col-md-3">
                     <label class="orwgbfrgbs">Field Name ReadOnly</label>
                     <input type="text" name="fieldNameReadonly" readonly class="form-control" placeholder="Table Name">
                  </div>
                  <div class="col-md-3">
                     <label class="orwgbfrgbs">Table Name</label>
                     <!-- <input type="text" name="tableName" class="form-control" placeholder="Table Name"> -->
                     <select class="form-control" name="tableName">
                        <option value="">Please Select</option>
                        <?php foreach($controller::showAllDbTables() as $table){ ?>
                        <option><?php echo $table;?></option>
                        <?php } ?>
                     </select>
                  </div>
                  <div class="col-md-3">
                     <label class="orwgbfrgbs">Table First Column</label>
                     <input type="text" name="tableFirstColumn" class="form-control" placeholder="Table First Column">
                  </div>
                  <div class="col-md-3">
                     <label class="orwgbfrgbs">Table Column (Seprated By Comma(Multiple))</label>
                     <input type="text" name="tableColumn" class="form-control" placeholder="Table Column">
                  </div>
               </div>
               <div class="row" style="margin-top:10px;">
                  <div class="col-md-6">
                     <label class="orwgbfrgbs">Field Heading</label>
                     <input type="text" name="fieldHeading" class="form-control" placeholder="Heading">
                  </div>
                  <div class="col-md-6">
                     <label class="orwgbfrgbs">Field Type</label>
                     <select class="form-control ficxeeqzxi" id="fieldType" name="fieldType">
                        <option value="text">text</option>
                        <option value="autosuggestive">autosuggestive</option>
                        <option value="date">date</option>
                     </select>
                  </div>
               </div>
               <div class="row" style="margin-top:10px;">
                  <div class="col-md-3">
                     <label class="orwgbfrgbs">Field Name</label>
                     <input type="text" class="form-control" name="fieldName" placeholder="Field Name">
                  </div>
                  <div class="col-md-3">
                     <label class="orwgbfrgbs">Field Class</label>
                     <input type="text" class="form-control nelilxbybe" name="fieldClass" placeholder="Field Class">
                  </div>
                  <div class="col-md-3">
                     <label class="orwgbfrgbs">Field ID</label>
                     <input type="text" class="form-control" name="fieldId" placeholder="Field Id">
                  </div>
                  <div class="col-md-3">
                     <label class="orwgbfrgbs">Field Placeholder</label>
                     <input type="text" class="form-control" name="fieldPlaceholder" placeholder="Field Placeholder">
                  </div>
               </div>
               <div class="row" style="margin-top:10px;">
                  <div class="col-md-3">
                     <label class="orwgbfrgbs">Select Box Value (Custom (Comma Seprated))</label>
                     <input type="text" class="form-control" name="selectBoxValue" placeholder="Select Box Value (Custom (Comma Seprated))">
                  </div>
                  <div class="col-md-3">
                     <label class="orwgbfrgbs">Select Box Html (Custom (Comma Seprated))</label>
                     <input type="text" class="form-control" name="selectBoxHtml" placeholder="Select Box Html (Custom (Comma Seprated))">
                  </div>
                  <div class="col-md-3">
                     <label class="orwgbfrgbs">Row Column Size</label>
                     <input type="text" class="form-control" name="rowColumnSize" placeholder="Row Column Size" value="3">
                  </div>
                  <div class="col-md-3">
                     <label class="orwgbfrgbs">Sort Order</label>
                     <input type="text" class="form-control" name="sortOrder" placeholder="Sort Order" value="0">
                  </div>
               </div>
               <div class="row" style="margin-top:10px;">
                  <div class="col-md-12">
                     <label class="orwgbfrgbs">Date Between Filter (Date Filter)</label>
                     <select class="form-control" name="dateBetweenFilter" >
                        <option value="">Please Select (No)</option>
                        <option value="Yes">Date Between Filter (Date Filter)</option>
                     </select>
                  </div>
               </div>
               <div class="row" style="margin-top:10px;">
                  <div class="col-md-3">
                     <label class="orwgbfrgbs">WHERE (ColumnName != 1)</label>
                     <input type="text" class="form-control" name="whereColumn" placeholder="WHERE (ColumnName != 1)">
                  </div>
                  <div class="col-md-3">
                     <label class="orwgbfrgbs">Order By (ColumnName_DESC)</label>
                     <input type="text" class="form-control" name="orderBy" placeholder="Order By (ColumnName_DESC)">
                  </div>
                  <div class="col-md-3">
                     <label class="orwgbfrgbs">Line No</label>
                     <select class="form-control hcdobjzslk" name="lineNo">
                        <option value="1">1</option>
                        <option value="2">2</option>
                     </select>
                  </div>
                  <div class="col-md-3">
                     <label class="orwgbfrgbs">Additional Attributes (Multiple)</label>
                     <select class="form-control kisonqgtoy" multiple id="additionalAttributes" name="additionalAttributes[]">
                        <option value="remove_please_select">Remove Please Select</option>
                        <!-- <option value="readonly">Readonly</option>
                        <option value="multiple">Multiple</option>
                        <option value="disabled">Disabled</option> -->
                     </select>
                  </div>
               </div>
            </form>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-primary xmhwldpokl">Save Changes</button>
         </div>
      </div>
   </div>
</div>
<script type="text/javascript">
   var dataTableStatus = "0";
   var filterFields = "0";
</script>
@endsection