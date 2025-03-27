@extends('admin.common.main')
@section('main-container')
<div class="page-body">
    <div class="container-fluid">
        <div class="edit-profile">
            <div class="row">
                <div class="col-xl-12">
                    
                    <form class="card" method="POST" id="loginFormUsers">
                        <input type="hidden" value="{{$update_id}}" name="update_id">
                        <input type="hidden" value="userId" name="where_column">
                        <input type="hidden" value="{{csrf_token()}}" name="_token">
                        <input type="hidden" value="{{$databaseUserId}}" name="databaseUserId">
                        <div class="card-header pb-0">
                            <h4 class="card-title mb-0">Add Pos User</h4>
                            <div class="card-options"><a class="card-options-collapse" href="#" data-bs-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a><a class="card-options-remove" href="#" data-bs-toggle="card-remove"><i class="fe fe-x"></i></a></div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="form-label">Name<span class="required">*</span></label>
                                        <input class="form-control mzfptujhyl" type="text" name="name" placeholder="Name" value="<?php echo $content['name'];?>">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="form-label">Email<span class="required">*</span></label>
                                        <input class="form-control pxgcouswxe" type="text" name="email" placeholder="Email" value="<?php echo $content['email'];?>">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="form-label">Mobile<span class="required">*</span></label>
                                        <input class="form-control pxgcouswxe" type="text" name="mobile" placeholder="Mobile" value="<?php echo $content['mobile'];?>">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">Password {!!($update_id == 0)?'<span class="required">*</span>':''!!}</label>
                                        <input class="form-control pxgcouswxe" type="password" name="password" placeholder="Password">
                                    
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">Super Admin<span class="required">*</span></label>
                                        <select class="form-control vvrjoxfzqg" name="superAdmin">
                                            <option {{ ($content['superAdmin']=='No')?'selected':'' }} value="No">No</option>
                                            <option {{ ($content['superAdmin']=='Yes')?'selected':'' }} value="Yes">Yes</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="form-label">DB Name<span class="required">*</span></label>
                                        <input class="form-control pxgcouswxe" type="text" name="dBname" placeholder="DB Name" value="<?php echo $content['dbName'];?>">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="form-label">Db User<span class="required">*</span></label>
                                        <input class="form-control pxgcouswxe" type="text" name="dbUser" placeholder="Db User" value="<?php echo $content['dbUser'];?>">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="form-label">DB Password</label>
                                        <input class="form-control pxgcouswxe" type="text" name="dbPassword" placeholder="DB Password" value="<?php echo $content['dbPassword'];?>">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Login Token<span class="required">*</span></label>
                                        <input class="form-control pxgcouswxe" type="text" name="loginToken" placeholder="Login Token" value="<?php echo $content['loginToken'];?>"  {{ ($update_id > 0)?'readonly':'' }}>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Date Stop Accessing Pos<span class="required">*</span></label>
                                        <input class="form-control" type="date" name="dateStopAccessingPos" placeholder="Date Stop Accessing Pos" value="<?php echo $content['dateStopAccessingPos'];?>">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="control-label">Roles</label>
                                        <select name="roleId" class="form-control">
                                        @foreach($content['roles'] as $role)
                                        <option <?php echo (isset($content['roleId']) AND ($content['roleId']==$role['roleId']))?'selected':'';?> value="<?php echo $role['roleId'];?>"><?php echo $role['heading'];?></option>
                                        @endforeach
                                        </select>
                                    </div>
                                </div>               
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">Status<span class="required">*</span></label>
                                        <select class="form-control" name="status">
                                            <option {{ ($content['status']=='1')?'selected':'' }} value="1">Enable</option>
                                            <option {{ ($content['status']=='0')?'selected':'' }} value="0">Disable</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer text-end">
                            <div class="btn btn-primary tqrpkskkgg">Save</div>
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