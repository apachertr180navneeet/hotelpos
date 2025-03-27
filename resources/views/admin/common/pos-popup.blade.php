<div id="returnProduct" class="modal fade" role="dialog" style="">
   <div class="modal-dialog modal-xl">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="cfllymijhi" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">{{$controller::message("Return Product")}}</h4>
         </div>
         <div class="modal-body" id="rkuuefljil">
            <table class="table table-bordered">
               <tr>
                  <td colspan="5">
                     <label style="display:block;margin-bottom: 10px;">{{$controller::message("Select Order ID")}}</label>
                     <select class="form-control magztvvntu">
                        <option value="">Please Select</option>
                        @foreach($customerOrders as $order)
                           <option value="{{$order['orderId']}}">{{$order['orderId']}}</option>
                        @endforeach
                     </select>
                  </td>
               </tr>
               <tr>
                     <td width="30%"><strong>Sno</strong></td>
                     <td width="30%"><strong>Name/Model/Barcode</strong></td>
                     <td width="30%"><strong>Quantity</strong></td>
                     <td width="30%"><strong>Total</strong></td>
                     <td width="10%"><strong>Action</strong></td>
                  </tr>
               <tbody class="qawqaxmgvo">
                  
               </tbody>
               <tfoot>
                  <tr>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td><strong>Return Total</strong></td>
                     <td><strong class="rwnymzicvx">0</strong></td>
                  </tr>
                  <tr>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td><strong>Quantity Return</strong></td>
                     <td><strong class="ssrvxmxehc">0</strong></td>
                  </tr>
                  <tr>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td><strong>Total</td>
                     <td><strong class="tlzxifeqcb">0</strong></td>
                  </tr>
               </tfoot>
            </table>
            <div class="row">
               <div class="col-md-12">
                  <label>Add Amount In Customer Wallet</label>
                  <input type="checkbox" value="1" class="bgvdmjqjmo" checked>
               </div>
            </div>
            <div class="row">
               <div class="col-md-12">
                  <div class="btn btn-primary ipysmrmfcu" style="float: right;">Submit</div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<div id="hotelRoomChangeModal" class="modal fade" role="dialog" style="z-index:9999">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="girwfcwari" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">{{$controller::message("Change Room")}}</h4>
         </div>
         <div class="modal-body">
            <table class="table table-bordered">
               <tr>
                  <td>
                     <label>{{$controller::message("Select Room")}}</label>
                     <select class="form-control jkuhyjkszh">
                        <option value="">{{$controller::message("Please Select")}}</option>
                        @foreach($hotelRooms as $room)
                        @if(!in_array($room['productId'],$hotelBooked))
                        <option value="{{$room['productId']}}">{{$room['heading']}}</option>
                        @endif
                        @endforeach
                     </select>
                  </td>
               </tr>
            </table>
         </div>
      </div>
   </div>
</div>
<div id="getProductDetail" class="modal fade" role="dialog">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="yedwbcchno" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">{{$controller::message("Product Detail")}}</h4>
         </div>
         <div class="modal-body">
            <table class="table table-bordered">
               <tbody class="kgqvcmzywj">
               </tbody>
            </table>
         </div>
      </div>
   </div>
</div>
<div id="sendReminderToCustomer" class="modal fade" role="dialog">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="etjvtpjmmc" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">{{$controller::message("Send Reminder To Customer")}}</h4>
         </div>
         <div class="modal-body">
            <div class="flexContainer">
               <div class="flexDiv">
                  <div class="dosnmdzkhr" data-value="whatsapp">Send Whatsapp</div>
               </div>
               <div class="flexDiv">
                  <div class="dosnmdzkhr" data-value="sms">Send SMS</div>
               </div>
               <div class="flexDiv">
                  <div class="dosnmdzkhr" data-value="email">Send Email</div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<div id="skipRewardOtpModal" class="modal fade" role="dialog">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="jojluqojvi" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">{{$controller::message("Skip OTP")}}</h4>
         </div>
         <div class="modal-body">
            <label style="margin-bottom:10px;font-size:12px;">Enter Reason For Skipping OTP</label>
            <textarea class="form-control ppupypyhzm" style="height:100px;resize: none;"></textarea>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-warning pfpabpuwbr">{{$controller::message("Skip OTP")}}</button>
         </div>
      </div>
   </div>
