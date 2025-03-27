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
                           <h3>Popup Message</h3>
                        </div>
                        <div class="col-12 col-sm-6">
                           <a href="{{url("/")}}/admin/popup-message/add" class="btn btn-primary jicrlyhywf pull-right">+</a>
                        </div>
                     </div>
                     <div class="row" style="margin-top:20px;">
                        <div class="col-12">
                                                      
                           @if(Session::has('message'))
<p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message') }}</p>
@endif
                        </div>
                        
                     </div>
                  </div>
               </div>
               <div class="card-body">
                  <table class="display customDataTable">
                     <thead>
                        <tr>
                           <th>Popup Message ID</th>
                           <th>Heading</th>
                           <th>Message</th>
                           <th>
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
   var controllerName = "Modules";
   var tableColumn = "moduleId,moduleName,moduleTable,moduleFirstColumn";
   var table = "modules";
   var columnName = "4";
   var method = "datatable";
   var count = "4";
   var filterFields = "1";
   var dataTableStatus  = "1";
   var countColumns   = "1";
</script>
@endsection