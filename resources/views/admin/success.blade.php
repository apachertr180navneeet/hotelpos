<!DOCTYPE html>
<html lang="en">
  <!-- Mirrored from admin.pixelstrap.com/zeta/theme/sign-up-two.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 26 Mar 2022 15:54:07 GMT -->
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Zeta admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Zeta admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">
    <link rel="icon" href="../assets/images/logo/favicon-icon.png" type="image/x-icon">
    <link rel="shortcut icon" href="../assets/images/logo/favicon-icon.png" type="image/x-icon">
    <title>Zeta admin dashboard </title>
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="">
    <link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/font-awesome.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/icofont.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/themify.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/flag-icon.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/feather-icon.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/sweetalert2.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/bootstrap.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/style.css')}}">
    <link id="color" rel="stylesheet" href="{{url('backend/assets/css/color-1.css')}}" media="screen">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/responsive.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/toast/jquery.toast.css')}}">
    <style>
    body {
    text-align: center;
    background: #EBF0F5;
    }
    h1 {
    color: #88B04B;
    font-weight: 900;
    font-size: 40px;
    margin-bottom: 10px;
    }

    i {
    color: #9ABC66;
    font-size: 100px;
    line-height: 200px;
    margin-left:-15px;
    }
    .card {
    background: white;
    padding: 60px;
    border-radius: 4px;
    box-shadow: 0 2px 3px #C8D0D8;
    display: inline-block;
    margin: 0 auto;
    width: 50%;
    }
    </style>
  </head>
  <body>
    <section>
      <div class="container-fluid p-0">
        <div class="row m-0">
          <div class="col-12 p-0">
            <div class="login-card">
              <form class="theme-form login-form uavwdpirib" id="registerForm" style="width:70%" method="POST">
                <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
                  <i class="checkmark">✓</i>
                </div>
                <h1>Success</h1>
                <table class="table table-responsive table-bordered" style="margin-top:30px;">
                  <tr>
                    <td width="50%"><strong>Member Id</strong></td>
                    <td>{{$register['customer_id']}}</td>
                  </tr>
                  <tr>
                    <td width="50%"><strong>Password</strong></td>
                    <td>{{$register_password}}</td>
                  </tr>
                  <tr>
                    <td width="50%"><strong>Email</strong></td>
                    <td>{{$controller::decrypt($register['email'])}}</td>
                  </tr>
                  <tr>
                    <td width="50%"><strong>Mobile</strong></td>
                    <td>{{$controller::decrypt($register['phone'])}}</td>
                  </tr>
                  <?php if($upline!=0){ ?>
                  <tr>
                    <td width="50%"><strong>Upline</strong></td>
                    <td>{{$upline}}</td>
                  </tr>
                  <?php } ?>
                </table>

                <p style="margin-top: 30px;">Click Here To Login Into Your Account<a class="ms-2" href="{{url('/')}}/admin/login">Sign in</a></p>

              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    <script src="{{url('backend/assets/js/jquery-3.5.1.min.js')}}"></script>
    <script src="{{url('backend/assets/js/bootstrap/bootstrap.bundle.min.js')}}"></script>
    <script src="{{url('backend/assets/js/icons/feather-icon/feather.min.js')}}"></script>
    <script src="{{url('backend/assets/js/icons/feather-icon/feather-icon.js')}}"></script>
    <script src="{{url('backend/assets/js/config.js')}}"></script>
    <script src="{{url('backend/assets/js/sweet-alert/sweetalert.min.js')}}"></script>
    <script src="{{url('backend/assets/js/script.js')}}"></script>
    <script src="{{url('backend/assets/toast/jquery.toast.js')}}"></script>
    <script type="text/javascript">
    var baseUrl = '{{url("/")}}';
    var token = '{{ csrf_token() }}';
    </script>
    <script src="{{url('backend/assets/myjs/Common.js')}}"></script>
  </body>
</html>