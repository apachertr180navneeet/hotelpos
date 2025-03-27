@extends('admin.common.main')
@section('main-container')
<style>
   .vxurqawhsz{
   position: relative;
   }
   .bcmnykfmio{
   background: #fafafa;
   width:100%;
   position: absolute;
   z-index: 9999;
   display: none;
   }
   .jpcljhzbiw{
   padding: 10px;
   border-bottom: 1px solid #e5e5e5;
   cursor: pointer;
   }
   .jpcljhzbiw:hover{
   background:#d4d4d4;
   }
   .edit-profile .table>:not(:last-child)>:last-child>* {
   border: none; 
   }
   .yjcpesjsgl>:not(caption)>*>* {
   padding: 0rem !important; 
   }
</style>
<div class="page-body">
   <div class="container-fluid">
      <div class="edit-profile">
         <div class="row">
            <div class="col-xl-12">
               <form class="card" method="POST" id="purchaseForm">
                  <input type="hidden" value="{{$update_id}}" name="update_id">
                  <input type="hidden" value="{{csrf_token()}}" name="_token">
                  <div class="card-header pb-0">
                     <div class="row">
                        <div class="col-6 col-sm-6">
                           <h4 class="card-title mb-0">{{$controller::message("Add Purchase")}}</h4>
                        </div>
                        <div class="col-6 col-sm-6">
                           <a href="{{url("/")}}/admin/purchases" class="btn btn-danger jicrlyhywf pull-right">{{$controller::message("Back")}}</a>
                           <a href="javascript:void(0)" class="btn btn-info pull-right cuegvkzkbo" style="margin-right:10px;">{{$controller::message("Add Product")}}</a>
                        </div>
                     </div>
                  </div>
                  <div class="card-body">
                     <div class="row">
                        <label class="form-label" style="font-weight: bold;font-size:16px;">{{$controller::message("Basic Purchase InFormation")}}</label>
                        <div class="col-md-3">
                           <div class="mb-3">
                              <label class="form-label">{{$controller::message("Purchase Heading")}}<span class="required">*</span></label>
                              <input class="form-control mzfptujhyl" type="text" name="purchaseHeading" placeholder="Heading" value="{{$content['heading']}}">
                           </div>
                        </div>
                        <div class="col-md-3">
                           <div class="mb-3">
                              <label class="form-label">{{$controller::message("Refrence")}}</label>
                              <input class="form-control" type="text" name="refrence" placeholder="Refrence" value="{{$content['refrence']}}">
                           </div>
                        </div>
                        <div class="col-md-3">
                           <div class="mb-3">
                              <label class="form-label">{{$controller::message("Vendor")}}<span class="required">*</span></label>
                              <select class="form-control" name="vendorId">
                                 <option value="">{{$controller::message("Please Select")}}</option>
                                 @foreach($vendors as $vendor)
                                 <option {{ ($content['vendorId']==$vendor['vendorId'])?'selected':'' }} value="{{$vendor['vendorId']}}">{{$vendor['heading']}}</option>
                                 @endforeach
                              </select>
                           </div>
                        </div>
                        <div class="col-md-3">
                           <div class="mb-3">
                              <label class="form-label">{{$controller::message("Date")}}<span class="required">*</span></label>
                              <input class="form-control" type="date" name="date" placeholder="Date" value="{{$content['date']}}">
                           </div>
                        </div>
                        <div class="col-md-12">
                           <div class="mb-3">
                              <label class="form-label">{{$controller::message("Purchase Bill Type")}}<span class="required">*</span></label>
                              <select class="form-control" name="billType">
                                 <option {{ ($content['billType']==1)?'selected':'' }} value="1">{{$controller::message("Bill Type One")}}</option>
                                 <option {{ ($content['billType']==2)?'selected':'' }} value="2">{{$controller::message("Bill Type Two")}}</option>
                              </select>
                           </div>
                        </div>
                        <div class="col-md-12">
                           <div class="mb-3">
                              <label class="form-label" style="font-weight: bold;font-size:16px;">{{$controller::message("Quick Add Product")}}</label>
                              <div class="row">
                                 <div class="col-md-3">
                                    <label class="form-label">{{$controller::message("Heading")}}</label>
                                    <input type="text" name="heading" class="form-control sjhnfqntvl" placeholder="{{$controller::message("Heading")}}">
                                    <label class="form-label" style="margin-top:10px;">{{$controller::message("Barcode")}}</label>
                                    <input type="text" name="barcode" class="form-control sjhnfqntvl" placeholder="{{$controller::message("Barcode")}}">
                                    <label class="form-label" style="margin-top:10px;">{{$controller::message("Category")}}</label>
                                    <select class="form-control ooiunmuvvt" name="categoryId">
                                       <option value="">{{$controller::message("Please Select")}}</option>
                                       @foreach($categories as $category)
                                       <option value="{{ $category['categoryId'] }}">{{ $category['heading'] }}</option>
                                       @endforeach
                                    </select>
                                 </div>
                                 <div class="col-md-3">
                                    <label class="form-label">{{$controller::message("Cost")}}</label>
                                    <input type="text" name="cost" class="form-control sjhnfqntvl cdyedrdrhq isFloat" placeholder="{{$controller::message("Cost")}}">
                                    <label class="form-label" style="margin-top:10px;">{{$controller::message("Price")}}</label>
                                    <input type="text" name="price" class="form-control sjhnfqntvl isNatural nkahvzltsh" placeholder="{{$controller::message("Price")}}">
                                    <div class="btn btn-primary grunmikftv" style="width:92%;padding:10px;vertical-align: bottom;position: absolute;bottom: 0;">Submit</div>
                                 </div>
                                 <div class="col-md-3">
                                    <label class="form-label">{{$controller::message("Tax")}}</label>
                                    <select class="form-control sjhnfqntvl" name="taxId">
                                       <option value="">{{$controller::message("Select Tax")}}</option>
                                       @foreach($taxes as $tax)
                                       <option {{($settings['defaultTaxId']==$tax['taxId'])?'selected':''}} value="{{$tax['taxId']}}">{{$tax['heading']}}</option>
                                       @endforeach
                                    </select>
                                    <label class="form-label" style="margin-top:10px;">{{$controller::message("Tax Type")}}</label>
                                    <select class="form-control sjhnfqntvl" name="taxType">
                                       <option value="">{{$controller::message("tax Type")}}</option>
                                       <option {{($settings['defaultTaxType']=='Exclusive')?'selected':''}} value="Exclusive">{{$controller::message("Exclusive")}}</option>
                                       <option {{($settings['defaultTaxType']=='Inclusive')?'selected':''}} value="Inclusive">{{$controller::message("Inclusive")}}</option>
                                    </select>
                                 </div>
                                 <div class="col-md-3" style="position: relative;">
                                    <label class="form-label">{{$controller::message("Percent")}}</label>
                                    <input type="text" name="percent" class="form-control sjhnfqntvl zrdibunyig" placeholder="{{$controller::message("Percent")}}">
                                    <label class="form-label" style="margin-top:10px;">{{$controller::message("HSN Code")}}</label>
                                    <input type="text" name="hsnCode" class="form-control dbsdbjarfm rbzdhwsomg" placeholder="{{$controller::message("HSN Code")}}">
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-12">
                           <div class="mb-3">
                              <label class="form-label" style="font-weight: bold;font-size:16px;">{{$controller::message("Auto Suggestive Search")}}</label>
                              <div class="vxurqawhsz">
                                 <input type="text" class="form-control pnaekqlgpu" placeholder="{{$controller::message("Auto Suggestive Search")}}">
                                 <div class="bcmnykfmio"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-md-12">
                           <div class="urahyuwwmn">
                              @php($width = '15%')
                              <table class="table table-bordered">
                                 <tr>
                                    <th>{{$controller::message("Sno")}}</th>
                                    <th>{{$controller::message("Heading/Barcode/Model")}}</th>
                                    <th>{{$controller::message("Tax")}}</th>
                                    <th align="right">
                                       <div  style="text-align:right">{{$controller::message("Quantity")}}</div>
                                    </th>
                                    <th align="right">
                                       <div  style="text-align:right">{{$controller::message("Cost")}}</div>
                                    </th>
                                    <th align="right">
                                       <div  style="text-align:right">{{$controller::message("Total")}}</div>
                                    </th>
                                    <th align="right">
                                       <div  style="text-align:right">{{$controller::message("Action")}}</div>
                                    </th>
                                 </tr>
                                 <tbody class="ywnxwtxvem">
                                    @php($i = 1)
                                    @if(!empty(Session::get("purchaseCart")))
                                    @php($products = array_reverse(Session::get("purchaseCart")))
                                    @foreach($products as $product)
                                    <tr class="vfvdmmbulv" data-id="{{$product['productId']}}">
                                       <td style="width:6.66%">{{$i}}</td>
                                       <td style="width:{{$width}}">{{$product['heading']}}<br>{{$product['barcode']}}<br>{{$product['model']}}</td>
                                       <td style="width:{{$width}}">
                                          @if($product['taxId'] > 0)
                                          <div><strong>Tax Heading</strong> : {{$product['taxHeading']}}</div>
                                          <div><strong>Tax Percent</strong> : {{$product['taxPercent']}}%</div>
                                          <div><strong>Tax Amount</strong> : <span class="symbol">{{round($product['tax'],2)}}</span></div>
                                          <div style="margin-top:5px;"><strong style="margin-bottom:5px;">{{$controller::message("Update Tax")}}</strong>
                                             <select class="form-control xsxebbmlkw" name="taxId" data-id="{{$product['productId']}}">
                                             @foreach($taxes as $tax)
                                             <option {{ ($product['taxId'] == $tax['taxId'])?'selected':'' }}  value="{{$tax['taxId']}}">{{$tax['heading']}}</option>
                                             @endforeach
                                             </select>
                                          </div>
                                          <div style="margin-top:5px;"><strong style="margin-bottom:5px;">{{$controller::message("Tax Type")}}</strong>
                                             <select class="form-control umnoiilcdp" data-id="{{$product['productId']}}">
                                             <option {{ ($product['taxType']=='Exclusive')?'selected':'' }}>Exclusive</option>
                                             <option {{ ($product['taxType']=='Inclusive')?'selected':'' }}>Inclusive</option>
                                             </select>
                                          </div>
                                          @endif
                                       </td>
                                       <td style="width:{{$width}}"><input type="text" class="form-control rbvacamrpi" data-id="{{$product['productId']}}" id="rbvacamrpi{{$product['productId']}}}" value="{{$product['quantity']}}"></td>
                                       <td style="width:{{$width}}"><input type="text" class="form-control uazwgwilhi" data-id="{{$product['productId']}}" id="uazwgwilhi{{$product['productId']}}" value="{{$product['cost']}}"></td>
                                       <td style="width:{{$width}}" align="right">
                                          <div style="text-align:right" class="wfhhkvryvb" id="wfhhkvryvb{{$product['productId']}}" data-id="{{$product['productId']}}">{{$product['cost']*$product['quantity']}}</div>
                                       </td>
                                       <td style="width:{{$width}}" align="right">
                                          <div  style="text-align:right">
                                             <div class="btn btn-danger ulknpowlqk" data-id="{{$product['productId']}}" id="rlqjlbywrz{{$product['productId']}}"><i class="fa fa-trash" aria-hidden="true"></i></div>
                                          </div>
                                       </td>
                                    </tr>
                                    @php($i++)
                                    @endforeach
                                    @endif
                                 </tbody>
                              </table>
                              <table class="table table-bordered">
                                 <tr>
                                    <td width="75%">
                                        <textarea style="height:100px;margin-bottom:15px;width:100%;resize: none;" class="form-control fxpicsulhl" name="comment" placeholder="Comment">{{$content['comment']}}</textarea>
                                       <div class="fayczggbbp" style="font-size:100px !important;width:100%;background:#fafafa;color:#ae69f5;text-align:center;padding: 20px;">0</div>
                                    </td>
                                    <td>
                                       <table class="table table-bordered yjcpesjsgl">
                                       </table>
                                    </td>
                                 </tr>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="card-footer text-end">
                     @if(isset($permission['edit']) AND $permission['edit']==1)
                     <button class="btn btn-primary wugugpchjn" type="submit">{{$controller::message("Save")}}</button>
                     @endif
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
@include('admin.common.purchase-popup')
<script type="text/javascript">
   var dataTableStatus = "0";
</script>

@endsection