</div>
<div id="hotelRoomPopup" class="modal fade" data-keyboard="false" data-backdrop="static" role="dialog">
   <div class="modal-dialog modal-xl">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="ohfsnpyslb" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">{{$controller::message("Hotel Room")}}</h4>
         </div>
         <form id="hotelRoomForm" enctype='multipart/form-data'>
            <div class="modal-body rihsazkopq">
               <input type="hidden" name="productId" class="wimdghlgbo">
               <div class="row ewhwqdukhc">
                  <div class="col-md-10"></div>
                  <div class="col-md-2">
                     <!-- <div class="btn btn-warning jtjtsutclm" style="width:100%">Change Room</div> -->
                  </div>
               </div>
               <div class="row ewhwqdukhc">
                  <div class="col-md-6">
                     <label style="margin-top:10px;margin-bottom:5px;font-size:12px;">Check In Date</label>
                     <input type="date" class="form-control mjyozxoavc" name="dateCheckIn" value="{{ (Session::get('hotelRoom')!='')?Session::get('hotelRoom')['post']['dateCheckIn']:date('Y-m-d')}}">
                  </div>
                  <div class="col-md-6">
                     <label style="margin-top:10px;margin-bottom:5px;font-size:12px;">Check Out Date</label>
                     <input type="date" readonly class="form-control bmehnirpbl" name="dateCheckOut" value="{{ (Session::get('hotelRoom')!='')?Session::get('hotelRoom')['post']['dateCheckOut']:''}}">
                  </div>
               </div>
               <div class="row ewhwqdukhc">
                  <div class="col-md-6">
                     <label style="margin-top:10px;margin-bottom:5px;font-size:12px;">Check In Time</label>
                     <input type="time" class="form-control uodrmvyjkh" name="timeCheckIn" value="{{ (Session::get('hotelRoom')!='')?Session::get('hotelRoom')['post']['timeCheckIn']:date('H:i')}}">
                  </div>
                  <div class="col-md-6">
                     <label style="margin-top:10px;margin-bottom:5px;font-size:12px;">Check Out Time</label>
                     <input type="time" readonly class="form-control ixojsjdgxu" name="timeCheckOut" value="{{ (Session::get('hotelRoom')!='')?Session::get('hotelRoom')['post']['timeCheckOut']:''}}">
                     <div class="btn btn-primary ipauryfora" style="margin-top: 10px;float: right;">Check Out</div>
                  </div>
               </div>
               @if(Session::get('hotelRoom')!='')
               @php($jsonPersonName = Session::get('hotelRoom')['post']['personName'])
               @php($jsonPersonId = Session::get('hotelRoom')['post']['personId'])
               @php($a = 1)
               @if(count($jsonPersonName) > 0)
               @for($i=0;$i<count($jsonPersonName);$i++)
               <div class="row pgllwrffif">
                  <div class="col-md-5">
                     <label style="margin-top:10px;margin-bottom:5px;font-size:12px;">Person <span class="uculleyxsr">{{$a}}</span></label>
                     <input type="text" class="form-control jsjdxwinf" name="personName[{{$i}}]" value="{{$jsonPersonName[$i]}}">
                  </div>
                  <div class="col-md-5">
                     <label style="margin-top:10px;margin-bottom:5px;font-size:12px;">ID <span class="difulkxnxi">{{$a}}</span></label>
                     <input type="file" class="form-control didxspkza" name="personId[{{$i}}]">
                     @if(isset($jsonPersonId[$i]) AND $jsonPersonId[$i]!='')
                     <div class="lmewsgjooz">
                        <img src="{{$controller::image($jsonPersonId[$i])}}" class="xjnassalrt xjnassalrt{{$i}}" style="width:120px;height:75px;margin-top:10px;">
                        <input type="hidden" class="form-control mnqtrtvhuo" name="personIdSaved[{{$i}}]" value="{{$jsonPersonId[$i]}}">
                     </div>
                     @endif
                  </div>
                  <div class="col-md-2">
                     <label style="margin-top:10px;margin-bottom:5px;font-size:12px;">&nbsp;</label>
                     @if($a == 1)
                     <div class="btn btn-primary zzimskzjbd" style="width:100%">+</div>
                     @else
                     <div class="btn btn-warning iogimlsqtl" style="width:100%">-</div>
                     @endif
                  </div>
               </div>
               @php($a++)
               @endfor
               @else
               <div class="row pgllwrffif">
                  <div class="col-md-5">
                     <label style="margin-top:10px;margin-bottom:5px;font-size:12px;">Person <span class="uculleyxsr">1</span></label>
                     <input type="text" class="form-control jsjdxwinf" name="personName[0]">
                  </div>
                  <div class="col-md-5">
                     <label style="margin-top:10px;margin-bottom:5px;font-size:12px;">ID <span class="difulkxnxi">1</span></label>
                     <input type="file" class="form-control didxspkza" name="personId[0]">
                     <div class="lmewsgjooz"></div>
                  </div>
                  <div class="col-md-2">
                     <label style="margin-top:10px;margin-bottom:5px;font-size:12px;">&nbsp;</label>
                     <div class="btn btn-primary zzimskzjbd" style="width:100%">+</div>
                  </div>
               </div>
               @endif
               @else
               <div class="row pgllwrffif">
                  <div class="col-md-5">
                     <label style="margin-top:10px;margin-bottom:5px;font-size:12px;">Person <span class="uculleyxsr">1</span></label>
                     <input type="text" class="form-control jsjdxwinf" name="personName[0]">
                  </div>
                  <div class="col-md-5">
                     <label style="margin-top:10px;margin-bottom:5px;font-size:12px;">ID <span class="difulkxnxi">1</span></label>
                     <input type="file" class="form-control didxspkza" name="personId[0]">
                     <div class="lmewsgjooz"></div>
                  </div>
                  <div class="col-md-2">
                     <label style="margin-top:10px;margin-bottom:5px;font-size:12px;">&nbsp;</label>
                     <div class="btn btn-primary zzimskzjbd" style="width:100%">+</div>
                  </div>
               </div>
               @endif
            </div>
            <div class="modal-footer">
               <button type="submit" class="btn btn-primary jslrjbfjfz">{{$controller::message("Attach Details")}}</button>
            </div>
         </form>
      </div>
   </div>
