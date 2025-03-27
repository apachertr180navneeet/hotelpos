<div class="container-fluid shadow p-2 bg-white rounded">
         <div class="row bdgysipfrj">
            <div class="col">
               <div class="row">
                  <div class="col-sm-2">
                     <div class="kjgmjxihkp">
                        @if($settings['websiteLogo']!='')
                        <img class="img-fluid for-light" src="{{url('/')}}/{{$settings['websiteLogo']}}" alt="" style="width:auto;height:20px;display:block;">
                        @else
                        <div class="xkftzzdfaf">{{$store['websiteName']}}</div>
                        @endif
                        @if($store['tagline']!='')
                        <div class="mqadoirftk">{{$store['tagline']}}</div>
                        @endif
                     </div>
                  </div>
                  <div class="col-sm-2">
                     <div class="zisqcyshhb">
                        {{$controller::message("Logged in as")}} <span class="isqbqolgtu">{{Session::get('userName')}}</span>
                     </div>
                  </div>
                  <div class="col-sm-2">
                     <div class="zisqcyshhb">
                        {{$controller::message("Role")}} : <span class="isqbqolgtu">{{$controller::getDataWhere("roles","roleId",Session::get("roleId"))[0]['heading']}}</span>
                     </div>
                  </div>
                  <div class="col-sm-2">
                     <div class="zisqcyshhb">
                        <span class="isqbqolgtu">{{date("F j, Y")}}</span>
                     </div>
                  </div>
                  <div class="col-sm-4">
                     <div class="rqztgoylul">
                        
                        <div class="kutzgvnvuo elvjqsptjs" style="background: #00a100;color: white;"><i class="fa-solid fa-arrows-rotate"></i></div>
                        @if($enableHotelRoomMode == 1)
                        <div class="kutzgvnvuo ojdhyoefbp" style="background: #325aa8;color: white;"><i class="fa-solid fa-hotel"></i></div>
                        @endif

                        <div class="kutzgvnvuo hbqskdsvrd" style="background: var(--default);color: white;"><i class="fa-solid fa-chart-line"></i></div>
                        <div class="kutzgvnvuo pkhplghgti"><i class="fa-regular fa-user"></i></div>
                        <div class="kutzgvnvuo kxaqwblsrv"><i class="fa-solid fa-money-check-dollar"></i></div>
                        <div class="kutzgvnvuo tmywzlmytl"><i class="fa-solid fa-money-bill"></i></div>
                        <div class="kutzgvnvuo sjzppnuwtr"><i class="fa-solid fa-rotate-left"></i></div>
                        <a href="{{url('/')}}/admin" class="kutzgvnvuo" style="background: tomato;color:white"><i class="fa-solid fa-arrow-left"></i></a>
                        
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>