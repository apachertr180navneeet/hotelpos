<div class="dnasrmqxlu" style="{{ ($showStoreInfomation == 1)?'margin-top:5px;':'margin-top:0px;'  }}text-align: left;">
   <label style="font-size:11px;color: var(--grey);margin-left:5px;">{{$controller::message("Checkout")}}</label>
   <div class="teauoqhxpy">
      @php($cartTotalArray = $controller::cartTotal())
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
            <td width="70%" class="prtduitanr">{{$controller::message("Reward Point Used")}} (<span class="nrbnjzmpxy">{{ (Session::get("rewardPoints")!='')?Session::get("rewardPoints"):0 }}</span>)</td>
            <td style="vertical-align:top;text-align:right;" class="zbetohaqje akbmamllxh">
               <input type="text" class="form-control faqsvztvml isNumeric" value="{{ (Session::get("rewardPoints")!='')?Session::get("rewardPoints"):0 }}">
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
               <div class="oizfbjddqq">{{$controller::message("PAY")}}</div>
            </td>
         </tr>
      </table>
   </div>
</div>