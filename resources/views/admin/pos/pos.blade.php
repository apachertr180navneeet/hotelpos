
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
         .symbol::before {
           content: "₹";
           display: inline-block;
           margin-right: 2px;
           
         }
       /* Base styles */
/* Base Layout */
.parent {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(100px, 2fr));
  gap: 5px;
  padding: 5px;
  box-sizing: border-box;
}

/* Card Styling */
.product-card,
.mjhnxodsgc {
  background: #fff;
  border: 1px solid #ccc;
  border-radius: 6px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  padding: 12px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  transition: transform 0.3s ease;
}

.product-card:hover,
.mjhnxodsgc:hover {
  transform: scale(1.02);
}

/* Visual Alert Styling */
.umhcbysyru {
  background: #f8d7da;
  border-color: #f5c2c7;
}

.child,
.childNoRestaurant {
  padding: 8px;
}

/* Images */
.inqiowvkgz,
.product-card img {
  width: 100%;
  height: auto;
  border-radius: 6px;
  object-fit: cover;
  max-height: 160px;
}

.img-container {
  width: 100%;
  background-color: #eee;
}

/* Text Styling */
.symbol,
.waifqtsovw,
.sixherwpuw {
  margin-top: 8px;
  font-size: 1rem;
  word-wrap: break-word;
}

/* Form Elements */
.form-control,
.anleefcqnn,
.inrqwlsqvg {
  font-size: 1rem;
  padding: 0.5rem;
  width: 100%;
  box-sizing: border-box;
}

.rslpmygbcf {
  width: 100%;
  height: 50px;
  font-size: 1rem;
}

.website-logo-name {
  display: inline;
}

.dnasrmqxlu {
  overflow-y: auto;
  max-height: 90vh;
  padding: 1rem;
  box-sizing: border-box;
}

/* Headings */
h6 {
  font-size: 1rem;
  margin-bottom: 0.5rem;
}

/* MEDIA QUERIES */

/* Extra Small Devices */
@media screen and (max-width: 480px) {
  .parent {
    grid-template-columns: 1fr;
    padding: 8px;
  }

  .mjhnxodsgc {
    padding: 6px;
  }

  .inqiowvkgz {
    max-height: 120px;
  }

  .symbol,
  .waifqtsovw,
  .sixherwpuw {
    font-size: 0.8rem;
  }

  .form-control,
  .anleefcqnn,
  .inrqwlsqvg {
    font-size: 10px;
    padding: 2px;
  }

  h6 {
    font-size: 12px;
  }

  .rslpmygbcf {
    width: 100%;
    font-size: 12px;
  }

  .website-logo-name {
    display: none;
  }

  .dnasrmqxlu {
    padding: 0.5rem;
  }
}

/* Small Tablets */
@media screen and (max-width: 768px) {
  .parent {
    grid-template-columns: repeat(auto-fit, minmax(100px, 2fr));
    gap: 8px;
  }

  .mjhnxodsgc {
    padding: 8px;
  }

  .inqiowvkgz {
    max-height: 140px;
  }

  .symbol,
  .waifqtsovw,
  .sixherwpuw {
    font-size: 0.6rem;
  }

  .form-control,
  .anleefcqnn,
  .inrqwlsqvg {
    font-size: 10px;
    padding: 2px;
  }

  h6 {
    font-size: 12px;
  }

  .rslpmygbcf {
    width: 40%;
    height: 50px;
    font-size: 12px;
  }

  .website-logo-name {
    display: none;
  }

  .dnasrmqxlu {
    padding: 0.5rem;
  }
}

/* Medium Screens (600–790px) */
@media screen and (min-width: 600px) and (max-width: 790px) {
  .search-products {
    font-size: 5px;
    width: 100%;
    height: 200px;
    overflow-x: auto;
  }

  .form-container {
    font-size: 10px;
    padding: 10px;
    margin: 5px;
  }

  .gkaypbrfnm {
    border: black solid 1px;
    margin-right: 20px;
  }

  .tableFixHead {
    width: 100%;
    height: 220px;
    overflow-x: auto;
  }

  .dnasrmqxlu {
    overflow: scroll;
    width: 100%;
    padding: 1rem;
  }
}

