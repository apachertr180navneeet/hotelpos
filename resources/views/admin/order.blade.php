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
                           <h3>Order</h3>
                        </div>
                        <div class="col-12 col-sm-6">
                        </div>
                     </div>
                  </div>
               </div>
               <div class="card-body" style="padding:10px;">
                  <table class="display dataTable" id="dataTable">
                     <thead>
                        <tr>
                           <th width="11.11%">OrderId</th>
                           <th width="11.11%">Name/Email/Mobile</th>
                           <th width="11.11%">Payment Method</th>
                           <th width="11.11%">Order Status</th>
                           <th width="11.11%">Order Total</th>
                           <th width="11.11%">Sales Man</th>
                           <th width="11.11%">Order Type</th>
                           <th width="11.11%">
                              <div align="right">Action</div>
                           </th>
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
</script>
@endsection