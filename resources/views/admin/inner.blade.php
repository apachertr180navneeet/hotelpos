@extends('admin.common.main')
@section('main-container')
<div class="page-body">
<div class="container-fluid">
   <div class="edit-profile">
      <div class="row">
         <div class="col-xl-12">
            <form class="card" method="POST" id="manualForm">
               <input type="hidden" value="<?php echo $tableName;?>" name="table">
               <input type="hidden" value="<?php echo $controllerClassName;?>" name="controllerClassName">
               <input type="hidden" value="<?php echo $tableIdColumn;?>" name="tableIdColumn">
               <input type="hidden" value="<?php echo $pageName;?>" name="page">
               <input type="hidden" value="<?php echo $moduleId;?>" name="moduleId">
               <input type="hidden" value="<?php echo (count($segments)>4)?$segments[4]:0;?>" name="update_id">
               <?php $update_id = (count($segments)>4)?$segments[4]:0;?>
               <input type="hidden" value="<?php echo csrf_token();?>" name="_token">
               <div class="card-header pb-0">
                  <h4 class="card-title mb-0"><?php echo $pageName;?></h4>
                  <a href="{{url("/")}}/admin/page/{{$back}}" class="btn btn-danger jicrlyhywf pull-right" style="position:absolute;right:30px;top:40px;">Back</a>
                  <div class="card-options"><a class="card-options-collapse" href="#" data-bs-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a><a class="card-options-remove" href="#" data-bs-toggle="card-remove"><i class="fe fe-x"></i></a></div>
               </div>
               <div class="card-body">
                  <div class="row">
                     <?php $filedTypeText = array("text","date","email","time","file","password","number","color");?>
                     <?php foreach($fieldData as $field){ ?>
                        @if(isset($field['fieldHeadingBefore']) AND $field['fieldHeadingBefore']!='')
                     <div class="col-md-12">
                        <h3>{{$controller::message($field['fieldHeadingBefore'])}}</h3>
                     </div>
                     @endif 
                     <?php if($field['fieldType']=="hidden"){?>
                     <input class="form-control" type="hidden" name="<?php echo $field['fieldType'];?>" value="<?php echo $field['fieldDefaultValue'];?>">
                     <?php }else{ ?>
                     @if(isset($field['fieldAdditionalAttribute2']) AND $field['fieldAdditionalAttribute2']=='showOnlyToSuperAdmin')
                     @php($field['fieldAdditionalAttribute']='hideThisField')
                     @endif
                     <div class="col-md-<?php echo $field['fieldColumn'];?>{{ ($field['fieldAdditionalAttribute']=='hideThisField')?' hideThisField':'' }} {{ ($field['fieldAdditionalAttribute']=='hideThisFieldBackend')?' hideThisField':'' }}"){?>
                        <div class="mb-3">
                           <?php
                              if($field['fieldRequired']==1 AND $update_id == 0){
                              $required = 1;
                              }else if($field['fieldRequired']==1 AND $update_id > 0 AND $field['fieldAdditionalAttribute']!='notRequiredInEdit'){
                              $required = 1;
                              }else if($field['fieldRequired']==1 AND $update_id > 0 AND $field['fieldAdditionalAttribute']=='notRequiredInEdit'){
                              $required = 0;
                              }else{
                              $required = 0;
                              }
                              if($update_id == 0){
                              $readonly = 0;
                              }else if($update_id > 0 AND $field['fieldAdditionalAttribute']=='readonlyInEdit'){
                              $readonly = 1;
                              }else{
                              $readonly = 0;
                              }
                              ?>
                           <?php $array = is_array(json_decode($field['fieldDefaultValue'],true))?array_values(json_decode($field['fieldDefaultValue'],true)): array();?>
                           <label class="form-label"><?php echo $controller::message($field['fieldHeading']);?><?php echo ($required==1)?'<span class="required">*</span>':'';?></label>
                           <?php if(in_array($field['fieldType'],$filedTypeText)){?>
                           <input class="form-control <?php echo ($required==1)?'requiredField':'';?> <?php echo $field['fieldClass'];?>" id="<?php echo $field['fieldId'];?>" type="<?php echo $field['fieldType'];?>" name="<?php echo $field['fieldName'];?><?php echo ($field['fieldAttribute']=='multiple')?'[]':'';?>" placeholder="<?php echo $controller::message($field['fieldPlaceHolder']);?>" value="<?php echo ($field['fieldType']!="password" AND $field['fieldType']!="file")?$field['fieldDefaultValue']:'';?>" <?php echo ($required==1)?'required':'';?> <?php echo ($readonly==1)?'readonly':'';?> <?php echo $field['fieldAttribute'];?>>
                           <?php if($field['fieldType']=="file"){?>
                           <?php if($field['fieldAttribute']!='multiple'){?>
                           <div class="relatedImages">
                              <?php if(file_exists($field['fieldDefaultValue'])){ ?>
                              @php ($extension = explode(".",$field['fieldDefaultValue']))
                              @if($extension[array_key_last($extension)]=="jpg" || $extension[array_key_last($extension)]=="jpeg" || $extension[array_key_last($extension)]=="png" || $extension[array_key_last($extension)]=="bmp" || $extension[array_key_last($extension)]=="jiff")
                              <div class="relatedImagesDiv">
                                 <div class="imageDiv">
                                    <img src="<?php echo url("/");?>/<?php echo $field['fieldDefaultValue'];?>"  style="width:100px;height: 100px;border:1px solid #e5e5e5;margin-top:10px;">
                                    <input type="hidden" value="<?php echo $field['fieldDefaultValue'];?>" name="<?php echo $field['fieldName'];?><?php echo ($field['fieldAttribute']=='multiple')?'[]':'';?>">
                                 </div>
                                 <div class="btn btn-danger deleteImage" data-image="<?php echo $field['fieldDefaultValue'];?>" style="margin: auto;text-align: center;margin-top: 10px;width:100px;font-size: 12px;">Delete</div>
                              </div>
                              
                              @else
                              <a class="btn btn-info" href="<?php echo url("/")."/".$field['fieldDefaultValue'];?>" target="_BLANK" style="margin: auto;text-align: center;margin-top: 10px;width:100px;font-size: 12px;">View</a>
                              <input type="hidden" value="<?php echo $field['fieldDefaultValue'];?>" name="<?php echo $field['fieldName'];?><?php echo ($field['fieldAttribute']=='multiple')?'[]':'';?>">
                              @endif
                              <?php } ?>
                           </div>
                           <?php } ?>
                           <?php if($field['fieldAttribute']=='multiple'){?>
                           <div class="relatedImages">
                              <?php $images = json_decode($field['fieldDefaultValue'],true);?>
                              <?php if(!empty($images)){ ?>
                              <?php for($v=0;$v<count($images);$v++){ ?>
                              <?php if(file_exists($images[$v])){ ?>
                              <div class="relatedImagesDiv" style="display: inline-block;">
                                 <div class="imageDiv">
                                    <img src="<?php echo url("/");?>/<?php echo $images[$v];?>"  style="width:100px;height: 100px;border:1px solid #e5e5e5;margin-top:10px;">
                                    <input type="hidden" value="<?php echo $images[$v];?>" name="<?php echo $field['fieldName'];?><?php echo ($field['fieldAttribute']=='multiple')?'[]':'';?>">
                                 </div>
                                 <div class="btn btn-danger deleteImage" data-image="<?php echo $images[$v];?>" style="margin: auto;text-align: center;margin-top: 10px;width:100px;font-size: 12px;">Delete</div>
                              </div>
                              <?php } ?>
                              <?php } ?>
                              <?php } ?>
                           </div>
                           <?php } ?>
                           <?php } ?>
                           <?php } ?>
                           <?php if($field['fieldType']=="select"){?>
                          {{$field['fieldCustomQuery']}}
                           <select class="form-control select2 <?php echo ($required==1)?'requiredField':'';?> <?php echo $field['fieldClass'];?>" id="<?php echo $field['fieldId'];?>" name="<?php echo $field['fieldName'];?><?php echo ($field['fieldAttribute']=='multiple')?'[]':'';?>" <?php echo ($required==1)?'required':'';?> <?php echo ($readonly==1)?'readonly':'';?> <?php echo $field['fieldAttribute'];?>>
                              <?php if($field['fieldAdditionalAttribute']!='removePleaseSelect' AND $field['fieldSelectBoxText']=='' AND $field['fieldAdditionalAttribute']!='hideThisField'){?>
                              <option value="">Please Select</option>
                              <?php } ?>
                              <?php if($field['fieldAdditionalAttribute']!='autoSuggestive'){?>
                              <?php if($field['fieldSelectBoxText']!=''){?>
                              <?php $explodes = explode(",",$field['fieldSelectBoxText']);?>
                              <?php $explodesId = explode(",",$field['fieldSelectBoxValue']);?>
                              <?php $a=0;foreach($explodes as $explode){?>
                              <option <?php echo (is_array(json_decode($field['fieldDefaultValue'],true)) AND in_array($explodesId[$a],json_decode($field['fieldDefaultValue'],true)))?"selected":"";?> <?php echo ($field['fieldDefaultValue']==$explodesId[$a])?'selected':'';?> value="<?php echo $explodesId[$a++];?>"><?php echo $explode;?></option>
                              <?php } ?>
                              <?php } ?>
                              <?php if($field['fieldSelectTable']!=''){?>
                              <?php if($field['fieldSelectWhere']!=''){?>
                               @php($slv = ($field['fieldSelectValue']=="this")?$update_id:$field['fieldSelectValue']);
                              <?php $values = $controller::getDataWhereSelectBox($field['fieldSelectTable'],$field['fieldSelectWhere'],$slv,$field['fieldSelectOperator']);?>
                              <?php }else{ ?>
                              <?php $values = $controller::getData($field['fieldSelectTable']);?>
                              <?php } ?>
                              <?php foreach($values as $value){ ?>
                              
                              <?php if($field['fieldSelectIdColumn']=="categoryId"){?>
                                 <option <?php echo (in_array($value[$field['fieldSelectIdColumn']],$array))?'selected':'';?>  <?php echo ($field['fieldDefaultValue']==$value[$field['fieldSelectIdColumn']])?'selected':'';?> value="<?php echo $value[$field['fieldSelectIdColumn']];?>">{{App\Models\Functions::getParentCategory($value[$field['fieldSelectIdColumn']])}}</option>
                              <?php }else{ ?>
                                 @php($txt = '')
                                 @foreach(explode(",",$field['fieldSelectMainColumn']) as $ex)
                                    @php($txt .= $value[$ex]."--")
                                 @endforeach
                                 @php($txt = rtrim($txt, "--"))
                                 <option <?php echo (in_array($value[$field['fieldSelectIdColumn']],$array))?'selected':'';?>  <?php echo ($field['fieldDefaultValue']==$value[$field['fieldSelectIdColumn']])?'selected':'';?> value="<?php echo $value[$field['fieldSelectIdColumn']];?>"><?php echo $txt;?></option>
                              <?php } ?>
                              
                              <?php } ?>
                              <?php } ?>

                              <?php if(isset($field['fieldCustomQuery']) AND $field['fieldCustomQuery']!=''){?>

                                 @php($values = DB::select($field['fieldCustomQuery']))
                                 @php($values = $controller::arrayConvert($values))

                                 @php($customFields = explode("-",$field['fieldCustomFields']))
                                 @php($customFieldsText = explode(",",$customFields[1]))


                                 @foreach($values as $value)

                                 
                                 @php($txt = '')
                                 @foreach($customFieldsText as $ex)
                                    @php($txt .= $value[$ex]."--")
                                 @endforeach
                                 @php($txt = rtrim($txt, "--"))

                                    <option value="{{$value[$customFields[0]]}}">{{$txt}}</option>
                                 @endforeach

                              <?php } ?>


                              <?php } ?>
                              <?php if($field['fieldAdditionalAttribute']=='autoSuggestive'){?>
                              <?php if($update_id == 0){ ?>
                              <?php $autosuggestive[$field['fieldClass']] = array($field['fieldSelectTable'],$field['fieldSelectIdColumn'],$field['fieldSelectMainColumn']);?>
                              <?php }else{ ?>
                              <?php if($field['fieldSelectTable']!=''){?>
                              <?php if($field['fieldSelectWhere']!=''){?>
                              <?php $values = $controller::getDataWhere($field['fieldSelectTable'],$field['fieldSelectWhere'],$field['fieldSelectValue']);?>
                              <?php }else{ ?>
                              <?php $values = $controller::getData($field['fieldSelectTable']);?>
                              <?php } ?>
                              <?php foreach($values as $value){ ?>
                              <option <?php echo (in_array($value[$field['fieldSelectIdColumn']],$array))?'selected':'';?> <?php echo ($field['fieldDefaultValue']==$value[$field['fieldSelectIdColumn']])?'selected':'';?> value="<?php echo $value[$field['fieldSelectIdColumn']];?>"><?php echo $value[$field['fieldSelectMainColumn']];?></option>
                              <?php } ?>
                              <?php } ?>
                              <?php } ?>
                              <?php } ?>
                           </select>
                           <?php } ?>
                           @if($tableName == 'invoice_template')
                               @php($field['fieldDefaultValue'] = $controller::decrypt($field['fieldDefaultValue']))
                           @endif
                           <?php if($field['fieldType']=="textarea"){?>
                           <textarea class="form-control <?php echo ($required==1)?'requiredField':'';?> <?php echo $field['fieldClass'];?>" id="<?php echo $field['fieldId'];?>" name="<?php echo $field['fieldName'];?>" placeholder="<?php echo $field['fieldHeading'];?>" <?php echo ($required==1)?'required':'';?> <?php echo ($readonly==1)?'readonly':'';?> <?php echo $field['fieldAttribute'];?>><?php echo $field['fieldDefaultValue'];?></textarea>
                           <?php } ?>
                           <?php if($field['fieldType']=="wysiwyg"){?>
                           <textarea class="form-control <?php echo ($required==1)?'requiredField':'';?> <?php echo $field['fieldClass'];?>" id="<?php echo $field['fieldId'];?>" name="<?php echo $field['fieldName'];?>" placeholder="<?php echo $field['fieldHeading'];?>" <?php echo ($required==1)?'required':'';?> <?php echo ($readonly==1)?'readonly':'';?> <?php echo $field['fieldAttribute'];?>><?php echo $field['fieldDefaultValue'];?></textarea>
                           <style type="text/css">
                              .ck.ck-editor__main .ck-content {
                              height: 250px;
                              }
                           </style>
                           <script>
                              CKEDITOR.replace( '<?php echo $field['fieldId'];?>' );
                           </script>
                           <?php } ?>
                           <?php if($required==0){?>
                           <?php $field['fieldValidation'] = str_replace('required|', '', $field['fieldValidation']);?>
                           <?php $field['fieldValidation'] = str_replace('required', '', $field['fieldValidation']);?>
                           <?php } ?>
                           <input type="hidden" name="<?php echo $field['fieldName'];?>_validation" value="<?php echo $field['fieldValidation'];?>">
                           <input type="hidden" name="<?php echo $field['fieldName'];?>_fieldType" value="<?php echo $field['fieldType'];?>">
                           <input type="hidden" name="<?php echo $field['fieldName'];?>_fieldAttribute" value="<?php echo $field['fieldAttribute'];?>">
                           
                        </div>
                     </div>
                     <?php } ?>
                     <?php } ?>
                  </div>
               </div>
               <?php if(!empty($addMore)){?>
               <div style="display: block;padding: 0px 0px 0px 30px;">
                  <h3>Additional Information</h3>
               </div>
               <?php } ?>

               

               <?php if(!empty($addMore)){?>
               <?php if($update_id == 0){ ?>
               <div class="row nljqvqzidj" style="padding: 30px;">
                  <?php $a=0;$vinu=0;foreach($addMore as $field){ ?>
                  <div class="col-md-<?php echo $field['addMoreColumn'];?>">
                     <div class="mb-3">
                        <?php if($field['addMoreFieldType']=="hidden"){?>
                        <input class="form-control" type="hidden" name="extra[<?php echo $field['addMoreFieldName'];?>][]" value="<?php echo $field['addMoreFieldDefaultValue'];?>">
                        <?php }else{ ?>
                        <label class="form-label"><?php echo $field['addMoreFieldPlaceholder'];?><?php echo ($field['addMoreFieldRequired']==1)?'<span class="required">*</span>':'';?></label>
                        <?php if(in_array($field['addMoreFieldType'],$filedTypeText)){?>
                        <input class="form-control <?php echo ($field['addMoreFieldRequired']==1)?'requiredField':'';?> <?php echo $field['addMoreFieldClass'];?>" id="<?php echo $field['addMoreFieldId'].$a;?>" type="<?php echo $field['addMoreFieldType'];?>" name="extra[<?php echo $field['addMoreFieldName'];?>][]" placeholder="<?php echo $field['addMoreFieldPlaceholder'];?>" value="<?php echo $field['addMoreFieldDefaultValue'];?>">
                        <?php if($field['addMoreFieldType']=="file"){?>
                        <div class="relatedImages">
                           <?php if(file_exists($field['addMoreFieldDefaultValue'])){ ?>
                           <div class="relatedImagesDiv">
                              <div class="imageDiv">
                                 <img src="<?php echo url("/");?>/<?php echo $field['addMoreFieldDefaultValue'];?>"  style="width:100px;height: 100px;border:1px solid #e5e5e5;margin-top:10px;">
                                 <input type="hidden" value="<?php echo $field['addMoreFieldDefaultValue'];?>" name="extra[<?php echo $field['addMoreFieldName'];?>_hidden][{{$vinu++}}]">
                              </div>
                              <div class="btn btn-danger deleteImage" data-image="<?php echo $field['addMoreFieldDefaultValue'];?>" style="margin: auto;text-align: center;margin-top: 10px;width:100px;font-size: 12px;">Delete</div>
                           </div>
                           <?php } ?>
                        </div>
                        <?php } ?>
                        <?php } ?>
                        <?php if($field['addMoreFieldType']=="select"){?>
                        <select class="form-control <?php echo ($field['addMoreFieldRequired']==1)?'requiredField':'';?> <?php echo $field['addMoreFieldClass'];?>" id="<?php echo $field['addMoreFieldId'].$a;?>" name="extra[<?php echo $field['addMoreFieldName'];?>][]">
                           <option value="">Please Select</option>
                           <?php if($field['addMoreSelectCustomText']!=''){?>
                           <?php $explodes = explode(",",$field['addMoreSelectCustomText']);?>
                           <?php foreach($explodes as $explode){?>
                           <option <?php echo ($field['addMoreFieldDefaultValue']==$explode)?'selected':'';?> value="<?php echo $explode;?>"><?php echo $explode;?></option>
                           <?php } ?>
                           <?php } ?>
                           <?php if($field['addMoreSelectTable']!=''){?>
                           <?php if($field['addMoreSelectWhere']!=''){?>
                           <?php $values = $controller::getDataWhere($field['addMoreSelectTable'],$field['addMoreSelectWhere'],$field['addMoreSelectValue']);?>
                           <?php }else{ ?>
                           <?php $values = $controller::getData($field['addMoreSelectTable']);?>
                           <?php } ?>
                           <?php foreach($values as $value){ ?>
                           <option value="<?php echo $value[$field['addMoreSelectIdColumn']];?>"><?php echo $value[$field['addMoreSelectMainColumn']];?></option>
                           <?php } ?>
                           <?php } ?>
                        </select>
                        <?php } ?>
                        <?php if($field['addMoreFieldType']=="textarea"){?>
                        <textarea class="form-control <?php echo ($field['addMoreFieldRequired']==1)?'requiredField':'';?> <?php echo $field['addMoreFieldClass'];?>" name="extra[<?php echo $field['addMoreFieldName'];?>][]" placeholder="<?php echo $field['addMoreFieldHeading'];?>" ><?php echo $field['addMoreFieldDefaultValue'];?></textarea>
                        <?php } ?>
                        <?php if($field['addMoreFieldType']=="wysiwyg"){?>
                        <textarea class="form-control bpdwqxkvoa <?php echo ($field['addMoreFieldRequired']==1)?'requiredField':'';?>" id="<?php echo $field['addMoreFieldId'].$a;?>" name="extra[<?php echo $field['addMoreFieldName'];?>][]" placeholder="<?php echo $field['addMoreFieldHeading'];?>" ><?php echo $field['addMoreFieldDefaultValue'];?></textarea>
                        <style type="text/css">
                           .ck.ck-editor__main .ck-content {
                           height: 250px;
                           }
                        </style>
                        <script>
                           CKEDITOR.replace( '<?php echo $field['addMoreFieldId'].$a;?>' );
                        </script>
                        <?php } ?>
                        <?php if($field['addMoreFieldRequired']==1){?>
                        <?php $field['addMoreFieldRequired'] = str_replace('required|', '', $field['addMoreValidation']);?>
                        <?php $field['addMoreFieldRequired'] = str_replace('required', '', $field['addMoreValidation']);?>
                        <?php } ?>
                        <input type="hidden" name="extra[<?php echo $field['addMoreFieldName'];?>_validation][]" value="<?php echo $field['addMoreValidation'];?>">
                        <input type="hidden" name="extra[<?php echo $field['addMoreFieldName'];?>_fieldType][]" value="<?php echo $field['addMoreFieldType'];?>">
                        <input type="hidden" name="extra[<?php echo $field['addMoreFieldName'];?>_fieldAttribute][]" value="">
                        <?php } ?>
                     </div>
                  </div>
                  <?php $a++;} ?>
               </div>
               <?php }else{ ?>
                  @php($vinu=0)
               <?php for($i=0;$i<$addMoreData['countEditkey'];$i++){?>
               <?php if($i==0){ ?>
               <div class="row nljqvqzidj" style="padding: 30px;">
                  <?php }else{ ?>
                  <div class="row yponlomnbk" style="padding:0px 30px 30px 30px;">
                     <div class="col-md-12">
                        <div class="vxvtjcycoj" style="padding:5px 10px;background:#ff8819;width:50px;text-align:center;color:white;font-weight:bold;cursor:pointer;float:right;border-radius: 0.25rem;">D</div>
                     </div>
                     <?php } ?>   
                     <?php $a=0;foreach($addMore as $field){ ?>
                     <div class="col-md-<?php echo $field['addMoreColumn'];?>">
                        <?php $field['addMoreFieldDefaultValue'] = $addMoreData['json'][$field['addMoreFieldName']][$i];?>
                        <div class="mb-3">
                           <?php if($field['addMoreFieldType']=="hidden"){?>
                           <input class="form-control" type="hidden" name="extra[<?php echo $field['addMoreFieldName'];?>][]" value="<?php echo $field['addMoreFieldDefaultValue'];?>">
                           <?php }else{ ?>
                           <label class="form-label"><?php echo $field['addMoreFieldPlaceholder'];?><?php echo ($field['addMoreFieldRequired']==1)?'<span class="required">*</span>':'';?></label>
                           <?php if(in_array($field['addMoreFieldType'],$filedTypeText)){?>
                           <input class="form-control <?php echo ($field['addMoreFieldRequired']==1)?'requiredField':'';?> <?php echo $field['addMoreFieldClass'];?>" id="<?php echo $field['addMoreFieldId'].$a;?>" type="<?php echo $field['addMoreFieldType'];?>" name="extra[<?php echo $field['addMoreFieldName'];?>][]" placeholder="<?php echo $field['addMoreFieldPlaceholder'];?>" value="<?php echo $field['addMoreFieldDefaultValue'];?>">
                           <?php if($field['addMoreFieldType']=="file"){?>
                           <div class="relatedImages">
                              <?php if(file_exists($field['addMoreFieldDefaultValue'])){ ?>
                              @php ($extension = explode(".",$field['addMoreFieldDefaultValue']))
                              @if($extension[array_key_last($extension)]=="jpg" || $extension[array_key_last($extension)]=="jpeg" || $extension[array_key_last($extension)]=="png" || $extension[array_key_last($extension)]=="bmp" || $extension[array_key_last($extension)]=="jiff")
                              <div class="relatedImagesDiv">
                                 <div class="imageDiv">
                                    <img class="popfugomms" src="<?php echo url("/");?>/<?php echo $field['addMoreFieldDefaultValue'];?>"  style="width:100px;height: 100px;border:1px solid #e5e5e5;margin-top:10px;">
                                    <input type="hidden" value="<?php echo $field['addMoreFieldDefaultValue'];?>"  name="extra[<?php echo $field['addMoreFieldName'];?>_hidden][{{$vinu}}]">
                                 </div>
                                 <div class="btn btn-danger deleteImage" data-image="<?php echo $field['addMoreFieldDefaultValue'];?>" style="margin: auto;text-align: center;margin-top: 10px;width:100px;font-size: 12px;">Delete</div>
                              </div>
                              @else
                              <a class="btn btn-info" href="<?php echo url("/")."/".$field['addMoreFieldDefaultValue'];?>" target="_BLANK" style="margin: auto;text-align: center;margin-top: 10px;width:100px;font-size: 12px;">View</a>
                              <input type="hidden" value="<?php echo $field['addMoreFieldDefaultValue'];?>"  name="extra[<?php echo $field['addMoreFieldName'];?>_hidden][{{$vinu}}]">
                              <div class="btn btn-danger deleteImage" data-image="<?php echo $field['addMoreFieldDefaultValue'];?>" style="margin: auto;text-align: center;margin-top: 10px;width:100px;font-size: 12px;">Delete</div>
                              @endif
                              <?php } ?>
                           </div>
                           <?php } ?>
                           <?php } ?>
                           <?php if($field['addMoreFieldType']=="select"){?>   
                           <select class="form-control <?php echo ($field['addMoreFieldRequired']==1)?'requiredField':'';?> <?php echo $field['addMoreFieldClass'];?>" id="<?php echo $field['addMoreFieldId'].$a;?>" name="extra[<?php echo $field['addMoreFieldName'];?>][]">
                              <option value="">Please Select</option>
                              <?php if($field['addMoreSelectCustomText']!=''){?>
                              <?php $explodes = explode(",",$field['addMoreSelectCustomText']);?>
                              <?php foreach($explodes as $explode){?>
                              <option <?php echo ($field['addMoreFieldDefaultValue']==$explode)?'selected':'';?> value="<?php echo $explode;?>"><?php echo $explode;?></option>
                              <?php } ?>
                              <?php } ?>
                              <?php if($field['addMoreSelectTable']!=''){?>
                              <?php if($field['addMoreSelectWhere']!=''){?>
                              <?php $values = $controller::getDataWhere($field['addMoreSelectTable'],$field['addMoreSelectWhere'],$field['addMoreSelectValue']);?>
                              <?php }else{ ?>
                              <?php $values = $controller::getData($field['addMoreSelectTable']);?>
                              <?php } ?>
                              <?php foreach($values as $value){ ?>
                              <option <?php echo ($field['addMoreFieldDefaultValue']==$value[$field['addMoreSelectIdColumn']])?'selected':'';?>  value="<?php echo $value[$field['addMoreSelectIdColumn']];?>"><?php echo $value[$field['addMoreSelectMainColumn']];?></option>
                              <?php } ?>
                              <?php } ?>
                           </select>
                           <?php } ?>
                           <?php if($field['addMoreFieldType']=="textarea"){?>
                           <textarea class="form-control <?php echo ($field['addMoreFieldRequired']==1)?'requiredField':'';?> <?php echo $field['addMoreFieldClass'];?>" name="extra[<?php echo $field['addMoreFieldName'];?>][]" placeholder="<?php echo $field['addMoreFieldHeading'];?>" ><?php echo $field['addMoreFieldDefaultValue'];?></textarea>
                           <?php } ?>
                           <?php if($field['addMoreFieldType']=="wysiwyg"){?>
                           <?php $randomeId = $controller::randomAlphanumeric(8);?>
                           <textarea class="form-control bpdwqxkvoa <?php echo ($field['addMoreFieldRequired']==1)?'requiredField':'';?>" id="<?php echo $randomeId;?>" name="extra[<?php echo $field['addMoreFieldName'];?>][]" placeholder="<?php echo $field['addMoreFieldHeading'];?>" ><?php echo $field['addMoreFieldDefaultValue'];?></textarea>
                           <style type="text/css">
                              .ck.ck-editor__main .ck-content {
                              height: 250px;
                              }
                           </style>
                           <script>
                              CKEDITOR.replace( '<?php echo $randomeId;?>' );
                           </script>
                           <?php } ?>
                           <?php if($field['addMoreFieldRequired']==1){?>
                           <?php $field['addMoreFieldRequired'] = str_replace('required|', '', $field['addMoreValidation']);?>
                           <?php $field['addMoreFieldRequired'] = str_replace('required', '', $field['addMoreValidation']);?>
                           <?php } ?>
                           <input type="hidden" name="extra[<?php echo $field['addMoreFieldName'];?>_validation][]" value="<?php echo $field['addMoreValidation'];?>">
                           <input type="hidden" name="extra[<?php echo $field['addMoreFieldName'];?>_fieldType][]" value="<?php echo $field['addMoreFieldType'];?>">
                           <input type="hidden" name="extra[<?php echo $field['addMoreFieldName'];?>_fieldAttribute][]" value="">
                           <?php } ?>
                        </div>
                     </div>
                     <?php $a++;} ?>
                  </div>
                  @php($vinu++)
                  <?php } ?>

                  <?php } ?>
                  <div class="nrgtfbkhsj"></div>
                  <?php } ?>
                  <?php if(!empty($addMore)){?>
                  <div style="display: block;">
                     <div class="btn btn-warning rbxxgggose" style="width: 100px;margin-left: 30px;">Add</div>
                  </div>
                  <?php } ?>
                  <div style="display: block;padding-bottom: 30px;padding-right: 30px;"><button type="submit" class="btn btn-primary wugugpchjn" style="float: right;">Save</button></div>
            </form>
            </div>
         </div>
      </div>
   </div>
</div>
<script type="text/javascript">
   var dataTableStatus = "0";
   var updateId = "<?php echo (count($segments)>4)?$segments[4]:0;?>";
</script>
@endsection