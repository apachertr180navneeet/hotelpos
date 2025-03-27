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
                        <div class="col-6 col-sm-6">
                           <h4>Add Order History (Order ID {{$orderId}} - {{$order[0]['name']}})</h4>
                        </div>
                        <div class="col-6 col-sm-6">
                           <a href="{{url("/")}}/admin/order/history/{{$orderId}}" class="btn btn-primary jicrlyhywf pull-right">Back</a>
                        </div>
                     </div>
                  </div>
               </div>
               <form enctype="multipart/form-data" id="orderHistoryForm">
                  <input type="hidden" name="update_id" value="{{ $update_id }}">
                  <input type="hidden" name="where_column" value="orderHistoryId">
                  <input type="hidden" name="orderId" value="{{$orderId}}">
                  <div class="card-body" style="padding:10px;">
                     <div style="padding:12px;">
                        <label><strong>Order Status<span style="color:red;margin-left: 5px;">*</span></strong></label>
                        <select class="select2 form-control orderStatusId" name="orderStatusId">
                           @foreach($orderStatus as $os)
                           <option {{($update_id > 0 AND $orderHistory['orderStatusId']==$os['orderStatusId'])?'selected':'' }} value="{{$os['orderStatusId']}}">{{$os['heading']}}</option>
                           @endforeach
                        </select>
                     </div>

                     <div style="padding:12px;">
                        <label><strong>Comment</strong></label>
                        <textarea  class="form-control" id="qobcdehmna" name="comment">{{($update_id > 0) ? $orderHistory['comment']:''}}</textarea>
                     </div>
                     <div style="padding:12px;">
                        @if($view==0)
                           @if(isset($permission['edit']) AND $permission['edit']==1)
                              <div class="btn btn-info saveOrderHistory" style="padding: 10px;width: 200px;margin-top: 20px;float: right;margin-bottom: 20px;">Save</div>
                           @endif
                        @endif
                     </div>
                     <style type="text/css">
                              .ck.ck-editor__main .ck-content {
                              height: 250px;
                              }
                     </style>
                     <script>
                        CKEDITOR.replace( 'qobcdehmna' );
                     </script>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
<script type="text/javascript">
   var dataTableStatus = 1;
   var update_id = {{$update_id}};
   var views = {{$view}};
</script>
@endsection