/* Large Screens */
@media screen and (min-width: 1024px) {
  .parent {
    grid-template-columns: repeat(auto-fit, minmax(100px, 2fr));
    gap: 10px;
    padding: 12px;
  }

  .product-card,
  .mjhnxodsgc {
    padding: 10px;
  }

  .inqiowvkgz {
    max-height: 200px;
  }

  .symbol,
  .waifqtsovw,
  .sixherwpuw {
    font-size: 1.1rem;
  }

  h6 {
    font-size: 12px;
  }

  .form-control,
  .anleefcqnn,
  .inrqwlsqvg {
    font-size: 12px;
    padding: 4px;
  }

  .rslpmygbcf {
    width: 30%;
    height: 60px;
    font-size: 14px;
  }

  .dnasrmqxlu {
    padding: 1rem 2rem;
  }
}

/* Extra Large Screens */
@media screen and (min-width: 1440px) {
  .parent {
    grid-template-columns: repeat(auto-fit, minmax(100px, 2fr));
    gap: 14px;
    padding: 20px;
  }

  .product-card,
  .mjhnxodsgc {
    padding: 20px;
  }

  .inqiowvkgz {
    max-height: 240px;
  }

  .symbol,
  .waifqtsovw,
  .sixherwpuw {
    font-size: 1.2rem;
  }

  h6 {
    font-size: 16px;
  }
}

      </style>
   </head>
   <body>
      @include('admin.common.pos-top-bar')
      <div class="container-fluid vwfcqseium main-div">
         <div class="flexContainer first-container">
            @if($restaurant==1 || $enableHotelRoomMode==1)
            @if($enableSeatingTable == 1 || $enableOrderType == 1 || $enableHotelRoomMode==1)
            <div class="flexDiv ohlvqtqflu first-div">
               <div class="dnasrmqxlu" style="overflow: scroll;height:86vh;">
                  @if(session('roleId') == 37)
                     @if($enableOrderType == 1)
                        <h6 class="mljalvnltj">{{ $controller::message("Order Type") }}</h6>
                        <div>
                              <select class="form-control select2 snnfcfhdcy">
                                 <option value="">Order Type</option>
                                 <option {{ (Session::get("orderType") == 'DineIn') ? 'selected' : '' }} value="DineIn">Dine In</option>
                                 <option {{ (Session::get("orderType") == 'Delivery') ? 'selected' : '' }} value="Delivery">Delivery</option>
                              </select>
                        </div>
                     @endif

                     @if($enableSeatingTable == 1)
                        <h6 class="{{ ($enableOrderType == 0) ? 'rkwizhkscq' : 'ykaiwsoage' }}">{{ $controller::message("Tables") }}</h6>
                        @foreach($seatingTables as $table)
                              @php
                                 $BookedTable = DB::table('order')
                                    ->where('seatingTableId', $table['seatingTableId'])
                                    ->where('hold', 1)
                                    ->get()
                                    ->toArray();
                                 $hasBooking = !empty($BookedTable);
                              @endphp

                              <div class="anleefcqnn {{ (Session::get('seatingTableId') == $table['seatingTableId']) ? 'fspqembzib' : '' }} 
                                 {{ ($hasBooking && $BookedTable[0]->hold == 1) ? 'bg-danger tutwtgfgdr' : '' }}"
                                 order-id="{{ $hasBooking ? $BookedTable[0]->orderId : '' }}"
                                 data-id="{{ $table['seatingTableId'] }}">
                                 {{ $table['heading'] }}
                              </div>
                        @endforeach

                        <div class="anleefcqnn jipygxdcve" data-id="0">{{ $controller::message("No Table") }}</div>
                     @endif
                  @endif

                  @if(session('roleId') == 36)
                     @if($enableHotelRoomMode == 1)
                        <h6 class="{{ ($enableOrderType == 0) ? 'rkwizhkscq' : 'ykaiwsoage' }}">{{ $controller::message("Hotel Rooms") }}</h6>
                        @foreach($hotelRooms as $room)
                              @php
                                 $BookedRooms = false;
                                 $BookedHotelRoom = DB::select("SELECT * FROM `order` WHERE hold = 1 AND hotel = 1");
                              @endphp

                              @foreach($BookedHotelRoom as $BookedRoom)
                                 @php
                                    $orderDetail = json_decode($BookedRoom->orderProduct, true);
                                 @endphp
                                 @if(isset($orderDetail[0]['productId']) && $orderDetail[0]['productId'] == $room['productId'])
                                    @php $BookedRooms = true; @endphp
                                 @endif
                              @endforeach

                              @if($BookedRooms)
                                 <div style="width: 100%; padding: 5px; background: #ccc; color: white; margin-bottom: 5px; cursor: pointer;">
                                    {{ $room['heading'] }}
                                 </div>
                              @else
                                 <div class="inrqwlsqvg{{ (Session::has('hotelRoom') && isset(Session::get('hotelRoom')['post']) && Session::get('hotelRoom')['post']['productId'] == $room['productId']) ? ' fspqembzib' : '' }}"
                                    data-id="{{ $room['productId'] }}">
                                    {{ $room['heading'] }}
                                 </div>
                              @endif
                        @endforeach
                        {{-- <div class="fxexbqdlol" style="width: 100%; padding: 5px; background: #ccc; color: white; margin-bottom: 5px; cursor: pointer;" data-id="0">{{ $controller::message("No Room") }}</div> --}}
                     @endif
                  @endif

                  @if(session('roleId') != 37 && session('roleId') != 36)
                     @if($enableOrderType == 1)
                        <h6 class="mljalvnltj">{{ $controller::message("Order Type") }}</h6>
                        <div>
                              <select class="form-control select2 snnfcfhdcy">
                                 <option value="">Order Type</option>
                                 <option {{ (Session::get("orderType") == 'DineIn') ? 'selected' : '' }} value="DineIn">Dine In</option>
                                 <option {{ (Session::get("orderType") == 'Delivery') ? 'selected' : '' }} value="Delivery">Delivery</option>
                              </select>
                        </div>
                     @endif

                     @if($enableSeatingTable == 1)
                        <h6 class="{{ ($enableOrderType == 0) ? 'rkwizhkscq' : 'ykaiwsoage' }}">{{ $controller::message("Tables") }}</h6>
                        @foreach($seatingTables as $table)
                              @php
                                 $BookedTable = DB::table('order')
                                    ->where('seatingTableId', $table['seatingTableId'])
                                    ->where('hold', 1)
                                    ->get()
                                    ->toArray();
                                 $hasBooking = !empty($BookedTable);
                              @endphp

                              <div class="anleefcqnn {{ (Session::get('seatingTableId') == $table['seatingTableId']) ? 'fspqembzib' : '' }} 
                                 {{ ($hasBooking && $BookedTable[0]->hold == 1) ? 'bg-danger tutwtgfgdr' : '' }}"
                                 order-id="{{ $hasBooking ? $BookedTable[0]->orderId : '' }}"
                                 data-id="{{ $table['seatingTableId'] }}">
                                 {{ $table['heading'] }}
                              </div>
                        @endforeach

                        <div class="anleefcqnn jipygxdcve" data-id="0">{{ $controller::message("No Table") }}</div>
                     @endif

                     @if($enableHotelRoomMode == 1)
                        <h6 class="{{ ($enableOrderType == 0) ? 'rkwizhkscq' : 'ykaiwsoage' }}">{{ $controller::message("Hotel Rooms") }}</h6>
                        @foreach($hotelRooms as $room)
                              @php
                                 $BookedRooms = false;
                                 $BookedHotelRoom = DB::select("SELECT * FROM `order` WHERE hold = 1 AND hotel = 1");
                              @endphp

                              @foreach($BookedHotelRoom as $BookedRoom)
                                 @php
                                    $orderDetail = json_decode($BookedRoom->orderProduct, true);
                                 @endphp
                                 @if(isset($orderDetail[0]['productId']) && $orderDetail[0]['productId'] == $room['productId'])
                                    @php $BookedRooms = true; @endphp
                                 @endif
                              @endforeach

                              @if($BookedRooms)
                                 <div style="width: 100%; padding: 5px; background: #ccc; color: white; margin-bottom: 5px; cursor: pointer;">
                                    {{ $room['heading'] }}
                                 </div>
                              @else
                                 <div class="inrqwlsqvg{{ (Session::has('hotelRoom') && isset(Session::get('hotelRoom')['post']) && Session::get('hotelRoom')['post']['productId'] == $room['productId']) ? ' fspqembzib' : '' }}"
                                    data-id="{{ $room['productId'] }}">
                                    {{ $room['heading'] }}
                                 </div>
                              @endif
                        @endforeach
                        {{-- <div class="fxexbqdlol" style="width: 100%; padding: 5px; background: #ccc; color: white; margin-bottom: 5px; cursor: pointer;" data-id="0">{{ $controller::message("No Room") }}</div> --}}
                     @endif
                  @endif
            </div>


         </div>
         @endif
         {{-- first div --}}
         <style>
             .nrwhjuikke{
                 width:32%;
             }
             .foqoajrkvg{
                 width:31%;
             }
         </style>
         @else
         <style>
             .nrwhjuikke{
                 width:100%;
             }
             .foqoajrkvg{
                 width:30%;
             }
             .iewyzzfhun .wuawubiaxe {
               overflow-x:auto;
               width: 100%;
               
               margin: 0px;
           }
           
         </style>
         
         @endif
         <div class="flexDiv{{ ($restaurant == 1)?' nrwhjuikke':' plnfnztgev' }}">
            <div class="dnasrmqxlu second-div">
               <div class="vxurqawhsz">
                  <input type="text" class="form-control pnaekqlgpu" placeholder="Search Product" data-page="pos">
               </div>
               <div class="flexContainer search-products">
                  <div class="flexDiv {{ ($showManufacturers==0)?'wuawubiaxe':'iewyzzfhun' }}" 
                       style="{{ ($showManufacturers==0)?'margin: 4px 0px 5px 0':'margin: 4px 4px 4px 0' }}">
                       <button type="button" class="btn btn-primary mt-1 mb-1" 
                           data-id="" 
                           onclick="setCategory(this)">
                           {{$controller::message("All Categories")}}
                        </button>
                      @foreach($categories as $category)
                          <button type="button" class="btn btn-primary mt-1 mb-1" 
                              data-id="{{$category['categoryId']}}" 
                              onclick="setCategory(this)">
                              {{$category['heading']}}
                          </button>
                      @endforeach
                  </div>
              </div>              
            </div>
            <div class="khaxduhkmm" style="position: relative;">
               <div class="nknmyxjszh"></div>
               <div class="lzyoqmylwh">
                  @if(session('roleId') == 37)
                     <div class="parent">
                        @foreach($products as $product)
                           @if ($product['productType'] != 'Hotel')
                           @php($BookedRoomshotel = FALSE)  
                           <?php
                              $BookedHotelRooms = DB::select("SELECT * FROM `order` WHERE hold='1' AND hotel='1'")
                           ?>
                           @foreach($BookedHotelRooms as $BookedRooms)
                                 @php($orderDetails = json_decode($BookedRooms->orderProduct, true))
                                 @if(isset($orderDetails[0]['productId']) && $orderDetails[0]['productId'] == $product['productId'])
                                    <?php
                                       $BookedRoomshotel = TRUE;
                                    ?>
                                 @endif
                           @endforeach
                           @if($BookedRoomshotel == FALSE)
                              @php($classProduct = 'mjhnxodsgc')
                                    @if($restaurant == 1)
                                    @php($classProduct = 'mjhnxodsgc child')
                                    @else
                                    @php($classProduct = 'mjhnxodsgc childNoRestaurant')
                                    @endif

                              @if($product['productType']=='Hotel')
                              @if($controller::checkHotelBookingStatus($product['productId']) > 0)
                                 @php($classProduct = 'umhcbysyru')   
                              @endif
                              @endif
                              <div data-json="{{json_encode($product)}}" class="{{ $classProduct }}">
                                 <div class="eplxwhepxa symbol">{{$product['price']}}</div>
                                 {{-- <div class="waifqtsovw">{{$controller::message("Qty")}}:{{$product['quantity']}}</div> --}}
                                 <div class="eplxwhepxa"></div>
                                 @if($showImage == 1)
                                 <div>
                                    @if($enableLightBox == 0)
                                    <img src="{{$controller::image($product['image'])}}" class="inqiowvkgz">
                                    @else
                                    <a class="example-image-link" href="{{ $controller::image($product['image']) }}" data-lightbox="{{$product['heading']}}" data-title="{{$product['heading']}}"><img class="inqiowvkgz" src="{{ $controller::image($product['image']) }}"></a>
                                    @if($product['relatedImage']!='' AND !empty(json_decode($product['relatedImage'],true)))
                                    @foreach(json_decode($product['relatedImage'],true) as $image)
                                    <a class="example-image-link" href="{{ $controller::image($image) }}" data-lightbox="{{$product['heading']}}" data-title="{{$product['heading']}}"></a>
                                    @endforeach
                                    @endif
                                    @endif
                                 </div>
                                 @endif
                                 <div class="sixherwpuw oqmseozavb" style="{{ ($showImage != 1)?'margin-top:20px;':''  }}">{{$product['heading']}}</div>
                                 @if($showBarcode == 1)
                                 <div class="sixherwpuw">{{$controller::message("")}} : <span>{{$product['barcode']}}</span></div>
                                 @endif
                                 @if($showModal == 1)
                                 <div class="sixherwpuw">{{$controller::message("")}} : <span>{{$product['model']}}</span></div>
                                 @endif
                              </div>
                           @endif
                           @endif
                        @endforeach
                     </div>
                  @endif
                  @if(session('roleId') == 36)
                     <div class="parent">
                     <div class="product-card">
                        @foreach($products as $product)
                           @php($BookedRoomshotel = FALSE)  
                           <?php
                              $BookedHotelRooms = DB::select("SELECT * FROM `order` WHERE hold='1' AND hotel='1'")
                           ?>
                           @foreach($BookedHotelRooms as $BookedRooms)
                                 @php($orderDetails = json_decode($BookedRooms->orderProduct, true))
                                 @if(isset($orderDetails[0]['productId']) && $orderDetails[0]['productId'] == $product['productId'])
                                    <?php
                                       $BookedRoomshotel = TRUE;
                                    ?>
                                 @endif
                           @endforeach
                           @if($BookedRoomshotel == FALSE)
                              @php($classProduct = 'mjhnxodsgc')
                                    @if($restaurant == 1)
                                    @php($classProduct = 'mjhnxodsgc child')
                                    @else
                                    @php($classProduct = 'mjhnxodsgc childNoRestaurant')
                                    @endif

                              @if($product['productType']=='Hotel')
                              @if($controller::checkHotelBookingStatus($product['productId']) > 0)
                                 @php($classProduct = 'umhcbysyru')   
                              @endif
                              @endif
                              <div data-json="{{json_encode($product)}}" class="{{ $classProduct }}">
                                 <div class="eplxwhepxa symbol">{{$product['price']}}</div>
                                 {{-- <div class="waifqtsovw">{{$controller::message("Qty")}}:{{$product['quantity']}}</div> --}}
                                 <div class="eplxwhepxa"></div>
                                 @if($showImage == 1)
                                 <div>
                                    @if($enableLightBox == 0)
                                    <img src="{{$controller::image($product['image'])}}" class="inqiowvkgz">
                                    @else
                                    <a class="example-image-link" href="{{ $controller::image($product['image']) }}" data-lightbox="{{$product['heading']}}" data-title="{{$product['heading']}}"><img class="inqiowvkgz" src="{{ $controller::image($product['image']) }}"></a>
                                    @if($product['relatedImage']!='' AND !empty(json_decode($product['relatedImage'],true)))
                                    @foreach(json_decode($product['relatedImage'],true) as $image)
                                    <a class="example-image-link" href="{{ $controller::image($image) }}" data-lightbox="{{$product['heading']}}" data-title="{{$product['heading']}}"></a>
                                    @endforeach
                                    @endif
                                    @endif
                                 </div>
                                 @endif
                                 <div class="sixherwpuw oqmseozavb" style="{{ ($showImage != 1)?'margin-top:20px;':''  }}">{{$product['heading']}}</div>
                                 @if($showBarcode == 1)
                                 <div class="sixherwpuw">{{$controller::message("")}} : <span>{{$product['barcode']}}</span></div>
                                 @endif
                                 @if($showModal == 1)
                                 <div class="sixherwpuw">{{$controller::message("")}} : <span>{{$product['model']}}</span></div>
                                 @endif
                              </div>
                           @endif
                        @endforeach
                        </div>
                     </div>
                  @endif
                  @if(session('roleId') != 36 || session('roleId') != 37)
                  <div class="parent">
                     @foreach($products as $product)
                           @php($BookedRoomshotel = FALSE)  
                           <?php
                              $BookedHotelRooms = DB::select("SELECT * FROM `order` WHERE hold='1' AND hotel='1'")
                           ?>
                           @foreach($BookedHotelRooms as $BookedRooms)
                                 @php($orderDetails = json_decode($BookedRooms->orderProduct, true))
                                 @if(isset($orderDetails[0]['productId']) && $orderDetails[0]['productId'] == $product['productId'])
                                    <?php
                                       $BookedRoomshotel = TRUE;
                                    ?>
                                 @endif
                           @endforeach
                           @if($BookedRoomshotel == FALSE)
                              @php($classProduct = 'mjhnxodsgc')
                                    @if($restaurant == 1)
                                    @php($classProduct = 'mjhnxodsgc child')
                                    @else
                                    @php($classProduct = 'mjhnxodsgc childNoRestaurant')
                                    @endif

                              @if($product['productType']=='Hotel')
                              @if($controller::checkHotelBookingStatus($product['productId']) > 0)
                                 @php($classProduct = 'umhcbysyru')   
                              @endif
                              @endif
                              <div data-json="{{json_encode($product)}}" class="{{ $classProduct }}">
                                 <div class="eplxwhepxa symbol">{{$product['price']}}</div>
                                 {{-- <div class="waifqtsovw">{{$controller::message("Qty")}}:{{$product['quantity']}}</div> --}}
                                 <div class="eplxwhepxa"></div>
                                 @if($showImage == 1)
                                 <div>
                                    @if($enableLightBox == 0)
                                    {{-- <img src="{{$controller::image($product['image'])}}" class="inqiowvkgz"> --}}
                                    <div class="img-container" style="height:25px;">
                                   
                                    </div>
                                    @else
                                    <a class="example-image-link" href="{{ $controller::image($product['image']) }}" data-lightbox="{{$product['heading']}}" data-title="{{$product['heading']}}"><img class="inqiowvkgz" src="{{ $controller::image($product['image']) }}"></a>
                                    @if($product['relatedImage']!='' AND !empty(json_decode($product['relatedImage'],true)))
                                    @foreach(json_decode($product['relatedImage'],true) as $image)
                                    <a class="example-image-link" href="{{ $controller::image($image) }}" data-lightbox="{{$product['heading']}}" data-title="{{$product['heading']}}"></a>
                                    @endforeach
                                    @endif
                                    @endif
                                 </div>
                                 @endif
                                 <div class="sixherwpuw oqmseozavb padding " style="{{ ($showImage != 1)?'margin-top:20px;':''  }}">{{$product['heading']}}</div>
                                 {{-- @if($showBarcode == 1)
                                 <div class="sixherwpuw">{{$controller::message("")}} : <span>{{$product['barcode']}}</span></div>
                                 @endif
                                 @if($showModal == 1)
                                 <div class="sixherwpuw">{{$controller::message("")}} : <span>{{$product['model']}}</span></div>
                                 @endif --}}
                              </div>
                           @endif
                     @endforeach
                  </div>
                  @endif 
               </div>
            </div>
         </div>
         <div class="flexDiv {{ ($restaurant == 1)?' foqoajrkvg':' kjowhskilo' }}">
            @if($showQuickAdd==1)
            <div class="dnasrmqxlu third-div" style="text-align: left;">
               <label style="font-size:11px;color: var(--grey);margin-left: 4px;">{{$controller::message("Quick Add Customer")}}</label>
               <div class="flexContainer">
                  <div class="flexDiv">
                     <input type="text" class="form-control iurrzhfiti" placeholder="Name">
                  </div>
                  <div class="flexDiv">
                     <input type="text" class="form-control wudhonlgmp" placeholder="Mobile">
                  </div>
                  <div class="flexDiv">
                     <div class="btn btn-primary jmlcfeockz">{{$controller::message("Add")}}</div>
                  </div>
               </div>
            </div>
            @endif
            <div class="dnasrmqxlu forth-div" style="{{ ($showQuickAdd == 1)?'margin-top: 5px;':'margin-top: 0px;' }}position: relative;">
               <div class="flexContainer form-container">
                  <div class="flexDiv form-flex">
                     <div class="qhzcqwbzba">
                        <input type="text" class="form-control customerId cdqzxcqicd" placeholder="Walk In Customer" value="{{ (Session::get("posCustomer")!="")?Session::get("posCustomer")['name']:'Walk In Customer' }}">
                        <div class="pjgkzsiken"></div>
                     </div>
                     @if($showSalesPerson == 1)
                     <select class="form-control hlqcchvedu">
                        <option value="">{{$controller::message("Sales Person")}}</option>
                        @foreach($employees as $employee)
                        <option value="{{$employee['employeeId']}}">{{$employee['name']}}</option>
                        @endforeach
                     </select>
                     @endif
                     @if($showAddCustomerBottom == 1)
                     <div class="btn btn-primary wmphgigrnb pkhplghgti">{{$controller::message("Add Customer")}}</div>
                     @endif
                  </div>
                  <div class="flexDiv jdmegedtfz">
                     <div id="xjeivqykta">
                        <div class="grofahzumv">{{$controller::message("Customer")}} : <span class="dhnnfxcqkm ypquertdvp">{{ (Session::get("posCustomer")!="")?Session::get("posCustomer")['name']:'Walk In Customer' }}</span></div>
                        <div class="grofahzumv">{{$controller::message("Mobile")}} : <span class="dhnnfxcqkm zreztcswsn">{{ (Session::get("posCustomer")!="")?Session::get("posCustomer")['mobile']:'0000000000' }}</span></div>
                        @if($showWalletBalance==1)
                        <div class="grofahzumv">{{$controller::message("Wallet Balance")}} : <span class="dhnnfxcqkm gkbsidbjhs">{{ (Session::get("posCustomer")!="")?Session::get("posCustomer")['walletBalance']:'0' }}</span></div>
                        @endif
                        @if($showRewardBalance==1)
                        <div class="grofahzumv">{{$controller::message("Reward balance")}} : <span class="dhnnfxcqkm nmcjehiquz">{{ (Session::get("posCustomer")!="")?Session::get("posCustomer")['rewardPoints']:'0' }}</span></div>
                        @endif
                     </div>
                  </div>
               </div>
               @if($enableCustomerReminder == 1)
               <i class="fa-solid fa-stopwatch gvrddswwbp" style="text-align: right;cursor:pointer;margin-left: 10px;padding: 10px;background:var(--default);color:white;border-radius:3px;position:absolute;top:10px;right:10px;width:40px;text-align:center"></i>
               @php($editFromTop = "50px")
               @else
               @php($editFromTop = "10px")
               @endif
               <i class="fa-solid fa-edit mreuiavyie" style="text-align: right;cursor:pointer;margin-left: 20px;padding: 10px;background:var(--default);color:white;border-radius:3px;position:absolute;top:{{$editFromTop}};right:10px;width:40px;text-align:center"></i>
            </div>
            <div class="dnasrmqxlu" style="margin-top: 10px;text-align: center;">
               <div class="{{ ($showQuickAdd == 1)?'tableFixHead':'tableFixHeadWithoutQuickAdd' }}">
                  <table class="lllnnlgotb" id="lllnnlgotb">
                     <tr>
                        <td>{{$controller::message("Product")}}</td>
                        <td>{{$controller::message("Quantity")}}</td>
                        <td>{{$controller::message("Price")}}</td>
                        <td>{{$controller::message("Total")}}</td>
                     </tr>
                     <tbody class="zotzqhlnxx">
                        @if(!empty(Session::get("posCart")))

                        @if($cartAppendStyle == 'prepend')
                           @php($carts = array_reverse(Session::get("posCart")))
                        @else
                           @php($carts = Session::get("posCart"))
                        @endif
                        
                        @foreach($carts as $cart)
                        <tr class="ifgrtfiuqw" data-id="{{$cart['productId']}}">
                           <td>
                              <div class="jqkorjasuq" data-id="{{$cart['productId']}}">{{$cart['heading']}}</div>
                              @if ($showBarcode == 1)
                              <div class="gmnmbdygnw">{{$controller::message("")}} : <span class="zuexkraafh">{{$cart['barcode']}}</span></div>
                              @endif
                              @if ($showModal == 1)
                              <div class="gmnmbdygnw">{{$controller::message("")}} : <span class="zuexkraafh">{{$cart['model']}}</span></div>
                              @endif
                              @if ($enableTaxes == 1)
                              <div class="gmnmbdygnw">{{$controller::message("Tax")}} ({{$cart['taxType']}}) : <span class="zuexkraafh">{{$cart['taxHeading']}}<br>(<span class="asxigmquih">{{ ($cart['taxInclusiveValue']!=0)?$cart['taxInclusiveValue']:$cart['taxExclusiveValue'] }}</span>)</span></div>
                              @endif
                              @if ($showExtraInformtionPopup == 1 AND $cart['productType']!='Hotel')
                              <div class="qxuzwreqdt">
                                 <span class="dzlgfmdxvn" data-extraInformation="{{$cart['extraInformation']}}" data-id="{{$cart['productId']}}">{{$controller::message("Add Extra information")}}</span>
                                 <span class="kexlkbindt">{{$cart['extraInformation']}}</span>
                              </div>
                              @else
                              <span class="ucyspmmbme" style="text-decoration: underline;cursor: pointer;" data-id="{{$cart['productId']}}">{{$controller::message("Attach Details")}}</span>
                              @endif
                           </td>
                           <td class="symbol"><span class="kmaziybpmu {{ ($cart['changePriceDuringBilling']==1)?'xkvawimkrj':'' }}" data-id="{{$cart['productId']}}">{{$cart['price']}}</span></td>
                           <td align="right" class="symbol"><span class="akbvtlipgp">{{$cart['total']}}</span><i class="fa-solid fa-trash pull-right twqysfgott" style="color:#5bc273" data-id="{{$cart['productId']}}"></i></td>
                        </tr>
                        @endforeach
                        @else
                        <tr class="fouzzopram">
                           <td colspan="5"><img src="{{url('/')}}/backend/assets/pos/empty.png" class="gkaypbrfnm"></td>
                        </tr>
                        @endif
                     </tbody>
                  </table>
                  <div id="scrollToHere"></div>
               </div>
            </div>
         </div>
         <div class="flexDiv rslpmygbcf">
            @if($showStoreInfomation == 1)
            <div class="dnasrmqxlu address-container" style="text-align: left;">
               <table class="jtoweyfypd">
                  <tr>
                     <td width="10%" class="website-logo-name">
                        <div class="voxsfftism">{{$settings['websiteName']}}</div>
                     </td>
                     <td style="vertical-align:top">
                        <table style="width:10%;margin-left:5px;">
                           <tr>
                              <td colspan="2" class="usjuzdfdvl">{{$settings['websiteName']}}</td>
                           </tr>
                           <tr>
                              <td><i class="fa-solid fa-mobile-screen zwrkteeexe"></i></td>
                              <td class="wlszepocux ckkcsvzksr">{{$settings['contactMobile']}}</td>
                           </tr>
                           <tr>
                              <td><i class="fa-regular fa-envelope zwrkteeexe"></i></td>
                              <td class="wlszepocux ckkcsvzksr">{{$settings['adminEmail']}}</td>
                           </tr>
                           <tr>
                              <td><i class="fa-solid fa-location-pin zwrkteeexe"></i></td>
                              <td class="wlszepocux ckkcsvzksr">{{$settings['address']}}</td>
                           </tr>
                        </table>
                     </td>
                  </tr>
               </table>
            </div>
            @endIf
            @include('admin.common.pos-total-cart')
            <div><img src="{{url('/')}}/backend/logo.png" style="height:50px;margin-top:5px;"></div>
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
      <script type="text/javascript">var page = 'pos';</script>
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
          $("#customerGroupId").select2({dropdownParent: $('#addCustomerModal'),width: '100%' });
          $("#cityId").select2({dropdownParent: $('#addCustomerModal'),width: '100%' });
          $("#stateId").select2({dropdownParent: $('#addCustomerModal'),width: '100%' });
          $("#countryId").select2({dropdownParent: $('#addCustomerModal'),width: '100%' });
          $("#status").select2({dropdownParent: $('#addCustomerModal'),width: '100%' });
          $(".oaidkbieqj").select2({dropdownParent: $('#amountPaidToTheCustomer'),width: '100%' });
          $(".jjkzafeiov0").select2({dropdownParent: $('#addPaymentToCustomer'),width: '100%' });
          $(".jjkzafeiov1").select2({dropdownParent: $('#addPaymentToCustomer'),width: '100%' });
          $(".magztvvntu").select2({dropdownParent: $('#returnProduct'),width: '100%' });
          $(".oaidkbieqj0").select2({dropdownParent: $('#amountPaidToTheCustomer'),width: '100%' });
          $(".oaidkbieqj1").select2({dropdownParent: $('#amountPaidToTheCustomer'),width: '100%' });
          $(".jjkzafeiov0").select2({dropdownParent: $('#addPaymentToCustomer'),width: '100%' });
          $(".jjkzafeiov1").select2({dropdownParent: $('#addPaymentToCustomer'),width: '100%' });
         });
      </script>
      <style type="text/css">
         #addCustomerModal .form-label{
            display: block;
         }
         #amountPaidToTheCustomer .form-label{
            display: block;
         }
         #addPaymentToCustomer .form-label{
            display: block;
         }
         .select2-container--open {
             z-index: 9999999
         }
         .select2-container {
             width: 100% !important;
         }
      </style>
   </body>
</html>