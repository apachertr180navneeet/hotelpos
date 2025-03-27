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
                           <h3><?php echo $controllerHeading;?></h3>
                        </div>
                      
                     </div>
                  </div>
               </div>
               <div class="card-body">
                 <img src="{{url('/')}}/assets/uploads/970564488.png" style="width:100%;display:block;margin: auto;">
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
@endsection