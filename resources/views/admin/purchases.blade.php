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
                           <h3>{{$controller::message("Purchases")}}</h3>
                        </div>
                        <div class="col-12 col-sm-6">
                           <a href="{{url("/")}}/admin/purchase/add" class="btn btn-primary jicrlyhywf pull-right">+</a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="card-body">
                  <!-- Date Range Form -->
                  <form action="{{ route('export.purchases') }}" method="POST" class="mb-4">
                     @csrf
                     <div class="row">
                        <div class="col-md-5">
                           <label for="start_date">{{$controller::message("Start Date")}}</label>
                           <input type="date" name="start_date" class="form-control">
                        </div>
                        <div class="col-md-5">
                           <label for="end_date">{{$controller::message("End Date")}}</label>
                           <input type="date" name="end_date" class="form-control">
                        </div>
                        <div class="col-md-2">
                           <label>&nbsp;</label>
                           <button type="submit" class="btn btn-primary form-control">Export</button>
                        </div>
                     </div>
                  </form>
                  
                  <table class="display customDataTable">
                     <thead>
                        <tr>
                           <th>{{$controller::message("ID")}}</th>
                           <th>{{$controller::message("Heading")}}</th>
                           <th>{{$controller::message("Refrence")}}</th>
                           <th>{{$controller::message("Date")}}</th>
                           <th>{{$controller::message("Vendor")}}</th>
                           <th>{{$controller::message("Total")}}</th>
                           <th>{{$controller::message("Purchase Status")}}</th>
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
