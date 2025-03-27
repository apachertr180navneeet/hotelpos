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
  </head>
  <body>
    <section>
      <div class="container-fluid p-0">
        <div class="row m-0">
          <div class="col-12 p-0">
            <div class="login-card">
              <form class="theme-form login-form uavwdpirib" id="registerForm" style="width:70%" method="POST">
                <h4>Create your account</h4>
                <h6>Enter your personal details to create account</h6>
                <div class="form-group">
                  <div class="row">
                    <div class="col-md-6">
                      <label>Select Plan</label>
                      <?php $plans = $controller::getData("plans");?>
                      <select class="form-control requiredField" name="plan_id">
                       <?php foreach($plans as $plan){ ?>
                       <option value="<?php echo $plan['plan_id'];?>"><?php echo $plan['amount'];?></option>
                       <?php } ?>
                      </select>
                    </div>
                    <div class="col-md-6">
                      <label>Reffer Id</label>
                      <input autocomplete="new-password" class="form-control ref_id" type="text" placeholder="Reffer Id" name="ref_id">
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="row">
                    <div class="col-md-12">
                      <label>Full Name</label>
                      <input autocomplete="new-password" class="form-control requiredField" type="text" placeholder="Full Name" name="name">
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="row">
                    <div class="col-md-6">
                      <label>Mobile</label>
                      <input autocomplete="new-password" class="form-control requiredField" value="9876543211"  type="text" placeholder="Mobile" name="phone">
                    </div>
                    <div class="col-md-6">
                      <label>Email</label>
                      <input autocomplete="new-password" class="form-control requiredField" value="a@a.com"  type="email" placeholder="Email" name="email">
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="row">
                    <div class="col-md-6">
                      <label>Password</label>
                      <input autocomplete="new-password" class="form-control requiredField" value="attakhan" type="password" placeholder="Password" name="password">
                    </div>
                    <div class="col-md-6">
                      <label>Confirm</label>
                      <input autocomplete="new-password" class="form-control requiredField" value="attakhan" type="password" placeholder="Confirm Password" name="confirm_password">
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="checkbox">
                    <input id="checkbox1" type="checkbox" name="agree">
                    <label class="text-muted" for="checkbox1">Agree with <span>Privacy Policy</span></label>
                  </div>
                </div>
                <div class="form-group">
                  {{-- <button class="btn btn-primary btn-block xpqlbyjsye" type="submit">Create Account</button> --}}
                  <div class="btn btn-primary btn-block xpqlbyjsye" style="width:250px;">Create Account</div>
                </div>
                <div class="login-social-title">
                  <h5>Follow Us On</h5>
                </div>
                <div class="form-group">
                  <ul class="login-social">
                    <li><a href="https://www.linkedin.com/login" target="_blank"><i data-feather="linkedin"></i></a></li>
                    <li><a href="https://twitter.com/" target="_blank"><i data-feather="twitter"></i></a></li>
                    <li><a href="https://www.facebook.com/" target="_blank"><i data-feather="facebook"></i></a></li>
                    <li><a href="https://www.instagram.com/login" target="_blank"><i data-feather="instagram"></i></a></li>
                  </ul>
                </div>
                <p>Already have an account?<a class="ms-2" href="{{url('/')}}/admin/login">Sign in</a></p>
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