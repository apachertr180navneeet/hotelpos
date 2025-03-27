@extends('admin.common.main')
@section('main-container')
<div class="page-body">
   <div class="container-fluid">
      <div class="page-title">
         <div class="row">
            <div class="col-12 col-sm-6">
               <h3>No Permission</h3>
            </div>
            <div class="col-12 col-sm-6">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{{url("/")}}/admin"><i data-feather="home"></i></a></li>
                  <li class="breadcrumb-item active">No Permission</li>
               </ol>
            </div>
         </div>
      </div>
   </div>
   <div class="container-fluid list-products">
      <div class="row">
         <div class="col-sm-12">
            <div class="card">
               <div class="card-body" style="padding:50px;">
                  <div class="alert alert-danger" role="alert">
                    You dont have permission to view or edit this page
                  </div>
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