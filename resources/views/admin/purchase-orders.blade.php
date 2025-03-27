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
                           <h3>{{$controller::message("Purchase Order")}}</h3>
                        </div>
                        <div class="col-12 col-sm-6">
                           <a href="{{url("/")}}/admin/purchase-order/add" class="btn btn-primary jicrlyhywf pull-right">+</a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="card-body">
                  <table class="display customDataTable">
                     <thead>
                        <tr>
                           <th>{{$controller::message("ID")}}</th>
                           <th>{{$controller::message("Heading")}}</th>
                           <th>{{$controller::message("Refrence")}}</th>
                           <th>{{$controller::message("Date")}}</th>
                           <th>{{$controller::message("Vendor")}}</th>
                           <th>{{$controller::message("Total")}}</th>
                           <th>{{$controller::message("Purchase Order Status")}}</th>
                           <th><div align="right">{{$controller::message("Action")}}</div></th>
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
var controllerName = "purchases";
var tableColumn = "purchaseId,heading";
var table = "purchases";
var columnName = "3";
var method = "datatable";
var count = "3";
var filterFields = "1";
var dataTableStatus  = "1";
var countColumns   = "1";
</script>
@endsection