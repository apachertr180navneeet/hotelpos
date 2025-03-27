<!DOCTYPE html>
<html lang="en">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description" content="Admin Panel">
      <meta name="keywords" content="Admin Panel">
      <meta name="author" content="Priyavrat">
      <link rel="icon" href="{{url('backend/assets/images/logo/favicon-icon.png')}}" type="image/x-icon">
      <link rel="shortcut icon" href="{{url('backend/assets/images/logo/favicon-icon.png')}}" type="image/x-icon">
      @if(isset($controllerHeading))
      <title>{{$controller::message($controllerHeading)}}</title>
      @else
      <title>{{$controller::message($settings['websiteName'])}}</title>
      @endif
      <link rel="preconnect" href="https://fonts.googleapis.com/">
      <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="">
      <link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap" rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/font-awesome.css')}}">
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/icofont.css')}}">
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/themify.css')}}">
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/flag-icon.css')}}">
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/feather-icon.css')}}">
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/scrollbar.css')}}">
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/animate.css')}}">
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/date-picker.css')}}">
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/photoswipe.css')}}">
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/bootstrap.css')}}">
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/datatables.css')}}">
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/owlcarousel.css')}}">
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/rating.css')}}">
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/style.css')}}">
      <link id="color" rel="stylesheet" href="{{url('backend/assets/css/color-1.css')}}" media="screen">
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/responsive.css')}}">
      <link rel="stylesheet" type="text/css" href="{{url('backend/assets/toast/jquery.toast.css')}}">
      {{-- <script src="{{url('backend/assets/ck/build/ckeditor.js')}}"></script> --}}
      <script src="{{url('backend/assets/ckeditor/ckeditor.js')}}"></script>
      <style type="text/css">
         .symbol::before {
         content: "{{$controller::getCurrencySymbol()}}";
         display: inline-block;
         margin-right: 2px;
         }
         .loader2{
         position: fixed;
         left: 0px;
         top: 0px;
         width: 100%;
         height: 100%;
         z-index: 9999;
         display: none;
         background-size: 50px 50px;
         background: rgb(0,0,0,0.1);
         }
         .hideThisField{
         display:none !important;
         }
         .dataTables_wrapper button {
         font-weight: 400;
         padding: 0.375rem 0.75rem;
         font-size: 14px;
         border-radius: 0.25rem;
         color: #000;
         }
      </style>
      <style>
        a:hover {
            color: #6362e7 !important;
        }
        .badge-success{
            background:#d0f1cc;
            color:#0e8e00;
        }
        .badge-danger{
            background:#f5cdca !important;
            color:#de3e31 !important;
        }
        .btn-danger {
           background:#f5cdca !important;
            color:#de3e31 !important;
        }
        .btn-danger,.btn-warning:hover {
           color:#fff !important;
        }
        .btn-warning {
           background:#f7dab7 !important;
           color:#e89127 !important;
        }
        .page-wrapper .page-body-wrapper .page-body {
            padding: 0px;
        }
        .container-fluid > .row>* {
           padding-right: 0px;
           padding-left: 0px;
        } 
        .edit-profile > .row>* {
           padding-right: 0px;
           padding-left: 0px;
           margin-top: 0px;
        }
        .card {
            margin-top: 0px;
            border-radius:0px;
        }.card:hover {
            -webkit-box-shadow: none;
            box-shadow: none;
            -webkit-transition: all 0.3s ease;
            transition: all 0.3s ease;
        }
        .btn-primary:hover, .btn-primary:focus, .btn-primary:active {
            background:#d0f1cc !important;
            color:#0e8e00;
        }

        div.dataTables_wrapper {
            position: relative;
            font-family: "Lexend", sans-serif !important;
        }

    </style>
   </head>
   <body>
      <div class="loader2"></div>
      <div class="loader-wrapper">
         <div class="loader">
            <div class="loader-bar"></div>
            <div class="loader-bar"></div>
            <div class="loader-bar"></div>
            <div class="loader-bar"></div>
            <div class="loader-bar"></div>
            <div class="loader-ball"></div>
         </div>
      </div>
      <div class="page-wrapper compact-wrapper" id="pageWrapper">
      <div class="page-header">
         <div class="header-wrapper row m-0" style="width:30%;display: inline-block;">
            <div class="header-logo-wrapper col-auto p-0">
               <div class="logo-wrapper"><a href="{{url("/")}}/admin"><img class="img-fluid" src="{{url('backend/assets/images/logo/logo.png')}}" alt=""></a></div>
               <div class="toggle-sidebar">
                  <div class="status_toggle sidebar-toggle d-flex">
                     <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g>
                           <g>
                              <path fill-rule="evenodd" clip-rule="evenodd" d="M21.0003 6.6738C21.0003 8.7024 19.3551 10.3476 17.3265 10.3476C15.2979 10.3476 13.6536 8.7024 13.6536 6.6738C13.6536 4.6452 15.2979 3 17.3265 3C19.3551 3 21.0003 4.6452 21.0003 6.6738Z" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                              <path fill-rule="evenodd" clip-rule="evenodd" d="M10.3467 6.6738C10.3467 8.7024 8.7024 10.3476 6.6729 10.3476C4.6452 10.3476 3 8.7024 3 6.6738C3 4.6452 4.6452 3 6.6729 3C8.7024 3 10.3467 4.6452 10.3467 6.6738Z" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                              <path fill-rule="evenodd" clip-rule="evenodd" d="M21.0003 17.2619C21.0003 19.2905 19.3551 20.9348 17.3265 20.9348C15.2979 20.9348 13.6536 19.2905 13.6536 17.2619C13.6536 15.2333 15.2979 13.5881 17.3265 13.5881C19.3551 13.5881 21.0003 15.2333 21.0003 17.2619Z" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                              <path fill-rule="evenodd" clip-rule="evenodd" d="M10.3467 17.2619C10.3467 19.2905 8.7024 20.9348 6.6729 20.9348C4.6452 20.9348 3 19.2905 3 17.2619C3 15.2333 4.6452 13.5881 6.6729 13.5881C8.7024 13.5881 10.3467 15.2333 10.3467 17.2619Z" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                           </g>
                        </g>
                     </svg>
                  </div>
               </div>
            </div>
         </div>
         <div style="width: 68%;display: inline-block;">
            <div style="float:right">
               <div class="btn btn-info dzuvvrsqcf" style="margin-right:10px;margin-top: 22px;">{{$controller::message("Language")}}</div>
               <div class="btn btn-warning bbwdxhpefe" style="margin-right:10px;margin-top: 22px;">{{$controller::message("Take Backup")}}</div>
               @if(Session::get('roleId')==1 || Session::get('roleId')==2)
               @if(Session::get('storeId')!='')
               <div class="btn btn-dark btpasijoaw showPopUp" style="margin-right:10px;margin-top: 22px;">{{$controller::message("Selected Store")}}<br>{{$controller::getDataWhere("stores","storeId",Session::get("storeId"))[0]['name']}}</div>
               @else
               <div class="btn btn-dark btpasijoaw showPopUp" style="margin-right:10px;margin-top: 22px;">{{$controller::message("No Store Selected")}}</div>
               @endif
               @endif
               @if(Session::get('superAdmin')=="Yes")
               @if(Session::get('userId')!='')
               <div class="btn btn-secondary cbzfzgbuge showPopUpUser" style="margin-right:10px;margin-top: 22px;">{{$controller::message("Selected User")}}:
                  {{Session::get("userName")}}<br>
                  {{Session::get("userEmail")}}
               </div>
               @else
               <div class="btn btn-secondary cbzfzgbuge showPopUpUser" style="margin-right:10px;margin-top: 22px;">{{$controller::message("No User Selected")}}</div>
               @endif
               @endif
               <div class="btn btn-info" style="display: inline-block;;color:#fff ;margin-top: 22px;">
                  {{$controller::message("Logged In As")}} <span style="color: #fff;">{{Session::get('userName')}}</span>
                  <br>
                  {{$controller::message("Role")}} : {{$controller::getDataWhere("roles","roleId",Session::get("roleId"))[0]['heading']}}
               </div>
            </div>
         </div>
      </div>
      <div class="page-body-wrapper">