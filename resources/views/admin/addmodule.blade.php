@extends('admin.common.main')
@section('main-container')
<div class="page-body">
    <div class="container-fluid">
        <div class="edit-profile">
            <div class="row">
                <div class="col-xl-12">
                    
                    <form class="card" method="POST" id="moduleForm">

                        <input type="hidden" value="modules" name="controllerClassName">
                        <input type="hidden" value="modules" name="table">
                        <input type="hidden" value="{{$update_id}}" name="update_id">
                        <input type="hidden" value="moduleId" name="where_column">
                        <input type="hidden" value="{{csrf_token()}}" name="_token">
                        <div class="card-header pb-0">
                            <h4 class="card-title mb-0">Add Module</h4>
                            <div class="card-options"><a class="card-options-collapse" href="#" data-bs-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a><a class="card-options-remove" href="#" data-bs-toggle="card-remove"><i class="fe fe-x"></i></a></div>
                            @if($update_id > 0)
                        <div class="pull-right btn btn-danger scqznnsbod" data-table="{{$content['moduleTable']}}">Empty Table</div>
                        @endif
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="form-label">Module Name<span class="required">*</span></label>
                                        <input class="form-control mzfptujhyl" type="text" name="moduleName" placeholder="Module Name" value="<?php echo $content['moduleName'];?>">
                                        <input type="hidden" name="moduleName_single" value="required">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="form-label">Page Heading<span class="required">*</span></label>
                                        <input class="form-control pxgcouswxe" type="text" name="pageHeading" placeholder="Page Heading" value="<?php echo $content['pageHeading'];?>">
                                        <input type="hidden" name="pageHeading_single" value="required">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="form-label">Module Table<span class="required">*</span></label>
                                        <select class="form-control vvrjoxfzqg" name="moduleTable">
                                            <option value="">Please Select</option>
                                            <?php foreach($controller::showAllDbTables() as $table){ ?>
                                            <option <?php echo ($content['moduleTable']==$table)?'selected':'';?> value="<?php echo $table;?>"><?php echo $table;?></option>
                                            <?php } ?>
                                        </select>
                                        <input type="hidden" name="moduleTable_single" value="required">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="form-label">Module First Column<span class="required">*</span></label>
                                        @if($update_id > 0)
                                        <input class="form-control" type="text" name="moduleFirstColumn" placeholder="Module First Column" value="<?php echo $content['moduleFirstColumn'];?>">
                                        <input type="hidden" name="moduleFirstColumn_single" value="required">
                                        @else
                                        <select class="form-control gsxkrpjxom" name="moduleFirstColumn">
                                            <option value="">Please Select</option>
                                        </select>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="control-label">Menu</label>
                                        <select name="parentMenu" class="form-control">
                                        <option value="">Please Select</option>
                                        @foreach($content['menus'] as $menu)
                                        <option <?php echo (isset($content['parentMenu']) AND ($content['parentMenu']==$menu['menuId']))?'selected':'';?> value="<?php echo $menu['menuId'];?>"><?php echo ($menu['parentId']==0)?$menu['menuHeading']:"-->".$menu['menuHeading'];?></option>
                                        @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="control-label">Sort Order</label>
                                        <input type="text" class="form-control" placeholder="Sort Order" name="sortOrder" id="sortOrder" value="<?php echo $content['sortOrder'];?>">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="control-label">Hide +</label>
                                        <select name="hideAdd" class="form-control">
                                        
                                        <option <?php echo (isset($content['hideAdd']) AND ($content['hideAdd']=="0"))?'selected':'';?> value="0">No</option>
                                        <option <?php echo (isset($content['hideAdd']) AND ($content['hideAdd']=="1"))?'selected':'';?> value="1">Yes</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="control-label">Hide Edit</label>
                                        <select name="hideEdit" class="form-control">
                                        
                                        <option <?php echo (isset($content['hideEdit']) AND ($content['hideEdit']=="0"))?'selected':'';?> value="0">No</option>
                                        <option <?php echo (isset($content['hideEdit']) AND ($content['hideEdit']=="1"))?'selected':'';?> value="1">Yes</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="control-label">Hide Delete</label>
                                        <select name="hideDelete" class="form-control">
                                        
                                        <option <?php echo (isset($content['hideDelete']) AND ($content['hideDelete']=="0"))?'selected':'';?> value="0">No</option>
                                        <option <?php echo (isset($content['hideDelete']) AND ($content['hideDelete']=="1"))?'selected':'';?> value="1">Yes</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="control-label">Hide Action</label>
                                        <select name="hideAction" class="form-control">
                                        <option <?php echo (isset($content['hideAction']) AND ($content['hideAction']=="0"))?'selected':'';?> value="0">No</option>
                                        <option <?php echo (isset($content['hideAction']) AND ($content['hideAction']=="1"))?'selected':'';?> value="1">Yes</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="control-label">Add Button Text</label>
                                        <input type="text" class="form-control" placeholder="Add Button Text" name="addButtonText" id="addButtonText" value="<?php echo $content['addButtonText'];?>">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="control-label">Copy Button Text</label>
                                        <input type="text" class="form-control" placeholder="Copy Button Text" name="copyButtonText" id="copyButtonText" value="<?php echo $content['copyButtonText'];?>">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <br>
                                    <div class="btn btn-success pwtmkwqltw" data-code='<a href="<?php echo  url('/');?>/admin/inner/complaint/view/$row["your-primary-key-of-current-table"]" class="btn btn-info" style="margin-right:10px;">V</a>'>Add View Button</div>
                                    <div class="btn btn-info ngezckxamg" data-code='<a href="<?php echo  url('/');?>/admin/your-url-route/$row["your-primary-key-of-current-table"]" class="btn btn-info" style="margin-right:10px;">Button Heading</a>'>Add Additional Button</div>
                                    
                                    <div class="mb-3" style="margin-top:30px;">
                                        <label class="control-label">Extra Buttons</label>
                                        <textarea class="form-control sqxacrviuq" style="height:150px;" name="extraButtons"><?php echo $content['extraButtons'];?></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label class="control-label">Submit Code Before</label>
                                        <textarea class="form-control" style="height:150px;" name="submitCodeBefore"><?php echo $content['submitCodeBefore'];?></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label class="control-label">Submit Code After</label>
                                        <textarea class="form-control" style="height:150px;" name="submitCodeAfter"><?php echo $content['submitCodeAfter'];?></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label class="control-label">Extra Action On Delete Button</label>
                                        <textarea class="form-control" style="height:150px;" name="extraActionOnDeleteButton"><?php echo $content['extraActionOnDeleteButton'];?></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label class="control-label">Module Data</label>
                                        <textarea class="form-control" style="height:150px;" name="moduleData"><?php echo $content['moduleData'];?></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label class="form-label">Additional Text</label>
                                        <input class="form-control" type="text" name="additionalText" placeholder="Additional Text" value="<?php echo $content['additionalText'];?>">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Short Code</label>
                                        <input class="form-control" type="text" name="shortCode" placeholder="Short Code" value="{{$controller::moduleShortCode(<?php echo $update_id;?>)}}">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Copy Table</label>
                                        <select name="copyTable" class="form-control">
                                        <option <?php echo (isset($content['copyTable']) AND ($content['copyTable']=="No"))?'selected':'';?> value="No">No</option>
                                        <option <?php echo (isset($content['copyTable']) AND ($content['copyTable']=="Yes"))?'selected':'';?> value="Yes">Yes</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Data Of Column To Skip</label>
                                        <input class="form-control" type="text" name="dataOfColumnToSkip" placeholder="Data Of Column To Skip (Seprated By Comma)" value="<?php echo $content['dataOfColumnToSkip'];?>">
                                    </div>
                                </div>
                               <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Auto Increament Column</label>
                                        <input class="form-control" type="text" name="autoIncreamentColumn" placeholder="Auto Increament Column (Seprated By Comma)" value="<?php echo $content['autoIncreamentColumn'];?>">
                                    </div>
                                </div>                             
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">Send Mail To Admin</label>
                                        <select name="sendMailToAdmin" class="form-control">
                                        <option <?php echo (isset($content['sendMailToAdmin']) AND ($content['sendMailToAdmin']=="No"))?'selected':'';?> value="No">No</option>
                                        <option <?php echo (isset($content['sendMailToAdmin']) AND ($content['sendMailToAdmin']=="Yes"))?'selected':'';?> value="Yes">Yes</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">Replace On Mail (customerId-fullName-customers)</label>
                                        <input class="form-control" type="text" name="filedsToReplaceOnMail" placeholder="Fields To Replace On Mail" value="<?php echo $content['filedsToReplaceOnMail'];?>">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer text-end">
                            <button class="btn btn-primary wugugpchjn" type="submit">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<style type="text/css">
    .ldropenijp{
        margin-top: 10px;
    }
</style>
<script type="text/javascript">
var dataTableStatus = "0";
</script>
@endsection