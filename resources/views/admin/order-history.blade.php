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
			               <h3>Order History (Order ID {{$orderId}} - {{$order[0]['name']}})</h3>
			            </div>
			            <div class="col-12 col-sm-6">
			               <a href="{{url("/")}}/admin/order/history/add/{{$orderId}}" class="btn btn-primary jicrlyhywf pull-right">+</a>
			            </div>
			         </div>
			      </div>
			   </div>
               <div class="card-body" style="padding:10px;">
                     <table class="display dataTable" id="dataTable">
                        <thead>
                           <tr>
                              <th width="20%">Order History Id</th>
                              <th width="20%">Order Status</th>
                              <th width="20%">Comment</th>
                              <th width="20%"><div align="right">Action</div></th>
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
   var dataTableStatus = 0; 
   var views = 0; 
   var orderId = {{$orderId}}; 
</script>
@endsection