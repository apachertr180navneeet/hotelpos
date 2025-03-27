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
                           <h3>User Roles</h3>
                        </div>
                        <div class="col-12 col-sm-6">
                           <a href="{{url("/")}}/admin/userroles/add" class="btn btn-primary jicrlyhywf pull-right">+</a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="card-body">
                  <table class="display customDataTable">
                     <thead>
                        <tr>
                           <th>ID</th>
                           <th>Heading</th>
                           <th>Inserted By</th>
                           <th><div align="right">Action</div></th>
                        </tr>
                     </thead>
                  </table>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<script type="text/javascript">
var copyTable = "No";
var controllerName = "userRoles";
var tableColumn = "roleId,heading";
var table = "roles";
var columnName = "3";
var method = "datatable";
var count = "3";
var filterFields = "1";
var dataTableStatus  = "1";
var countColumns   = "1";
</script>
@endsection