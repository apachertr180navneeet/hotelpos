@extends('admin.common.main')
@section('main-container')
<style type="text/css">
   .htcmerncmt{
   padding: 5px;
   background: white;
   display: none;
   position: absolute;
   width:100%;
   z-index: 99999;
   border: 1px solid #e5e5e5;
   border-radius: 5px;
   }
   .xdqbloftje{
   cursor: pointer;
   padding: 5px;
   border-bottom: 1px solid #e5e5e5;
   }
   .xdqbloftje:hover{
   background: #e5e5e5;
   }
   .lixfarnloo{
   position: relative;
   width: 100%;
   }
</style>
<div class="page-body">
   <div class="container-fluid list-products">
      <div class="row">
         <div class="col-sm-12">
            <div class="card">
               <div class="container-fluid">
                  <div class="page-title">
                     <div class="row">
                        <div class="col-6 col-sm-6">
                           <h4>Add Order</h4>
                        </div>
                        <div class="col-6 col-sm-6">
                           <a href="{{url("/")}}/admin/order" class="btn btn-primary jicrlyhywf pull-right">Back</a>
                        </div>
                     </div>
                  </div>
               </div>
               <form enctype="multipart/form-data" id="orderForm">
                  {!! csrf_field() !!}
                  <input type="hidden" name="update_id" value="{{ !empty($order)?$order['orderId']:0 }}">
                  <input type="hidden" name="where_column" value="orderId">
                  <div class="card-body" style="padding:10px;">
                     <div style="padding:12px;position: relative;">
                        <label><strong>Customer<span style="color:red;margin-left: 5px;">*</span></strong></label>
                        <div class="flaqnkpkps">
                           <input type="text" class="form-control qfoffmpdov" placeholder="AutoSuggestive || Customer" value="{{ ($update_id > 0)?$order['name']:"" }}">
                           <input type="hidden" name="customerId" class="wjvpcvipiz" value="{{ ($update_id > 0)?$order['customerId']:0 }}">
                           <div class="lixfarnloo">
                              <div class="htcmerncmt"></div>
                           </div>
                        </div>
                        {{--
                        <select class="form-control customerId select2" name="customerId">
                           @if($update_id > 0)
                           @php($c = $controller::getDataWhere('customers','customerId',$order['customerId']))
                           <option value="{{$order['customerId']}}">{{$c[0]['firstName']}} {{$c[0]['lastName']}}</option>
                           @else
                           @php($customers = $controller::getDataOrderBy("customers","firstName","ASC"))
                           <option value="">Please Select</option>
                           @foreach($customers as $customer)
                           <option value="{{ $customer['customerId'] }}">{{ $customer['firstName'] }}-{{ $customer['lastName'] }}-{{ $customer['mobile'] }}</option>
                           @endforeach
                           @endif
                        </select>
                        --}}
                     </div>
                     <div style="padding:12px;">
                        <label><strong>Customer Address<span style="color:red;margin-left: 5px;">*</span></strong></label>
                        <select class="form-control addressKey select2" name="addressKey">
                        @if($update_id > 0)
                        {!!$addressKey!!}
                        @endif
                        </select>
                     </div>
                     <div style="padding:12px;">
                        <label><strong>Product</strong></label>
                        <div class="flaqnkpkps">
                           <input type="text" class="form-control pmlolbffst" placeholder="AutoSuggestive || Product">
                           <input type="hidden" name="productId" class="wjvpcvipiz" value="0">
                           <div class="lixfarnloo">
                              <div class="htcmerncmt"></div>
                           </div>
                        </div>
                        {{--
                        <select class="select2 form-control productId" name="productId">
                           @php($products = $controller::getDataOrderBy("products","heading","ASC"))
                           <option value="">Please Select</option>
                           @foreach($products as $product)
                           <option value="{{ $product['productId'] }}">{{ $product['heading'] }} ({{$product['code']}})</option>
                           @endforeach
                        </select>
                        --}}
                     </div>
                     <div style="padding:12px;">
                        <style type="text/css">
                           td{
                           width: 14.28%;
                           }
                        </style>
                        <div class="hwawoycpqx">
                           <table class="table table-bordered">
                              <tr>
                                 <td><strong>Sno</strong></td>
                                 <td><strong>Image</strong></td>
                                 <td><strong>Product Name</strong></td>
                                 <td><strong>Price</strong></td>
                                 <td><strong>Quantity</strong></td>
                                 <td align="right"><strong>Total</strong></td>
                                 @if($view!=1)
                                 <td align="right"><strong>Action</strong></td>
                                 @endif
                              </tr>
                              <tbody class="aovarlbecn"></tbody>
                              @if(!empty(Session::get('cartAdmin')))
                              @php($i=1)
                              @foreach(Session::get('cartAdmin') as $product)
                              @if($view==1)
                              @php($price['salePrice'] = $product['salePrice'])
                              @else
                              @php($price['salePrice'] = $product['salePrice'])
                              @endif
                              @php($pr = isset($price['salePrice'])?$price['salePrice']:$price['salePrice'])
                              <tr class="wbbrxndxci" data-id="{{$product['productId']}}" data-packKey="{{ !empty($product['pack'])?$product['pack']['packId']:0 }}">
                                 <td><strong class="lkajankstm">{{$i++}}</strong></td>
                                 @if(file_exists($product['image']))
                                 <td><img src="{{url('/')}}/{{$product['image']}}" style="width:50px;"></td>
                                 @else
                                 <td><img src="{{url('/')}}/assets/no-image.png" style="width:50px;"></td>
                                 @endif
                                 <td>
                                    {{$product['heading']}}
                                    @if(!empty($product['pack']))
                                    <br>
                                    <span style="color:grey;font-weight:bold;cursor:pointer;">Pack Size : {{$product['pack']['size']}}</span>
                                    @endif
                                    @php($packs = $controller::getDataWhere("packs","productId",$product['productId']))
                                    @if(!empty($packs))
                                    <br>
                                    <span data-productId="{{$product['productId']}}" class="jwbepgetaa" style="color:grey;font-weight:bold;cursor:pointer;">Add/Change Pack</span>
                                    @endif
                                 </td>
                                 <td class="futuvpkcbi">{{$pr}}</td>
                                 <td><input type="text" placeholder="Quantity" value="{{$product['quantity']}}" class="form-control lrtkcrwunj"></td>
                                 <td align="right"><strong class="iwjpopkbcg">{{$pr*$product['quantity']}}</strong></td>
                                 @if($view!=1)
                                 <td align="right">
                                    <div class="btn btn-danger removeTr" data-id="{{$product['productId']}}">D</div>
                                 </td>
                                 @endif
                              </tr>
                              @endforeach
                              @endif
                              <tr>
                                 <td colspan="{{ $view==1 ? '4':'5' }}" align="right"><strong>Sub Total</strong></td>
                                 @if($view == 1)
                                 <td align="right"><strong>{{$order['subTotal']}}</strong></td>
                                 @else
                                 <td align="right"><strong>{{round($controller::cartSubTotalAdmin())}}</strong></td>
                                 @endif
                                 <td></td>
                              </tr>
                              <tr>
                                 <td colspan="{{ $view==1 ? '4':'5' }}" align="right"><strong>Delivery Charges</strong></td>
                                 @if($view == 1)
                                 <td align="right"><strong>{{$order['shipping']}}</strong></td>
                                 @else
                                 <td align="right"><strong>{{$controller::cartShippingAdmin()}}</strong></td>
                                 @endif
                                 <td></td>
                              </tr>
                              @if(!empty(Session::get("couponAdmin")))
                              @php($coupon = Session::get("couponAdmin"))
                              <tr>
                                 <td colspan="{{ $view==1 ? '4':'5' }}" align="right"><strong>Coupon ({{Session::get("couponAdmin")['couponValue']}})</strong></td>
                                 @if($view == 1)
                                 <td align="right"><strong>{{$coupon['value']}}</strong></td>
                                 @else
                                 <td align="right"><strong>{{round($coupon['value'])}}</strong></td>
                                 @endif
                                 <td></td>
                              </tr>
                              @else
                              @php($coupon['value'] = 0)
                              @endif
                              <tr>
                                 <td colspan="{{ $view==1 ? '4':'5' }}" align="right"><strong>Total</strong></td>
                                 @if($view == 1)
                                 <td align="right"><strong>{{$order['total']}}</strong></td>
                                 @else
                                 <td align="right"><strong>{{$controller::cartTotalAdmin()+$controller::cartShippingAdmin()}}</strong></td>
                                 @endif
                                 <td></td>
                              </tr>
                           </table>
                        </div>
                     </div>
                     <div style="padding:12px;">
                        <table class="table table-bordered">
                           <tr>
                              <td style="width:80%">
                                 <input type="text" class="form-control coupon" name="coupon" placeholder="Coupon" style="width:100%;" value="{{ !empty(Session::get("couponAdmin")) ? Session::get("couponAdmin")['coupon']:''}}">
                              </td>
                              <td align="right">
                                 @if($view!=1)
                                 <div class="btn btn-success applyCoupon" style="width:100%;padding: 10px;">Apply</div>
                                 @endif
                              </td>
                           </tr>
                           <tr>
                              <td colspan="2" style="width:100%">
                                 <label><strong>Payment Method</strong></label>
                                 <select class="select2 paymentMethod" name="paymentMethod">
                                 <option {{($update_id > 0 AND $order['paymentMethod']=='cod')?'selected':'' }} value="cod">Cash On Delivery</option>
                                 <option {{($update_id > 0 AND $order['paymentMethod']=='online')?'selected':'' }} value="online">Online</option>
                                 </select>
                              </td>
                           </tr>
                           <tr>
                              <td colspan="2" style="width:100%">
                                 <label><strong>Payment Status</strong></label>
                                 <select class="select2 paymentStatus" name="paymentStatus">
                                 <option {{($update_id > 0 AND $order['paymentStatus']=='0')?'selected':'' }} value="0">Not Paid</option>
                                 <option {{($update_id > 0 AND $order['paymentStatus']=='1')?'selected':'' }} value="1">Paid</option> 
                                 </select>
                              </td>
                           </tr>
                           <tr>
                              <td colspan="2" style="width:100%">
                                 <label><strong>Order Status</strong></label>
                                 <select class="select2 orderStatusId" name="orderStatusId">
                                 @foreach($orderStatus as $status)
                                 <option {{($update_id > 0 AND $order['orderStatusId']==$status['orderStatusId'])?'selected':'' }} value="{{$status['orderStatusId']}}">{{$status['heading']}}</option>
                                 @endforeach
                                 </select>
                              </td>
                           </tr>
                           <tr>
                              <td colspan="2" style="width:100%">
                                 <label><strong>Attach Prescription</strong></label>
                                 <input type="file" multiple name="prescription[]" class="form-control">
                                 @if($update_id > 0)
                                 @if(!empty(json_decode($order['prescription'],true)))
                                 <div class="relatedImages">
                                    @foreach(json_decode($order['prescription'],true) as $img)
                                    @if(file_exists($img))
                                    <div class="relatedImagesDiv" style="display: inline-block;">
                                       <div class="imageDiv">
                                          <img src="{{url('/')}}/{{$img}}" style="width:100px;height: 100px;border:1px solid #e5e5e5;margin-top:10px;">
                                          <input type="hidden" value="{{$img}}" name="prescription[]">
                                       </div>
                                       @if($view!=1)
                                       @if(isset($permission['edit']) AND $permission['edit']==1)
                                       <div class="btn btn-danger deleteImage" data-image="{{$img}}" style="margin: auto;text-align: center;margin-top: 10px;width:100px;font-size: 12px;">Delete</div>
                                       @endif
                                       @endif
                                    </div>
                                    @endif
                                    @endforeach
                                 </div>
                                 @else
                                 <div class="relatedImages"></div>
                                 @endif
                                 @else
                                 <div class="relatedImages"></div>
                                 @endif
                              </td>
                           </tr>
                           <tr>
                              <td colspan="2" style="width:100%">
                                 <div class="qpthuzffpt">
                                    @if($update_id > 0)
                                    @php($prescriptions = $controller::getDataWhere('prescription', "customerId", $order['customerId']))
                                      @if(!empty($prescriptions))
                                          <label><strong>Customer Uploaded Prescription</strong></label>
                                          <div>
                                          @foreach ($prescriptions as $prescription)
                                              @php($images = json_decode($prescription['image'], true))
                                              @foreach($images as $image)
                                                  @if(file_exists($image))
                                                      <img class="bnhvfkbjrc" data-image="{{$image}}" src="{{url('/')}}/{{$image}}" style="width:100px;height: 100px;border:1px solid #e5e5e5;margin-top:10px;">
                                                  @endif
                                              @endforeach
                                          @endforeach
                                          </div>
                                      @endif
                                    @endif
                                 </div>
                              </td>
                           </tr>
                        </table>
                        @if($view==0)
                        @if(isset($permission['edit']) AND $permission['edit']==1)
                        <input class="btn btn-info" type="submit" style="padding: 10px;width: 200px;margin-top: 20px;float: right;margin-bottom: 20px;" value="Save">
                        @endif
                        @endif
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
<div id="myModal" class="modal" role="dialog">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close closeModal" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Select Packs</h4>
         </div>
         <div class="modal-body">
            <table class="table table-bordered">
               <tr>
                  <th>Sno</th>
                  <th>Pack Name (Size)</th>
                  <th>Quantity Used</th>
                  <th>Price</th>
                  <th>Action</th>
               </tr>
               <tbody class="mxmujdhrle">
               </tbody>
            </table>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-danger closeModal" data-dismiss="modal">Close</button>
         </div>
      </div>
   </div>
</div>
<style type="text/css">
   .modal-dialog {
   max-width: 800px !important;
   }
</style>
<script type="text/javascript">
   var dataTableStatus = 1;
   var countColumns  = 7;
   var update_id = {{$update_id}};
   var views = {{$view}};
</script>
@endsection