</div>
<div id="otpToUseRewardModal" class="modal fade" role="dialog">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="nrfxvbmuzf" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">{{$controller::message("Enter OTP")}}</h4>
         </div>
         <div class="modal-body">
            <label style="margin-bottom:10px;font-size:12px;">Enter OTP</label>
            <input type="text" class="form-control mznpuwzcoo" readonly value="" placeholder="{{$controller::message("Enter OTP")}}">
            <span class="lqdknzeigq" style="color:green">OTP Sent</span>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-success yucjolghct">{{$controller::message("Send OTP")}}</button>
            <button type="button" class="btn btn-primary rfilpekahi">{{$controller::message("Submit OTP")}}</button>
         </div>
      </div>
   </div>
</div>
<div id="changePriceModal" class="modal fade" role="dialog">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="xyuguqfqxo" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">{{$controller::message("Change Price")}}</h4>
         </div>
         <div class="modal-body">
            <input type="hidden" name="productId" class="nonmxmvurw" value="0">
            <input type="text" class="form-control mznpuwzcoo" value="0" placeholder="New Price">
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-primary oavyfxaopn">{{$controller::message("Change")}}</button>
         </div>
      </div>
   </div>
</div>
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
<div id="addPaymentToCustomer" class="modal fade" role="dialog">
   <div class="modal-dialog modal-xl">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="egdmkczybf" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">{{$controller::message("Payment In-Out")}}</h4>
         </div>
         <div class="modal-body">
            {{$controller::generateModuleData(35)}}
         </div>
      </div>
   </div>
</div>
<div id="amountPaidToTheCustomer" class="modal fade" role="dialog">
   <div class="modal-dialog modal-xl">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="thpvhuvazk" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">{{$controller::message("Amount Paid To The Customer")}}</h4>
         </div>
         <div class="modal-body">
            {{$controller::generateModuleData(46)}}
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
            @if(!empty($comments))
            <label>Select Comment</label>
            <select class="form-control qqhkrzdwvr">
               <option value="">Please Select</option>
               @foreach($comments as $comment)
               <option>{{$comment['comment']}}</option>
               @endforeach
            </select>
            <div style="text-align: center;margin-top:20px;">OR</div>
            <label style="margin-top:10px;">Write Comment</label>
            <textarea class="form-control zhbckfjebb" style="resize:none;height:80px;"></textarea>
            @endif
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-primary eknchfanuv" data-dismiss="modal">{{$controller::message("Save")}}</button>
         </div>
      </div>
   </div>
