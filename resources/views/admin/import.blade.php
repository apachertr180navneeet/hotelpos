@extends('admin.common.main')
@section('main-container')
<div class="page-body">
    <div class="container-fluid">
        <div class="edit-profile">
            <div class="row">
                <div class="col-xl-12">
                    <form class="card" method="POST" id="importForm">
                        <input type="hidden" value="{{csrf_token()}}" name="_token">
                        <div class="card-header pb-0">
                            <h4 class="card-title mb-0">Import</h4>
                            <h4 style="color:red">Please upload images folder first.</h4>
                            <div class="card-options"><a class="card-options-collapse" href="#" data-bs-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a><a class="card-options-remove" href="#" data-bs-toggle="card-remove"><i class="fe fe-x"></i></a></div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label class="control-label">Excel File</label>
                                        <input type="file" class="form-control" name="file" id="file">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer text-end">
                            @if(isset($permission['edit']) AND $permission['edit']==1)
                            <button class="btn btn-primary wugugpchjn" type="submit">Upload</button>
                            @endif
                        </div>
                    </form>
                    <form class="card" method="POST" id="importForm2">
                        <div class="card-header pb-0">
                            <h4 class="card-title mb-0">Excel Data</h4>
                            <div class="card-options"><a class="card-options-collapse" href="#" data-bs-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a><a class="card-options-remove" href="#" data-bs-toggle="card-remove"><i class="fe fe-x"></i></a></div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12 xvbndliemd">
                                    
                                </div>
                            </div>
                            <div class="table-responsive odsofgvpfb">
                                
                            </div>
                        </div>
                        <div class="card-footer text-end">
                            @if(isset($permission['edit']) AND $permission['edit']==1)
                            <button class="btn btn-success litfprctkn" type="submit">Import</button>
                            @endif
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<style type="text/css">
    .clyddgcpuj{
        background: green !important;
        border: 1px solid green !important;
    }
    .clyddgcpuj:hover{
        background: green !important;
        border: 1px solid green !important;
    }
</style>
<script type="text/javascript">
    var dataTableStatus = 1 ;
    var countColumns  = 0 ;
</script>
@endsection