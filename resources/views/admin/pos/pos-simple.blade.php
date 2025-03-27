<!doctype html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/toast/jquery.toast.css')}}">
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/pos/style.css')}}">
      @if($enableLightBox == 1)
      <link rel="stylesheet" type="text/css" href="{{url('backend/lightbox/dist/css/lightbox.min.css')}}">
      @endif
      <title>{{$settings['websiteName']}}</title>
      <style type="text/css">
         :root {
            --default: #ae69f5;
            --grey: #9c9c9c;
            --yellow: #f49d2a;
            --lightGreen: #e5ffe3;
            --darkGreen: #098221;
         }
         body{
            overflow: scroll;
         }
         .symbol::before {
            content: "{{$controller::getCurrencySymbol()}}";
            display: inline-block;
            margin-right: 2px;
         }
      </style>
   </head>
   <body>
      @include('admin.common.pos-top-bar')
      <div class="container-fluid vwfcqseium">
      <div class="flexContainer">
         <div class="kiequsbrdw">
            <div class="row zhinyzxikw">
               <div class="col-4">
                  <div class="ysmggqafab qhzcqwbzba">
                     <label>{{$controller::message("Customer Name")}}</label><br>
                     <input type="text" class="form-control customerId cdqzxcqicd jmsiqzitwc" style="width:50%;display:inline-block;" value="{{ (Session::get("posCustomer")!="")?Session::get("posCustomer")['name']:'Walk In Customer' }}">
                     <i class="fa-solid fa-edit mreuiavyie" style="text-align: right;cursor:pointer;padding: 10px;background:var(--default);color:white;border-radius:3px;width:40px;text-align:center"></i>
                     <div class="pjgkzsiken"></div>
                  </div>
                  <div class="ysmggqafab">
                     <label>{{$controller::message("Customer Mobile")}}</label>
                     <input type="text" class="form-control jmsiqzitwc loqxflvmbu" readonly value="{{ (Session::get("posCustomer")!="")?Session::get("posCustomer")['mobile']:'0000000000' }}">
                  </div>
               </div>
               <div class="col-4">
                  <div class="ysmggqafab">
                     <label>{{$controller::message("Customer Wallet")}}</label>
                     <input type="text" class="form-control jmsiqzitwc opvpttudfr" readonly value="{{ (Session::get("posCustomer")!="")?Session::get("posCustomer")['walletBalance']:'0' }}">
                  </div>
                  <div class="ysmggqafab">
                     <label>{{$controller::message("Customer Reward")}}</label>
                     <input type="text" class="form-control jmsiqzitwc fbqfjkccdw" readonly value="{{ (Session::get("posCustomer")!="")?Session::get("posCustomer")['rewardPoints']:'0' }}">
                  </div>
               </div>
               @if($showSalesPerson == 1)
               <div class="col-4">
                  <div class="ysmggqafab">
                     <label>{{$controller::message("Sales Man")}}</label>
                     <select class="form-control hlqcchvedu">
                        <option value="">{{$controller::message("Sales Person")}}</option>
                        @foreach($employees as $employee)
                        <option value="{{$employee['employeeId']}}">{{$employee['name']}}</option>
                        @endforeach
                     </select>
                  </div>
                  @endif
                  <div class="ysmggqafab">
                     <label>{{$controller::message("Date")}}</label>
                     <input type="text" value="{{date("d-m-y")}}" class="form-control jmsiqzitwc" readonly>
                  </div>
               </div>
            </div>
            <div class="row zhinyzxikw">
               <div class="col-12">
                  <table class="table table-bordered">
                     <tr>
                        <td style="background: #d8e645;">Sno</td>
                        <td style="background: #d8e645;">BarCode</td>
                        <td style="background: #d8e645;">Name</td>
                        <td style="background: #d8e645;">Qty</td>
                        <td style="background: #d8e645;">Unit</td>
                        <td style="background: #d8e645;">Discount</td>
                        <td style="background: #d8e645;">Rate</td>
                        <td style="background: #d8e645;">Amount</td>
                        <td style="background: #d8e645;">Action</td>
                     </tr>
                     <tr>
                        <td colspan="9">
                           <input type="text" class="form-control pnaekqlgpu" placeholder="Search Product"  data-page="pos-simple">
                           <div class="trsvjbfsof" style="position:absolute;width: 500px;background:white;border:1px solid grey;display:none;border-radius:2px;z-index: 99999;"></div>
                        </td>
                     </tr>
                     <tr>
                        <td style="background: #fff0c7;" width="11.1%">
                           <label>Product Name</label>
                           <input type="text" class="form-control ixvsgojvra">
                        </td>
                        <td style="background: #fff0c7;" width="11.1%">
                           <label>Product Barcode</label>
                           <input type="text" class="form-control" readonly>
                        </td>
                        <td style="background: #fff0c7;" width="11.1%">
                           <label>Product Model</label>
                           <input type="text" class="form-control mauyrbrggu">
                        </td>
                        <td style="background: #fff0c7;" width="11.1%">
                           <label>Product Qty</label>
                           <input type="text" class="form-control tsfyilfdza">
                        </td>
                        <td style="background: #fff0c7;" width="11.1%">
                           <label>HSN Code</label>
                           <input type="text" class="form-control rgpdqnkoij">
                        </td>
                        <td style="background: #fff0c7;" width="11.1%">
                           <label>Product Cost</label>
                           <input type="text" class="form-control sxszfjnqxm">
                        </td>
                        <td style="background: #fff0c7;" width="11.1%">
                           <label>Product Price</label>
                           <input type="text" class="form-control bovmvqblxq">
                        </td>
                        <td style="background: #fff0c7;" width="11.1%">
                           <label>Vendor ID</label>
                           <select class="form-control sjzovdqwey">
                              <option value="">Please Select</option>
                              @foreach($vendors as $vendor)
                              <option value="{{$vendor['vendorId']}}">{{$vendor['heading']}}</option>
                              @endforeach
                           </select>
                        </td>
                        <td style="background: #fff0c7;"width="11.1%">
                           <label>&nbsp;</label>
                           <div class="btn btn-primary lizmusvqgo" style="width: 100%;">Add Product</div>
                        </td>
                     </tr>
                     <tbody class="zotzqhlnxx">
                        @if(!empty(Session::get("posCart")))
                        @if($cartAppendStyle == 'prepend')
                        @php($carts = array_reverse(Session::get("posCart")))
                        @else
                        @php($carts = Session::get("posCart"))
                        @endif
                        @php($i=1)
                        @foreach($carts as $cart)
                        <tr class="ifgrtfiuqw" data-id="{{$cart['productId']}}">
                           <td>{{$i++}}</td>
                           <td>{{$cart['barcode']}}</td>
                           <td>{{$cart['heading']}}</td>
                           <td><input type="text" style="width:100%;text-align: center;" data-id="{{$cart['productId']}}" class="form-control qcjmjrbsop isNatural" value="{{$cart['quantity']}}"></td>
                           <td>PCS</td>
                           <td><input type="text" style="width:100%;text-align: center;" class="form-control vojotpessc percentage" data-id="{{$cart['productId']}}" value="{{$cart['discount']}}"></td>
                           <td class="symbol"><span class="kmaziybpmu {{ ($cart['changePriceDuringBilling']==1)?'xkvawimkrj':'' }}" data-id="{{$cart['productId']}}">{{$cart['price']}}</span></td>
                           <td align="right" class="symbol"><span class="akbvtlipgp">{{$cart['total']}}</span></td>
                           <td><i class="fa-solid fa-trash pull-right twqysfgott" style="color:#5bc273" data-id="{{$cart['productId']}}"></i></td>
                        </tr>
                        @endforeach
                        @else
                        <tr class="fouzzopram">
                           <td colspan="9"><img src="{{url('/')}}/backend/assets/pos/empty.png" class="gkaypbrfnm" style="width:250px;display:block;margin:auto"></td>
                        </tr>
                        @endif
                     </tbody>
                  </table>
               </div>
            </div>
            <div class="row zhinyzxikw">
               <div class="col-6">
                  <table class="table table-bordered">
                     <tr>
                        <td width="80%">
                           <label>{{$controller::message("Global Discount")}}</label>
                           <input type="text" class="form-control ykmnjpxvoj percentage" value="{{ (!empty(Session::get('cartGlobalDiscount')))?Session::get('cartGlobalDiscount')['discount']:'0' }}">
                        </td>
                        <td>
                           <div class="btn  btn-primary vcifezirdo" style="margin-top:20px;">{{$controller::message("Apply")}}</div>
                        </td>
                     </tr>
                     <tr>
                        <td width="100%" colspan="2">
                           <label>{{$controller::message("Comment")}}</label>
                           <textarea class="form-control vtevgyicqb" name="posComment"></textarea>
                        </td>
                     </tr>
                  </table>
               </div>
               <div class="col-6">
                  <table class="table table-bordered">
                     <tr>
                        <td>@include('admin.common.pos-total-cart')</td>
                     </tr>
                  </table>
               </div>
            </div>
         </div>
      </div>
      @include('admin.common.pos-popup')
      <script type="text/javascript">var baseUrl = '{{url("/")}}';</script>
      <script type="text/javascript">var token = '{{ csrf_token() }}';</script>
      <script type="text/javascript">var defaultPaymentMethod = '{{ $defaultPaymentMethod }}';</script>
      <script type="text/javascript">var showBarcode = '{{ $showBarcode }}';</script>
      <script type="text/javascript">var showModal = '{{ $showModal }}';</script>
      <script type="text/javascript">var enableTaxes = '{{ $enableTaxes }}';</script>
      <script type="text/javascript">var showExtraInformtionPopup = '{{ $showExtraInformtionPopup }}';</script>
      <script type="text/javascript">var barCodeLanguage = '{{ $controller::message("Barcode") }}';</script>
      <script type="text/javascript">var modalLanguage = '{{$controller::message("Model")}}';</script>
      <script type="text/javascript">var taxLanguage = '{{$controller::message("Tax")}}';</script>
      <script type="text/javascript">var qtyLanguage = '{{$controller::message("Qty")}}';</script>
      <script type="text/javascript">var showExtraInformtionPopupLanguage = '{{$controller::message("Add Extra information")}}';</script>
      <script type="text/javascript">var info = '{{$controller::message("Info")}}';</script>
      <script type="text/javascript">var restaurant = '{{$restaurant}}';</script>
      <script type="text/javascript">var showImage = '{{$showImage}}';</script>
      <script type="text/javascript">var showBarcode = '{{$showBarcode}}';</script>
      <script type="text/javascript">var enableOrderType = '{{$enableOrderType}}';</script>
      <script type="text/javascript">var orderTypeRequired = '{{$orderTypeRequired}}';</script>
      <script type="text/javascript">var salesPersonRequired = '{{$salesPersonRequired}}';</script>
      <script type="text/javascript">var cartAppendStyle = '{{$cartAppendStyle}}';</script>
      <script type="text/javascript">var onProductCllickIncreasePosQuantity = '{{$onProductCllickIncreasePosQuantity}}';</script>
      <script type="text/javascript">var sessionSeatingTableId = '{{Session::get("seatingTableId")}}';</script>
      <script type="text/javascript">var whatsapp = '{{$settings["contactMobile"]}}';</script>
      <script type="text/javascript">var page = 'pos-simple';</script>
      <script src="{{url('backend/assets/js/jquery-3.5.1.min.js')}}"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
      <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
      <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js" defer></script>
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.5/dist/sweetalert2.all.min.js"></script>
      <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.5/dist/sweetalert2.min.css" rel="stylesheet">
      <script src="<?php echo url("/backend/assets/toast/jquery.toast.js");?>"></script>
      <script src="{{url('backend/assets/pos/pos.js')}}"></script>
      @if($enableLightBox == 1)
      <script src="{{url('backend/lightbox/dist/js/lightbox-plus-jquery.min.js')}}"></script>
      @endif
      <script type="text/javascript">
         $(document).ready(function() { 
          $(".uuukjmruxr").select2();
          $(".hlqcchvedu").select2({width: '100%' });
          $(".sjzovdqwey").select2({width: '100%' });

          $("#customerGroupId").select2({dropdownParent: $('#addCustomerModal'),width: '100%' });
          $("#cityId").select2({dropdownParent: $('#addCustomerModal'),width: '100%' });
          $("#stateId").select2({dropdownParent: $('#addCustomerModal'),width: '100%' });
          $("#countryId").select2({dropdownParent: $('#addCustomerModal'),width: '100%' });
          $("#status").select2({dropdownParent: $('#addCustomerModal'),width: '100%' });
          $(".oaidkbieqj").select2({dropdownParent: $('#amountPaidToTheCustomer'),width: '100%' });
          $(".jjkzafeiov0").select2({dropdownParent: $('#addPaymentToCustomer'),width: '100%' });
          $(".jjkzafeiov1").select2({dropdownParent: $('#addPaymentToCustomer'),width: '100%' });
          $(".magztvvntu").select2({dropdownParent: $('#returnProduct'),width: '100%' });
         
         });
      </script>
   </body>
</html>