</div>
<div id="orderTotalModal" class="modal fade" role="dialog">
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
                     <li class="hazsdirwkr{{ (!empty(Session::get("paymentId")) AND Session::get("paymentId")['paymentId']==$payment[0]['paymentId'])?' kxbkwzcope':'' }}{{ (empty(Session::get("paymentId")) AND $payments[0]['default']==$payment[0]['paymentId'])?' kxbkwzcope':'' }}{{ ($globalSettings['multiplePaymentMethod']==$payment[0]['paymentId'])?' txyksvijpk':'' }}{{ ($globalSettings['creditPaymentMethod']==$payment[0]['paymentId'])?' bemkbvwzho':'' }}{{ ($globalSettings['returnPaymentMethod']==$payment[0]['paymentId'])?' alvmhekcpj':'' }}" data-id="{{$payment[0]['paymentId']}}">{{$payment[0]['name']}}</li>
                     @endif
                     @endforeach
                  </ul>
                  <div class="bmhwaxmrap" style="{{ (!empty(Session::get("paymentId")) AND Session::get("paymentId")['paymentId']==$globalSettings['multiplePaymentMethod'])?'display:block':'' }}">
                  <h6 class="mljalvnltj entujzxqqu">{{$controller::message("Multiple Payments")}}</h6>
                  <span class="gkvhzjmrjr">Do no use payment mode multiple times.</span>
                  <table class="tfzcwradvp">
                     @if(!empty(Session::get('multiple')))
                     @php($i = 0)
                     @foreach(Session::get('multiple') as $key => $extraCost)
                     @if($i == 0)
                     <tr class="dhczlwwitd">
                        <td width="80%">
                           <h6 class="mljalvnltj entujzxqqu">{{$controller::message("Payment Mode")}}</h6>
                           <select class="form-control zhfrtvawty">
                           @foreach($jsonToArray as $payment)
                           @php($payment = $controller::getDataWhere("payments","paymentId",$payment))
                           @if(!empty($payment[0]))
                           <option  {{ ($key == $payment[0]['paymentId'])?'selected':'' }} value="{{$payment[0]['paymentId']}}">{{$payment[0]['name']}}</option>
                           @endif
                           @endforeach
                           </select>
                        </td>
                        <td width="40%">
                           <h6 class="mljalvnltj entujzxqqu">{{$controller::message("Amount")}}</h6>
                           <input type="text" class="form-control dxzhvatgkq" value="{{$extraCost}}">
                        </td>
                        <td width="20%" class="hyvilgkkno">
                           <div class="btn btn-primary oopqnjttiw">+</div>
                        </td>
                     </tr>
                     <tbody class="paatkzwsbf">
                        @else
                        <tr class="dhczlwwitd">
                           <td width="80%">
                              <h6 class="mljalvnltj entujzxqqu">{{$controller::message("Payment Mode")}}</h6>
                              <select class="form-control zhfrtvawty">
                              @foreach($jsonToArray as $payment)
                              @php($payment = $controller::getDataWhere("payments","paymentId",$payment))
                              @if(!empty($payment[0]))
                              <option {{ ($key == $payment[0]['paymentId'])?'selected':'' }} value="{{$payment[0]['paymentId']}}">{{$payment[0]['name']}}</option>
                              @endif
                              @endforeach
                              </select>
                           </td>
                           <td width="40%">
                              <h6 class="mljalvnltj entujzxqqu">{{$controller::message("Amount")}}</h6>
                              <input type="text" class="form-control dxzhvatgkq" value="{{$extraCost}}">
                           </td>
                           <td width="20%" class="nshasolzqx">
                              <div class="btn btn-warning wssoxkvqbf">-</div>
                           </td>
                        </tr>
                        @endif
                        @php($i++)
                        @endforeach
                     </tbody>
                     @else
                     <tr class="dhczlwwitd">
                        <td width="80%">
                           <h6 class="mljalvnltj entujzxqqu">{{$controller::message("Payment Mode")}}</h6>
                           <select class="form-control zhfrtvawty">
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
                     @endif
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
                           <select class="form-control adtqciqetx">
                           @foreach($additionalCharges as $additional)
                           <option {{ ($key == $additional['heading'])?'selected':'' }} value="{{$additional['heading']}}">{{$additional['heading']}}</option>
                           @endforeach
                           </select>
                        </td>
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
                              <select class="form-control adtqciqetx">
                              @foreach($additionalCharges as $additional)
                              <option {{ ($key == $additional['heading'])?'selected':'' }} value="{{$additional['heading']}}">{{$additional['heading']}}</option>
                              @endforeach
                              </select>
                           </td>
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
                           <select class="form-control adtqciqetx">
                              @foreach($additionalCharges as $additional)
                              <option value="{{$additional['heading']}}">{{$additional['heading']}}</option>
                              @endforeach
                           </select>
                        </td>
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
               <div class="zhyfsywkco" style="margin-top:10px;">
                  <table class="table table-bordered">
                     <tr>
                        <td>
                           <label>Comment</label>
                           <textarea class="form-control vtevgyicqb" name="posComment"></textarea>
                        </td>
                     </tr>
                     <tr>
                        <td>
                           <label>Image Upload</label>
                           <input type="file" name="posImage" class="form-control cfqsyiujrf">
                        </td>
                     </tr>
                     <tr>
                        <td>
                           <label>Delivery Date</label>
                           <input type="date" name="deliveryDate" class="form-control tjksphrcmh">
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
                        <input type="text" class="form-control ykmnjpxvoj percentage" value="{{ (!empty(Session::get('cartGlobalDiscount')))?Session::get('cartGlobalDiscount')['discount']:'0' }}">
                     </td>
                     <td>
                        <div class="btn  btn-primary vcifezirdo">{{$controller::message("Apply")}}</div>
                     </td>
                  </tr>
               </table>
               @include('admin.common.pos-total-cart')
            </div>
         </div>
      </div>
   </div>
