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
                           <h3>{{$controller::message("Language Words")}}</h3>
                        </div>
                        <div class="col-12 col-sm-6">
                        </div>
                     </div>
                  </div>
               </div>
               <div class="card-body" style="padding:10px;">
                  <table class="table table-bordered">
                     <thead>
                        <tr>
                           <th>{{$controller::message("ID")}}</th>
                           <th>{{$controller::message("Message")}}</th>
                           @foreach($controller::columnNamesByTable('messages') as $lang)
                           @php($array = array("messageId","message","status"))
                           @if(in_array($lang['Field'],$array))
                           @continue
                           @endif
                           <th>{{ucwords($lang['Field'])}}</th>
                           @endforeach
                       
                        </tr>
                     </thead>
                     <tbody>
                        @php($langs = $controller::columnNamesByTable('messages'))
                        @foreach($messages as $message)
                         <tr>
                             <td>{{$message['messageId']}}</td>
                             <td>{{$message['message']}}</td>
                               @foreach($langs as $lang)
                               @php($array = array("messageId","message","status"))
                               @if(in_array($lang['Field'],$array))
                               @continue
                               @endif
                               <td>
                                    <input data-column="{{$lang['Field']}}" data-id="{{$message['messageId']}}" type="text" class="form-control hazqbjoovn" value="{{$message[$lang['Field']]}}">
                               </td>
                               @endforeach
                       
                         </tr>
                        @endforeach 

                     </tbody>
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