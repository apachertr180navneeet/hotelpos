<!DOCTYPE html>
<html lang="en">
  <!-- Mirrored from admin.pixelstrap.com/zeta/theme/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 26 Mar 2022 15:52:22 GMT -->
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Admin Panel">
    <meta name="keywords" content="Admin Panel">
    <meta name="author" content="Priyavrat">
    <link rel="icon" href="{{url('backend/assets/images/logo/favicon-icon.png')}}" type="image/x-icon">
    <link rel="shortcut icon" href="{{url('backend/assets/images/logo/favicon-icon.png')}}" type="image/x-icon">
    <title>{{$settings['websiteName']}}</title>
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="">
    <link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/font-awesome.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/icofont.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/themify.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/flag-icon.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/feather-icon.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/vendors/bootstrap.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/style.css')}}">
    <link id="color" rel="stylesheet" href="{{url('backend/assets/css/color-1.css')}}" media="screen">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/css/responsive.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('backend/assets/toast/jquery.toast.css')}}">
  </head>
  <body>
    <div class="container-fluid p-0">
      <div class="row">
        <div class="col-12">
          <div class="login-card">
            <form class="theme-form login-form" id="loginForm">
              <h4>Login</h4>
              <h6>Welcome back! Log in to your account.</h6>
              <div class="form-group">
                <label>Email Address</label>
                <div class="input-group"><span class="input-group-text"><i class="icon-email"></i></span>
                <input class="form-control" type="email" name="email" placeholder="Test@gmail.com" value='{{ ((isset($_COOKIE["user_email"]) AND $_COOKIE["user_email"] != "") ? $_COOKIE["user_email"] : "") }}'>
              </div>
            </div>
            <div class="form-group">
              <label>Password</label>
              <div class="input-group"><span class="input-group-text"><i class="icon-lock"></i></span>
              <input class="form-control" type="password" name="password" placeholder="*********" value='{{ ((isset($_COOKIE["password"]) AND $_COOKIE["password"] != "") ? $_COOKIE["password"] : "") }}'>
            </div>
            </div>
           <div class="form-group custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="exampleCheck2" name="rememberMe" value="1" {{ ((isset($_COOKIE["rememberMe"])) ? "checked" : "") }}>
            <label class="custom-control-label" for="exampleCheck2" style="margin-left: 5px;vertical-align: middle;">Remember me</label>
          </div>
          <div class="form-group">
            <button class="btn btn-primary btn-block kecdzifvtb" type="submit">Sign in</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<script src="{{url('backend/assets/js/jquery-3.5.1.min.js')}}"></script>
<script src="{{url('backend/assets/js/bootstrap/bootstrap.bundle.min.js')}}"></script>
<script src="{{url('backend/assets/js/icons/feather-icon/feather.min.js')}}"></script>
<script src="{{url('backend/assets/js/icons/feather-icon/feather-icon.js')}}"></script>
<script src="{{url('backend/assets/js/config.js')}}"></script>
<script src="{{url('backend/assets/js/script.js')}}"></script>
<script src="{{url('backend/assets/toast/jquery.toast.js')}}"></script>
<script type="text/javascript">
  var baseUrl = '{{url("/")}}';
  var token = '{{ csrf_token() }}';
</script>
<script src="{{url('backend/assets/myjs/Common.js')}}"></script>
</body>
</html>