</div>
</div>
<div id="runningOrderModal" class="modal fade" role="dialog">
   <div class="modal-dialog modal-xl">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="eyhittgdbt" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">{{$controller::message("Orders Dashboard")}}</h4>
         </div>
         <div class="modal-body">
            <div class="row">
               <div class="col-sm-6 col-xl-3 col-lg-3">
                  <div class="card o-hidden">
                     <div class="card-body">
                        <div class="media static-widget">
                           <div class="media-body">
                              <h6 class="font-roboto">{{$controller::message("Total Customers")}}</h6>
                              <h4 class="mb-0 counter" style="margin-bottom:10px;">{{$customers}}</h4>
                           </div>
                        </div>
                        <div class="progress-widget">
                           <div class="progress sm-progress-bar progress-animate">
                              <div class="progress-gradient-secondary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"><span class="animate-circle"></span></div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-sm-6 col-xl-3 col-lg-3">
                  <div class="card o-hidden">
                     <div class="card-body">
                        <div class="media static-widget">
                           <div class="media-body">
                              <h6 class="font-roboto">{{$controller::message("Total Completed Order")}}s</h6>
                              <h4 class="mb-0 counter" style="margin-bottom:10px;">{{$ordersCount}}</h4>
                           </div>
                        </div>
                        <div class="progress-widget">
                           <div class="progress sm-progress-bar progress-animate">
                              <div class="progress-gradient-secondary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"><span class="animate-circle"></span></div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-sm-6 col-xl-3 col-lg-3">
                  <div class="card o-hidden">
                     <div class="card-body">
                        <div class="media static-widget">
                           <div class="media-body">
                              <h6 class="font-roboto">{{$controller::message("Total Sales")}}</h6>
                              
                              @if($totalReturnProduct > 0 AND $sales == 0)
                                 <h4 class="mb-0 counter" style="margin-bottom:10px;">{{$sales}}</h4>
                              @else($totalReturnProduct > 0 AND $sales > 0)
                                 <h4 class="mb-0 counter" style="margin-bottom:10px;">{{$sales-$totalReturnProduct}}</h4>
                              @endif
                              
                           </div>
                        </div>
                        <div class="progress-widget">
                           <div class="progress sm-progress-bar progress-animate">
                              <div class="progress-gradient-secondary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"><span class="animate-circle"></span></div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               @if($enableRewardPoints == 1)
               <div class="col-sm-6 col-xl-3 col-lg-3">
                  <div class="card o-hidden">
                     <div class="card-body">
                        <div class="media static-widget">
                           <div class="media-body">
                              <h6 class="font-roboto">{{$controller::message("Total Reward Used (In Rs)")}}</h6>
                              <h4 class="mb-0 counter" style="margin-bottom:10px;">{{$rewardUsedInRs}}</h4>
                           </div>
                        </div>
                        <div class="progress-widget">
                           <div class="progress sm-progress-bar progress-animate">
                              <div class="progress-gradient-secondary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"><span class="animate-circle"></span></div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               @endif
            </div>
            <div class="row" style="margin-top:10px;">
               @if($enableRewardPoints == 1)
               <div class="col-sm-6 col-xl-3 col-lg-3">
                  <div class="card o-hidden">
                     <div class="card-body">
                        <div class="media static-widget">
                           <div class="media-body">
                              <h6 class="font-roboto">{{$controller::message("Total Sale Without Reward")}}</h6>
                              <h4 class="mb-0 counter" style="margin-bottom:10px;">{{$sales-$rewardUsedInRs}}</h4>
                           </div>
                        </div>
                        <div class="progress-widget">
                           <div class="progress sm-progress-bar progress-animate">
                              <div class="progress-gradient-secondary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"><span class="animate-circle"></span></div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               @endif
               @if($restaurant == 1)
               <div class="col-sm-6 col-xl-3 col-lg-3">
                  <div class="card o-hidden">
                     <div class="card-body">
                        <div class="media static-widget">
                           <div class="media-body">
                              <h6 class="font-roboto">{{$controller::message("Total Running Orders")}}</h6>
                              <h4 class="mb-0 counter" style="margin-bottom:10px;">{{$runningOrders}}</h4>
                           </div>
                        </div>
                        <div class="progress-widget">
                           <div class="progress sm-progress-bar progress-animate">
                              <div class="progress-gradient-secondary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"><span class="animate-circle"></span></div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               @endif
               <div class="col-sm-6 col-xl-3 col-lg-3">
                  <div class="card o-hidden">
                     <div class="card-body">
                        <div class="media static-widget">
                           <div class="media-body">
                              <h6 class="font-roboto">{{$controller::message("Total Return Product")}}</h6>
                              <h4 class="mb-0 counter" style="margin-bottom:10px;">{{ $totalReturnProduct }}</h4>
                           </div>
                        </div>
                        <div class="progress-widget">
                           <div class="progress sm-progress-bar progress-animate">
                              <div class="progress-gradient-secondary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"><span class="animate-circle"></span></div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-sm-6 col-xl-3 col-lg-3">
                  <div class="card o-hidden">
                     <div class="card-body">
                        <div class="media static-widget">
                           <div class="media-body">
                              <h6 class="font-roboto">{{$controller::message("Total Discount")}}</h6>
                              <h4 class="mb-0 counter" style="margin-bottom:10px;">{{ $discountValue }}</h4>
                           </div>
                        </div>
                        <div class="progress-widget">
                           <div class="progress sm-progress-bar progress-animate">
                              <div class="progress-gradient-secondary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"><span class="animate-circle"></span></div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-sm-12 col-xl-12 col-lg-12">
                  <div class="hlpmxkwtnz">
                     <table class="table table-bordered" style="margin-top:10px;">
                        <tr>
                           <td>{{$controller::message("Order ID")}}</td>
                           <td>{{$controller::message("Sno")}}</td>
                           <td>{{$controller::message("Customer")}}</td>
                           <td>{{$controller::message("Order Total")}}</td>
                           <td>{{$controller::message("Payment Mode")}}</td>
                           <td>{{$controller::message("Order Status")}}</td>
                           @if($restaurant == 1)
                           <td>{{$controller::message("Order Hold/Running Status")}}</td>
                           @else
                           <td>{{$controller::message("Order Hold")}}</td>
                           @endif
                           <td>{{$controller::message("Discount")}}</td>
                           <td>{{$controller::message("Action")}}</td>
                        </tr>
                        @foreach($orders as $order)
                        <tr>
                           <td>{{$order['orderId']}}</td>
                           <td>{{$order['sno']}}</td>
                           <td>{{$order['name']}}<br>{{$order['mobile']}}<br>{{$order['email']}}</td>
                           <td>{{$order['total']}}</td>
                           <td>{{$order['paymentMethod']}}</td>
                           <td>{{$order['orderStatusHeading']}}</td>
                           <td>{!! ($order['hold']==1)?'<span class="badge bg-warning text-dark">{{$controller::message("Running")}}</span>':'<span class="badge bg-success">{{$controller::message("Completed")}}</span>'!!}</td>
                           <td>
                                 <?php
                                  $dis = 0;

                                  if ($order['globalDiscount'] !== null || $order['productDiscount'] != 0) {
                                      if ($order['globalDiscount'] !== "null") {
                                          $dis += json_decode($order['globalDiscount'], true)['discountValue'];
                                      }
                                      $dis += $order['productDiscount'];
                                  }

                                  echo $dis;
                                 ?>
                           </td>
                           <td align="right">
                              <div class="kutzgvnvuo tutwtgfgdr" order-id="{{$order['orderId']}}" style="background: #44c736;color: white;"><i class="fa-regular fa-pen-to-square"></i></div>
                              <div class="kutzgvnvuo mdbjzbadvj" order-id="{{$order['orderId']}}" style="background: #2a66d4;color: white;"><i class="fa-solid fa-file-invoice"></i></div>
                              @if($order['orderStatusId']!=$settings['cancelledOrderStatus'])
                              <div class="kutzgvnvuo btkwsrhjsk" order-id="{{$order['orderId']}}" style="background: tomato;color: white;"><i class="fa-solid fa-trash"></i></div>
                              @endif
                              <!-- <div class="kutzgvnvuo shjdqfrgvo" order-id="{{$order['orderId']}}" style="background: #cf2d2d;color: white;"><i class="fa-solid fa-trash"></i></div> -->
                           </td>
                        </tr>
                        @endforeach
                     </table>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<div id="hotelRoomBooked" class="modal fade" role="dialog">
   <div class="modal-dialog modal-xl">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="wvzlrnxfjw" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">{{$controller::message("Booked Hotels")}}</h4>
         </div>
         <div class="modal-body">
            <div class="row">
               <div class="col-sm-12 col-xl-12 col-lg-12">
                  <div class="hlpmxkwtnz">
                     <table class="table table-bordered" style="margin-top:10px;">
                        <tr>
                           <td>{{$controller::message("Order ID")}}</td>
                           <td>{{$controller::message("Room No")}}</td>
                           <td>{{$controller::message("Customer")}}</td>
                           <td>{{$controller::message("Order Total")}}</td>
                           <td>{{$controller::message("Order Status")}}</td>
                           <td>{{$controller::message("ID Proof")}}</td>
                           <td>{{$controller::message("Action")}}</td>
                        </tr>
                        @foreach($hotelOrders as $order)
                        @php($hotelRoom = $controller::getDataWhere("order_hotel_room","orderId",$order['orderId']))
                        <tr>
                           <td>{{$order['orderId']}}</td>
                           @if(!empty($hotelRoom))
                           <td>{{ json_decode($hotelRoom[0]['hotel'],true)['heading'] }}</td>
                           @else
                           <td>
                              {{$order['seatingTableHeading']}}
                           </td>
                           @endif
                           <td>{{$order['name']}}<br>{{$order['mobile']}}<br>{{$order['email']}}</td>
                           <td>{{$order['total']}}</td>
                           @if($order['hold']==1)
                           <td><span class="badge bg-warning text-dark">{{$controller::message("Occupied")}}</span></td>
                           @else
                           <td><span class="badge bg-success">{{$controller::message("Completed")}}</span></td>
                           @endif
                           <td>
                              @if(!empty($hotelRoom))
                              @php($images = json_decode($hotelRoom[0]['customerData'],true))
                              
                              @if(!empty($images['personId']))
                              @for($i=0;$i<count($images['personId']);$i++)
                              <a href="{{$controller::image($images['personId'][$i])}}" target="_BLANK">
                                 <img src="{{$controller::image($images['personId'][$i])}}" class="xjnassalrt xjnassalrt{{$i}}" 
                                 style="width:70px;height:45px;margin-top:10px;"></a>
                              
                              @endfor
                              @endif

                              @endif
                           </td>
                           <td align="right">
                              <div class="kutzgvnvuo tutwtgfgdr" order-id="{{$order['orderId']}}" style="background: #44c736;color: white;"><i class="fa-regular fa-pen-to-square"></i></div>
                              <div class="kutzgvnvuo mdbjzbadvj" order-id="{{$order['orderId']}}" style="background: #2a66d4;color: white;"><i class="fa-solid fa-file-invoice"></i></div>
                              <!-- <div class="kutzgvnvuo shjdqfrgvo" order-id="{{$order['orderId']}}" style="background: #cf2d2d;color: white;"><i class="fa-solid fa-trash"></i></div> -->
                           </td>
                        </tr>
                        @endforeach
                     </table>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>