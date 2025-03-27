@extends('admin.common.main')
@section('main-container')
<div class="page-body">
    <div class="container-fluid">
        <div class="edit-profile">
            <div class="row">
                <div class="col-xl-12">
                    <!--importImagesForm-->
                    <form class="card" method="POST" id="uploadForm" enctype='multipart/form-data'>
                        <input type="hidden" value="{{csrf_token()}}" name="_token">
                        <div class="card-header pb-0">
                            <h4 class="card-title mb-0">Upload Images</h4>
                            <div class="card-options"><a class="card-options-collapse" href="#" data-bs-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a><a class="card-options-remove" href="#" data-bs-toggle="card-remove"><i class="fe fe-x"></i></a></div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label class="control-label">Upload Images Zip<br><span style="color:red">Note : Upload Max File Size Is 250MB</span></label>
                                        <input type="file" class="form-control" name="file" id="file">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer text-end">
                            <div id="progress-div"><div id="progress-bar"></div></div>
                            @if(isset($permission['edit']) AND $permission['edit']==1)
                            <input type="submit" id="btnSubmit" value="Submit" class="btnSubmit">
                            @endif
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    #progress-bar{
        background:green;
        margin-bottom:10px;
        color:white;
        border-radius:3px;
    }
</style>
<script type="text/javascript">
    var dataTableStatus = 1 ;
    var countColumns  = 0 ;
</script>
@endsection