<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
  <head>
      <link rel="stylesheet" href= "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Robust admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template.">
    <meta name="keywords" content="admin template, robust admin template, dashboard template, flat admin template, responsive admin template, web app, crypto dashboard, bitcoin dashboard">
    <meta name="author" content="PIXINVENT">
    <title>:ticketR - Login Page</title>
    
    <link rel="apple-touch-icon" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" href="/assets/icons/title.ico">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i%7CMuli:300,400,500,700" rel="stylesheet">
    <!-- BEGIN VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/vendors/css/forms/icheck/icheck.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/vendors/css/forms/icheck/custom.css">
    <!-- END VENDOR CSS-->
    <!-- BEGIN ROBUST CSS-->
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/css/app.min.css">
    <!-- END ROBUST CSS-->
    <!-- BEGIN Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/css/core/menu/menu-types/vertical-menu.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/css/core/colors/palette-gradient.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/css/pages/login-register.min.css">
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/assets/css/style.css">
    <!-- END Custom CSS-->
     <!-- ---------------------------GET PUBLIC IP GET -------------- -->	
		<script type="text/javascript">
		function myonload(){
			 document.getElementById("ip").value = myip; 
		}
                .input-icons i { 
            position: absolute; 
        } 
          
        .input-icons { 
            width: 100%; 
            margin-bottom: 10px; 
        } 
          
        .icon { 
            padding: 10px; 
            min-width: 40px; 
        } 
          
        .input-field { 
            width: 100%; 
            padding: 10px; 
            text-align: center; 
        } 
		</script>
		  <script type="text/javascript" src="http://l2.io/ip.js?var=myip"></script> 
	<!-- -----------IP END -->
<!--==============================content=================================-->
  </head>
  <body onload="myonload()" class="vertical-layout vertical-menu 1-column   menu-expanded blank-page blank-page" data-open="click" data-menu="vertical-menu" data-col="1-column">
    <!-- ////////////////////////////////////////////////////////////////////////////-->
   
                    </div
    <div class="app-content content">
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body"><section class="flexbox-container">
    <div class="col-12 d-flex align-items-center justify-content-center">
        <div class="col-md-4 col-10 box-shadow-2 p-0">
            <div class="card border-grey border-lighten-3 m-0">
                
                <div class="card-header border-0" style="background-color: #ffffff;">
                    
                    <div class="card-title text-center">
                        <div class="p-1"><img src="/img/logo.png" style="width: 350px;height: 150px;" alt="branding logo"></div>
                    <div class="p-1"><img src="/assets/24.jpg" style="width: 150px;height: 150px;" alt="branding logo"></div>
                    </div>
                    <h6 class="card-subtitle line-on-side text-muted text-center font-small-3 pt-2"><span>Login</span></h6>
                </div>
                <div class="card-content" style="background-color: #ffffff;">
                    <div class="card-body">
                        <form class="form-horizontal form-simple" method="post" action="/ticketlogincheck" novalidate>
                        <input type="hidden" id ="ip" name="ipaddress">
                            <fieldset class="form-group position-relative has-icon-left mb-0">
                                <input type="text"   name="username"  class="form-control form-control-lg input-lg" id="user-name" placeholder="Your Username" required>
                                <div class="form-control-position">
                                    <i class="fa fa-user icon"> </i>
                                </div>
                            </fieldset>
                            <fieldset class="form-group position-relative has-icon-left">
                                <input type="password" name="password" class="form-control form-control-lg input-lg" id="user-password" placeholder="Enter Password" required>
                                <div class="form-control-position">
                                    <i class="fa fa-key"></i>
                                </div>
                               
                            </fieldset>
                            <div class="form-group row">
                                <div class="col-md-6 col-12 text-center text-md-left">
                                    <fieldset>
                                        <input type="checkbox" id="remember-me" class="chk-remember">
                                        <label for="remember-me"> Remember Me</label>
                                    </fieldset>
                                </div>
                                <div class="col-md-6 col-12 text-center text-md-right"><a href="/userregister" class="card-link">New User Register</a></div>
                        
                            </div>
                            <button type="submit" class="btn btn-info btn-lg btn-block">
                                <i class="fa fa-lock"></i> Login</button>
                        </form>
                    </div>
                </div>
                <div class="card-footer">
                    <div class="">
                        <p class="float-sm-left text-center m-0">All rights reserved @ <a href="#" class="card-link">ticketR</a></p>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->

    <!-- BEGIN VENDOR JS-->
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/vendors/js/forms/icheck/icheck.min.js"></script>
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/vendors/js/forms/validation/jqBootstrapValidation.js"></script>
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN ROBUST JS-->
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/js/core/app-menu.min.js"></script>
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/js/core/app.min.js"></script>
    <!-- END ROBUST JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/js/scripts/forms/form-login-register.min.js"></script>
    <!-- END PAGE LEVEL JS-->
  </body>
<</html>