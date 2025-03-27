@extends('admin.common.main')
@section('main-container')
<div class="page-body">
   <div class="container-fluid">
      <div class="edit-profile">
         <div class="row">
            <div class="col-xl-12">
            @if(Session::has('message-success'))
            <p class="alert {{ Session::get('alert-class', 'alert-success') }}" style="margin-top:20px;">{{ Session::get('message-success') }}</p>
            @endif
            @if(Session::has('message-error'))
            <p class="alert {{ Session::get('alert-class', 'alert-danger') }}" style="margin-top:20px;">{{ Session::get('message-error') }}</p>
            @endif
               <form class="card" method="POST" id="exportForms" action="{{url('/')}}/admin/export-excel">
                  <input type="hidden" value="{{csrf_token()}}" name="_token">
                  <div class="card-header pb-0">
                     <h4 class="card-title mb-0">Export</h4>
                     <div class="card-options"><a class="card-options-collapse" href="#" data-bs-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a><a class="card-options-remove" href="#" data-bs-toggle="card-remove"><i class="fe fe-x"></i></a></div>
                  </div>
                  <div class="card-body">
                     <div class="row">
                        <div class="col-md-12">
                           <div class="mb-3">
                              <select class="form-control swphabtqdn" name="tableName">
                                 <option value="">Select Table To Export</option>
                                 @foreach($controller::showAllDbTables() as $table)
                                 @if($table == 'relatedimages' || $table == 'nri_content' || $table == 'settings' || $table == 'about_us' || $table == 'dynamicdata' || $table == 'statesold' || $table == 'faqs' || $table == 'career_content'|| $table == 'exceldata'|| $table == 'packs'|| $table == 'instore'|| $table == 'countries'|| $table == 'notification_read_status')
                                    @continue;
                                 @endif
                                 <option value="{{$table}}">{{$table}}</option>
                                 @endforeach
                              </select>
                           </div>
                        </div>
                        <div class="col-md-12">
                           <table class="table table-bordered">
                              <tr>
                                 <td>
                                    <strong>Sno</strong>
                                 </td>
                                 <td>
                                    <strong>Select Column To Export</strong>
                                 </td>
                                 <td >
                                    <strong>Table Name</strong>
                                 </td>
                                 <td>
                                    <strong>ColumnName</strong>
                                 </td>
                                 <td align="right">
                                    <input type="checkbox" class="iaoajlwcjk" name="checkbox">&nbsp;&nbsp;Check All
                                 </td>
                              </tr>
                              <tbody id="columns"></tbody>
                           </table>
                        </div>
                        <div class="text-end">
                           @if(isset($permission['edit']) AND $permission['edit']==1)
                           <input class="btn btn-primary" type="submit" name="submit" value="Submit" style="margin-top:30px;">
                           @endif
                        </div>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
<script type="text/javascript">
   var dataTableStatus = "0";
</script>
@endsection