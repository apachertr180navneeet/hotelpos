<div id="addCustomerModal" class="modal fade" role="dialog">
   <div class="modal-dialog modal-xl">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="hsmebjmxlg" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">{{$controller::message("Add Customer")}}</h4>
         </div>
         <div class="modal-body">
            {{$controller::generateModuleData(21)}}
         </div>
      </div>
   </div>
</div>
<div id="addExtraInformationModal" class="modal fade" role="dialog">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="wjrqsbgwqr" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">{{$controller::message("Add Extra Info")}}</h4>
         </div>
         <div class="modal-body">
            <input type="hidden" name="productId" class="udqoycldon" value="0">
            <textarea class="form-control qqhkrzdwvr" style="height:100px;"></textarea>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-primary eknchfanuv" data-dismiss="modal">{{$controller::message("Save")}}</button>
         </div>
      </div>
   </div>
</div>
<div id="dashboardModal" class="modal fade" role="dialog">
   <div class="modal-dialog modal-xl">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="exyezprljc" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">{{$controller::message("Checkout")}}</h4>
         </div>
         <div class="modal-body">
            <div class="flexContainer">
               <div class="flexDiv pgudfhnmty">
                  <h6 class="mljalvnltj">{{$controller::message("Payment Mode")}}</h6>
                  <ul>
                     @php($jsonToArray = json_decode($payments[0]['payments'],true))
                     @foreach($jsonToArray as $payment)
                     @php($payment = $controller::getDataWhere("payments","paymentId",$payment))
                     @if(!empty($payment[0]))
                     <li class="hazsdirwkr{{ ($payments[0]['default']==$payment[0]['paymentId'])?' kxbkwzcope':'' }}{{ ($globalSettings['multiplePaymentMethod']==$payment[0]['paymentId'])?' txyksvijpk':'' }}{{ ($globalSettings['creditPaymentMethod']==$payment[0]['paymentId'])?' bemkbvwzho':'' }}{{ ($globalSettings['returnPaymentMethod']==$payment[0]['paymentId'])?' alvmhekcpj':'' }}" data-id="{{$payment[0]['paymentId']}}">{{$payment[0]['name']}}</li>
                     @endif
                     @endforeach
                  </ul>
                  <div class="bmhwaxmrap">
                     <h6 class="mljalvnltj entujzxqqu">{{$controller::message("Multiple Payments")}}</h6>
                     <table class="tfzcwradvp">
                        <tr class="dhczlwwitd">
                           <td width="80%">
                              <h6 class="mljalvnltj entujzxqqu">{{$controller::message("Payment Mode")}}</h6>
                              <select class="form-control tfzcwradvp">
                                 @foreach($jsonToArray as $payment)
                                 @php($payment = $controller::getDataWhere("payments","paymentId",$payment))
                                 @if(!empty($payment[0]))
                                 <option value="{{$payment[0]['paymentId']}}">{{$payment[0]['name']}}</option>
                                 @endif
                                 @endforeach
                              </select>
                           </td>
                           <td width="40%">
                              <h6 class="mljalvnltj entujzxqqu">{{$controller::message("Amount")}}</h6>
                              <input type="text" class="form-control dxzhvatgkq" value="0">
                           </td>
                           <td width="20%" class="hyvilgkkno">
                              <div class="btn btn-primary oopqnjttiw">+</div>
                           </td>
                        </tr>
                        <tbody class="paatkzwsbf">
                        </tbody>
                        <tr>
                           <td colspan="3">
                              <div class="btn btn-primary scnqjwalyl">{{$controller::message("Save")}}</div>
                           </td>
                        </tr>
                     </table>
                  </div>
                  <h6 class="mljalvnltj entujzxqqu">{{$controller::message("Additional Costs")}}</h6>
                  <div class="jcrzyvykvc">
                     <table class="gilewlrupy">
                        @if(!empty(Session::get('additionalCharges')))
                        @php($i = 0)
                        @foreach(Session::get('additionalCharges') as $key => $extraCost)
                        @if($i == 0)
                        <tr class="jlpydkiuvl">
                           <td width="40%">
                              <h6 class="mljalvnltj entujzxqqu">{{$controller::message("Label")}}</h6>
                              <input type="text" class="form-control adtqciqetx" value="{{$key}}">
                           <td width="40%">
                              <h6 class="mljalvnltj entujzxqqu">{{$controller::message("Amount")}}</h6>
                              <input type="text" class="form-control ebvjekillz" value="{{$extraCost}}">
                           </td>
                           <td width="20%" class="nshasolzqx">
                              <div class="btn btn-primary tnqnlhuldn">+</div>
                           </td>
                        </tr>
                        <tbody class="jmuhdzdnhr">
                           @else
                           <tr class="jlpydkiuvl">
                              <td width="40%">
                                 <h6 class="mljalvnltj entujzxqqu">{{$controller::message("Label")}}</h6>
                                 <input type="text" class="form-control adtqciqetx" value="{{$key}}">
                              <td width="40%">
                                 <h6 class="mljalvnltj entujzxqqu">{{$controller::message("Amount")}}</h6>
                                 <input type="text" class="form-control ebvjekillz" value="{{$extraCost}}">
                              </td>
                              <td width="20%" class="nshasolzqx">
                                 <div class="btn btn-warning awozixezld">-</div>
                              </td>
                           </tr>
                           @endif
                           @php($i++)
                           @endforeach
                        </tbody>
                        @else
                        <tr class="jlpydkiuvl">
                           <td width="40%">
                              <h6 class="mljalvnltj entujzxqqu">{{$controller::message("Label")}}</h6>
                              <input type="text" class="form-control adtqciqetx" value="">
                           <td width="40%">
                              <h6 class="mljalvnltj entujzxqqu">{{$controller::message("Amount")}}</h6>
                              <input type="text" class="form-control ebvjekillz" value="0">
                           </td>
                           <td width="20%" class="nshasolzqx">
                              <div class="btn btn-primary tnqnlhuldn">+</div>
                           </td>
                        </tr>
                        <tbody class="jmuhdzdnhr">
                        </tbody>
                        @endif
                        <tr>
                           <td colspan="3">
                              <div class="btn btn-primary ytjeufczfu">{{$controller::message("Save")}}</div>
                           </td>
                        </tr>
                     </table>
                  </div>
               </div>
               <div class="flexDiv pgudfhnmty">
                  <h6 class="mljalvnltj entujzxqqu">{{$controller::message("Global Discount")}}</h6>
                  <table class="lvwcexokos">
                     <tr>
                        <td width="80%">
                           <input type="text" class="form-control ykmnjpxvoj" value="{{ (!empty(Session::get('cartGlobalDiscount')))?Session::get('cartGlobalDiscount')['discount']:'0' }}">
                        </td>
                        <td>
                           <div class="btn  btn-primary vcifezirdo">{{$controller::message("Apply")}}</div>
                        </td>
                     </tr>
                  </table>
                  <div class="aasbmvllel">
                     <table class="jtoweyfypd oesmgitduc">
                        <tr>
                           <td width="70%" class="prtduitanr">{{$controller::message("Total Items In Cart")}}</td>
                           <td style="vertical-align:top;text-align:right;" class="gejarqqfgd akbmamllxh">{{  $cartTotalArray['totalItemsInCart'] }}</td>
                        </tr>
                        <tr>
                           <td width="70%" class="prtduitanr">{{$controller::message("Total Quantity In Cart")}}</td>
                           <td style="vertical-align:top;text-align:right;" class="fchdbybagj akbmamllxh">{{  $cartTotalArray['totalQuantityInCart'] }}</td>
                        </tr>
                        <tr>
                           <td width="70%" class="prtduitanr">{{$controller::message("Sub Total")}}</td>
                           <td style="vertical-align:top;text-align:right;" class="symbol tkhqljglpj akbmamllxh">{{  $cartTotalArray['subTotal'] }}</td>
                        </tr>
                        <tr>
                           <td width="70%" class="prtduitanr">{{$controller::message("Product Discount")}}</td>
                           <td style="vertical-align:top;text-align:right;" class="symbol jhswgwguhq akbmamllxh">{{  $cartTotalArray['productDiscount'] }}</td>
                        </tr>
                        @if($enableTaxes == 1)
                        <tr>
                           <td width="70%" class="prtduitanr">{{$controller::message("Tax")}}</td>
                           <td style="vertical-align:top;text-align:right;" class="symbol somxmhodzr akbmamllxh">{{  $cartTotalArray['tax'] }}</td>
                        </tr>
                        @endif
                        @if($enableRewardPoints == 1)
                        <tr>
                           <td width="70%" class="prtduitanr">{{$controller::message("Reward Point Earned")}}</td>
                           <td style="vertical-align:top;text-align:right;" class="rgicmfwsdb akbmamllxh">{{$cartTotalArray['rewardPoints']}}</td>
                        </tr>
                        <tr>
                           <td width="70%" class="prtduitanr">{{$controller::message("Reward Point Used")}} (<span class="nrbnjzmpxy">0</span>)</td>
                           <td style="vertical-align:top;text-align:right;" class="zbetohaqje akbmamllxh">
                              <input type="text" class="form-control faqsvztvml isNumeric" value="0">
                           </td>
                        </tr>
                        @endif
                        <tbody class="utslibohbo">
                           @if(!empty(Session::get('additionalCharges')))
                           @foreach(Session::get('additionalCharges') as $key => $extraCost)
                           <tr>
                              <td width="70%" class="prtduitanr">
                                 {{ $key }} (<span data-key="{{ $key }}" class="hgwajgrogq">Remove</span>)
                              </td>
                              <td style="vertical-align:top;text-align:right;" class="symbol jmsxcnsuet akbmamllxh">{{$extraCost}}</td>
                           </tr>
                           @endforeach
                           @endif
                        </tbody>
                        @if(!empty(Session::get('cartGlobalDiscount')))
                        <tr class="fvwuionill">
                           <td width="70%" class="prtduitanr">{{$controller::message("Global Discount")}} (<span class="xuphzwvpxk">{{Session::get('cartGlobalDiscount')['discount']}}</span>)</td>
                           <td style="vertical-align:top;text-align:right;" class="symbol petxwuyzfd akbmamllxh">{{Session::get('cartGlobalDiscount')['discountValue']}}</td>
                        </tr>
                        @endif
                        <tr>
                           <td width="70%" class="prtduitanr">
                              <div class="nfhmtqrhis">{{$controller::message("Total")}}</div>
                           </td>
                           <td style="vertical-align:top;text-align:right;">
                              <div class="nfhmtqrhis symbol jjtopmmhob akbmamllxh">{{ round($cartTotalArray['total']) }}</div>
                           </td>
                        </tr>
                        <tr>
                           <td colspan="2">
                              <div class="flexContainer">
                                 @if($restaurant == 1)
                                 <div class="flexDiv sfzwektros">
                                    <div class="lnwfprddkt whcannpbwk" data-id="sendToKot">{{$controller::message("Send To Kot")}}</div>
                                 </div>
                                 @endif
                                 <div class="flexDiv{{ ($restaurant == 1)?' sfzwektros':' gbkpyhjojf'}}">
                                    <div class="lbwvznktnd" data-id="finalCheckout">{{$controller::message("Final Checkout")}}</div>
                                 </div>
                              </div>
                           </td>
                        </tr>
                     </table>
                  </div>
                  @include('admin.common.pos-total-cart')
               </div>
            </div>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-primary exyezprljc" data-dismiss="modal">{{$controller::message("Close")}}</button>
         </div>
      </div>
   </div>
</div>