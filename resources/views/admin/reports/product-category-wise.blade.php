@extends('admin.common.main')
@section('main-container')
<style>
   .nojuthjetd{
   padding: 10px;
   width: 100%;
   }
   .ebvwtrgfyg{
   margin: 30px 0px;
   }
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
               <form class="card" method="POST" id="profirReportForm">
                  <input type="hidden" value="{{csrf_token()}}" name="_token">
                  <div class="card-header pb-0">
                     <div class="row">
                        <div class="col-6 col-sm-6">
                           <h4 class="card-title mb-0">{{$controller::message("Product Category Wise")}}</h4>
                        </div>
                    
                     </div>
                  </div>
                  <div class="card-body">
                     <div class="row">
                        <div class="col-sm-6 col-xl-4 col-lg-4">
                           <div class="card o-hidden">
                              <div class="card-body">
                                 <div class="media static-widget">
                                    <div class="media-body">
                                       <h6 class="font-roboto">{{$controller::message("Total Quantity")}}</h6>
                                       <h4 class="mb-0 counter wiqhdfjfku">0</h4>
                                    </div>
                                    <svg class="fill-secondary" width="48" height="48" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                       <path d="M22.5938 14.1562V17.2278C20.9604 17.8102 19.7812 19.3566 19.7812 21.1875C19.7812 23.5138 21.6737 25.4062 24 25.4062C24.7759 25.4062 25.4062 26.0366 25.4062 26.8125C25.4062 27.5884 24.7759 28.2188 24 28.2188C23.2241 28.2188 22.5938 27.5884 22.5938 26.8125H19.7812C19.7812 28.6434 20.9604 30.1898 22.5938 30.7722V33.8438H25.4062V30.7722C27.0396 30.1898 28.2188 28.6434 28.2188 26.8125C28.2188 24.4862 26.3263 22.5938 24 22.5938C23.2241 22.5938 22.5938 21.9634 22.5938 21.1875C22.5938 20.4116 23.2241 19.7812 24 19.7812C24.7759 19.7812 25.4062 20.4116 25.4062 21.1875H28.2188C28.2188 19.3566 27.0396 17.8102 25.4062 17.2278V14.1562H22.5938Z"></path>
                                       <path d="M25.4062 0V11.4859C31.2498 12.1433 35.8642 16.7579 36.5232 22.5938H48C47.2954 10.5189 37.4829 0.704531 25.4062 0Z"></path>
                                       <path d="M14.1556 31.8558C12.4237 29.6903 11.3438 26.9823 11.3438 24C11.3438 17.5025 16.283 12.1958 22.5938 11.4859V0C10.0492 0.731813 0 11.2718 0 24C0 30.0952 2.39381 35.6398 6.14897 39.8624L14.1556 31.8558Z"></path>
                                       <path d="M47.9977 25.4062H36.5143C35.8044 31.717 30.4977 36.6562 24.0002 36.6562C21.0179 36.6562 18.3099 35.5763 16.1444 33.8444L8.13779 41.851C12.3604 45.6062 17.905 48 24.0002 48C36.7284 48 47.2659 37.9508 47.9977 25.4062Z"></path>
                                    </svg>
                                 </div>
                                 <div class="progress-widget">
                                    <div class="progress sm-progress-bar progress-animate">
                                       <div class="progress-gradient-secondary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"><span class="animate-circle"></span></div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-6 col-xl-4 col-lg-4">
                           <div class="card o-hidden">
                              <div class="card-body">
                                 <div class="media static-widget">
                                    <div class="media-body">
                                       <h6 class="font-roboto">{{$controller::message("Total Buying Cost")}}</h6>
                                       <h4 class="mb-0 counter jnojpwjgxh symbol">0</h4>
                                    </div>
                                    <svg class="fill-secondary" width="48" height="48" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                       <path d="M22.5938 14.1562V17.2278C20.9604 17.8102 19.7812 19.3566 19.7812 21.1875C19.7812 23.5138 21.6737 25.4062 24 25.4062C24.7759 25.4062 25.4062 26.0366 25.4062 26.8125C25.4062 27.5884 24.7759 28.2188 24 28.2188C23.2241 28.2188 22.5938 27.5884 22.5938 26.8125H19.7812C19.7812 28.6434 20.9604 30.1898 22.5938 30.7722V33.8438H25.4062V30.7722C27.0396 30.1898 28.2188 28.6434 28.2188 26.8125C28.2188 24.4862 26.3263 22.5938 24 22.5938C23.2241 22.5938 22.5938 21.9634 22.5938 21.1875C22.5938 20.4116 23.2241 19.7812 24 19.7812C24.7759 19.7812 25.4062 20.4116 25.4062 21.1875H28.2188C28.2188 19.3566 27.0396 17.8102 25.4062 17.2278V14.1562H22.5938Z"></path>
                                       <path d="M25.4062 0V11.4859C31.2498 12.1433 35.8642 16.7579 36.5232 22.5938H48C47.2954 10.5189 37.4829 0.704531 25.4062 0Z"></path>
                                       <path d="M14.1556 31.8558C12.4237 29.6903 11.3438 26.9823 11.3438 24C11.3438 17.5025 16.283 12.1958 22.5938 11.4859V0C10.0492 0.731813 0 11.2718 0 24C0 30.0952 2.39381 35.6398 6.14897 39.8624L14.1556 31.8558Z"></path>
                                       <path d="M47.9977 25.4062H36.5143C35.8044 31.717 30.4977 36.6562 24.0002 36.6562C21.0179 36.6562 18.3099 35.5763 16.1444 33.8444L8.13779 41.851C12.3604 45.6062 17.905 48 24.0002 48C36.7284 48 47.2659 37.9508 47.9977 25.4062Z"></path>
                                    </svg>
                                 </div>
                                 <div class="progress-widget">
                                    <div class="progress sm-progress-bar progress-animate">
                                       <div class="progress-gradient-secondary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"><span class="animate-circle"></span></div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-6 col-xl-4 col-lg-4">
                           <div class="card o-hidden">
                              <div class="card-body">
                                 <div class="media static-widget">
                                    <div class="media-body">
                                       <h6 class="font-roboto">{{$controller::message("Total Stock Sale Price")}}</h6>
                                       <h4 class="mb-0 counter klgfuxxjkj symbol">0</h4>
                                    </div>
                                    <svg class="fill-secondary" width="48" height="48" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                                       <path d="M22.5938 14.1562V17.2278C20.9604 17.8102 19.7812 19.3566 19.7812 21.1875C19.7812 23.5138 21.6737 25.4062 24 25.4062C24.7759 25.4062 25.4062 26.0366 25.4062 26.8125C25.4062 27.5884 24.7759 28.2188 24 28.2188C23.2241 28.2188 22.5938 27.5884 22.5938 26.8125H19.7812C19.7812 28.6434 20.9604 30.1898 22.5938 30.7722V33.8438H25.4062V30.7722C27.0396 30.1898 28.2188 28.6434 28.2188 26.8125C28.2188 24.4862 26.3263 22.5938 24 22.5938C23.2241 22.5938 22.5938 21.9634 22.5938 21.1875C22.5938 20.4116 23.2241 19.7812 24 19.7812C24.7759 19.7812 25.4062 20.4116 25.4062 21.1875H28.2188C28.2188 19.3566 27.0396 17.8102 25.4062 17.2278V14.1562H22.5938Z"></path>
                                       <path d="M25.4062 0V11.4859C31.2498 12.1433 35.8642 16.7579 36.5232 22.5938H48C47.2954 10.5189 37.4829 0.704531 25.4062 0Z"></path>
                                       <path d="M14.1556 31.8558C12.4237 29.6903 11.3438 26.9823 11.3438 24C11.3438 17.5025 16.283 12.1958 22.5938 11.4859V0C10.0492 0.731813 0 11.2718 0 24C0 30.0952 2.39381 35.6398 6.14897 39.8624L14.1556 31.8558Z"></path>
                                       <path d="M47.9977 25.4062H36.5143C35.8044 31.717 30.4977 36.6562 24.0002 36.6562C21.0179 36.6562 18.3099 35.5763 16.1444 33.8444L8.13779 41.851C12.3604 45.6062 17.905 48 24.0002 48C36.7284 48 47.2659 37.9508 47.9977 25.4062Z"></path>
                                    </svg>
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
                        <div class="col-md-4">
                           <select class="form-control vappuwtwjw">
                              <option value="">{{$controller::message("Please Select")}}</option>
                              @foreach($categories as $category)
                              <option {{ (Session::get('posCategory')!='' AND (Session::get('posCategory')==$category['categoryId']))?'selected':'' }} value="{{ $category['categoryId'] }}">{{ $category['heading'] }}</option>
                              @endforeach
                           </select>
                        </div>
                        <div class="col-md-4">
                                 <div class="btn btn-danger unrogfozao" style="width:100%;padding:10px;">{{$controller::message("Clear")}}</div>
                              </div>
                              <div class="col-md-4">
                                 <div class="btn btn-primary nojuthjetd">{{$controller::message("Filter")}}</div>
                              </div>
                     </div>
                     <div class="row">
                        <div class="col-md-12">
                           <div class="urahyuwwmn">
                              <table class="table table-bordered">
                                 <tr>
                                    <th width="10%">{{$controller::message("Sno")}}</th>
                                    <th width="10%">{{$controller::message("Product ID")}}</th>
                                    <th width="10%">{{$controller::message("Heading")}}</th>
                                    <th width="10%">{{$controller::message("Model")}}</th>
                                    <th width="10%">{{$controller::message("Barcode")}}</th>
                                    <th width="10%">{{$controller::message("Hsn Code")}}</th>
                                    <th width="10%">{{$controller::message("Quantity")}}</th>
                                    <th width="10%">{{$controller::message("Cost")}}</th>
                                    <th width="10%">{{$controller::message("Price")}}</th>
                                 </tr>
                                 <tbody>
                                    @if(!empty($products))
                                    @php($i=1)
                                    @foreach($products as $product)
                                    <tr>
                                       <td width="10%">{{$i++}}</td>
                                       <td width="10%"><a href="{{url('/')}}/admin/inner/products/add/{{$product['productId']}}" target="_BLANK">{{$product['productId']}}</a></td>
                                       <td width="10%"><a href="{{url('/')}}/admin/inner/products/add/{{$product['productId']}}" target="_BLANK">{{$product['heading']}}</a></td>
                                       <td width="10%">{{$product['model']}}</td>
                                       <td width="10%">{{$product['barcode']}}</td>
                                       <td width="10%">{{$product['hsnCode']}}</td>
                                       <td width="10%">{{$totalQuantity[] = $product['quantity']}}</td>
                                       <td width="10%" class="symbol">{{$totalCostAmount[] = $product['cost']}}</td>
                                       <td width="10%" class="symbol">{{$totalPrice[] = $product['price']}}</td>
                                    </tr>
                                    @endforeach
                                    <tr>
                                       <td></td>
                                       <td></td>
                                       <td></td>
                                       <td></td>
                                       <td></td>
                                       <td></td>
                                       <td class="hvyqqldbgk">{{array_sum($totalQuantity)}}</td>
                                       <td class="njwarfliod symbol">{{array_sum($totalCostAmount)}}</td>
                                       <td class="duyckrlobm symbol">{{array_sum($totalPrice)}}</td>
                                    </tr>
                                    @endif
                                 </tbody>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
   var dataTableStatus = "0";
</script>
@php($productCategoryWise = "productCategoryWise")
@endsection