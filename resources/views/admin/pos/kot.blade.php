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
			               <h3>KOT Orders</h3>
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
                              <th width="12.5%">Order Id</th>
                              <th width="12.5%">Name</th>
                              <th width="12.5%">Email</th>
                              <th width="12.5%">Mobile</th>
                              <th width="12.5%">Order Status</th>
                              <th width="12.5%">New Items Added</th>
                              <th width="12.5%">Last Viewed By</th>
                              <th width="12.5%"><div align="right">Action</div></th>
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
   var copytable = "No"; 
   var dataTableStatus = 0; 
   var views = 0; 
</script>
@endsection