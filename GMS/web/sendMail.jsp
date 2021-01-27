
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
    <meta name="author" content="SendMail">
    <title>:ticketR - Send Mail</title>
    
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
    <div class="app-content content">
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body"><section class="flexbox-container">
   
                <div class="card-header border-0" style="background-color: #ffffff;">
                    <div class="card-title text-center">
                        <div class="p-1"><img src="/assets/sendmail.jpg" style="width: 300px;height: 380px;" alt="branding logo"></div>
                    </div>
                </div>
                <div class="card-content" style="background-color: #ffffff;">
                    <div class="card-body">
                       
                        <form action="SendMailAttachedServlet" method="post" enctype="multipart/form-data">
        <table border="0" width="60%" align="center">
            <h6 class="card-subtitle line-on-side text-muted text-center font-small-3 pt-2"><span>SEND MAIL FORM </span></h6>
            <tr>
                <td width="50%">Recipient address </td>
                <td><input type="text" name="recipient" size="50"/></td>
            </tr>
            <tr>
                <td>Subject </td>
                <td><input type="text" name="subject" size="50"/></td>
            </tr>
            <tr>
                <td>Content </td>
                <td><textarea rows="10" cols="39" name="content"></textarea> </td>
            </tr>
            <tr>
                <td>Attach file </td>
                <td><input type="file" name="file" size="50" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Send"/></td>
            </tr>
            
        </table> 
                            
    </form>
                        
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
</html>