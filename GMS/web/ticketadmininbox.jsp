 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList,java.util.HashMap"%>

<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Robust admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template.">
    <meta name="keywords" content="admin template, robust admin template, dashboard template, flat admin template, responsive admin template, web app, crypto dashboard, bitcoin dashboard">
    <meta name="author" content="PIXINVENT">
    <title>TicketR INBOX</title>
    <link rel="apple-touch-icon" href=".https://pixinvent.com/bootstrap-admin-template/robust/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" href="/assets/icons/title.ico">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i%7CMuli:300,400,500,700" rel="stylesheet">
    <!-- BEGIN VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/vendors/css/tables/datatable/datatables.min.css">
    <!-- <link rel="stylesheet" type="text/css" href="http://localhost/auth/css_tcket/datatables.min.css"> -->
    
    <!-- END VENDOR CSS-->
    <!-- BEGIN ROBUST CSS-->
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/css/app.min.css">
    <!-- END ROBUST CSS-->
    <!-- BEGIN Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/css/core/menu/menu-types/vertical-menu.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/css/core/colors/palette-gradient.min.css">
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/assets/css/style.css">
    
    <!-- END Custom CSS-->
    
    
     

<style>
/* popup styles */
.popup {
  display: none;
	position: absolute;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	z-index: 10;
}
.popup-overlay {
	background: rgba(0,0,0,0.9);
	position: absolute;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
}
.popup-content {
	position: absolute;
  background: #fff;
	width: 500px;
	margin: -58px 0 0 -264px;
	left: 50%;
	top: 31%;
	z-index: 11;
  padding: 14px;
}
.close-popup {
  display: inline-block;
  position: absolute;
  top: -8px;
  right: -30px;
  font-size: 42px;
}

/* Animations */
.fadeIn {
  animation: fadeIn 0.5s ease-in both;
  -webkit-animation: fadeIn 0.5s ease-in both;
}
@keyframes fadeIn {
  from { opacity: 0; }
}
@-webkit-keyframes fadeIn {
  from { opacity: 0; }
}

.fadeOut {
  animation: fadeOut 0.5s ease-out both;
  -webkit-animation: fadeOut 0.5s ease-out both;
}
@keyframes fadeOut {
  to { opacity: 0; }
}
@-webkit-keyframes fadeOut {
  to { opacity: 0; }
}

.scaleIn {
  animation: scaleIn 0.5s ease-in both;
  -webkit-animation: scaleIn 0.5s ease-in both;
}
@keyframes scaleIn {
  from { opacity: 0; transform: scale(0.5); }
}
@-webkit-keyframes scaleIn {
  from { opacity: 0; -webkit-transform: scale(0.5); }
}

.scaleOut {
  animation: scaleOut 0.5s ease-out both;
  -webkit-animation: scaleOut 0.5s ease-out both;
}
@keyframes scaleOut {
  to { opacity: 0; transform: scale(0.5); }
}
@-webkit-keyframes scaleOut {
  to { opacity: 0; -webkit-transform: scale(0.5); }
}

.scaleUpIn {
  animation: scaleIn 0.5s ease-in both;
  -webkit-animation: scaleIn 0.5s ease-in both;
}
.scaleUpOut {
  animation: scaleUpOut 0.5s ease-in both;
  -webkit-animation: scaleUpOut 0.5s ease-in both;
}
@keyframes scaleUpOut {
  to { opacity: 0; transform: scale(1.2); }
}
@-webkit-keyframes scaleUpOut {
  to { opacity: 0; -webkit-transform: scale(1.2); }
}

.scaleDownIn {
  animation: scaleDownIn 0.5s ease-in both;
  -webkit-animation: scaleDownIn 0.5s ease-in both;
}
.scaleDownOut {
  animation: scaleOut 0.5s ease-in both;
  -webkit-animation: scaleOut 0.5s ease-in both;
}
@keyframes scaleDownIn {
  from { opacity: 0; transform: scale(1.2); }
}
@-webkit-keyframes scaleDownIn {
  from { opacity: 0; -webkit-transform: scale(1.2); }
}

.slideIn {
  animation: slideIn 0.5s ease-in both;
  -webkit-animation: slideIn 0.5s ease-in both;
}
@keyframes slideIn {
  from { opacity: 0; transform: translateY(-50%); }
}
@-webkit-keyframes slideIn {
  from { opacity: 0; -webkit-transform: translateY(-50%); }
}

.slideOut {
  animation: slideOut 0.5s ease-out both;
  -webkit-animation: slideOut 0.5s ease-out both;
}
@keyframes slideOut {
  to { opacity: 0; transform: translateY(50%); }
}
@-webkit-keyframes slideOut {
  to { opacity: 0; -webkit-transform: translateY(50%); }
}

.slideLeftIn {
  animation: slideLeftIn 0.5s ease-in both;
  -webkit-animation: slideLeftIn 0.5s ease-in both;
}
@keyframes slideLeftIn {
  from { opacity: 0; transform: translateX(-50%); }
}
@-webkit-keyframes slideLeftIn {
  from { opacity: 0; -webkit-transform: translateX(-50%); }
}

.slideLeftOut {
  animation: slideLeftOut 0.5s ease-out both;
  -webkit-animation: slideLeftOut 0.5s ease-out both;
}
@keyframes slideLeftOut {
  to { opacity: 0; transform: translateX(50%); }
}
@-webkit-keyframes slideLeftOut {
  to { opacity: 0; -webkit-transform: translateX(50%); }
}

.flipLeftIn {
    -webkit-transform-origin: 50% 50%;
    -moz-transform-origin: 50% 50%;
    transform-origin: 50% 50%;
    -webkit-animation: flipLeftIn .5s both ease-out;
    -moz-animation: flipLeftIn .5s both ease-out;
    animation: flipLeftIn .5s both ease-out;
}
@-webkit-keyframes flipLeftIn {
    from {-webkit-transform: translateZ(-1000px) rotateY(90deg); opacity: .2;}
}
@keyframes flipLeftIn {
    from {transform: translateZ(-1000px) rotateY(90deg);opacity: .2;}
}

.flipLeftOut {
    -webkit-transform-origin: 50% 50%;
    -moz-transform-origin: 50% 50%;
    transform-origin: 50% 50%;
    -webkit-animation: flipLeftOut .5s both ease-in;
    -moz-animation: flipLeftOut .5s both ease-in;
    animation: flipLeftOut .5s both ease-in;
}

@-webkit-keyframes flipLeftOut {
    to {-webkit-transform: translateZ(1000px) rotateY(-90deg); opacity: 0;}
}
@keyframes flipLeftOut {
    to {transform: translateZ(1000px) rotateY(-90deg); opacity: 0;}
}

.flipRightIn {
    -webkit-transform-origin: 50% 50%;
    -moz-transform-origin: 50% 50%;
    transform-origin: 50% 50%;
    -webkit-animation: flipRightIn .5s both ease-out;
    -moz-animation: flipRightIn .5s both ease-out;
    animation: flipRightIn .5s both ease-out;
}
@-webkit-keyframes flipRightIn {
    from {-webkit-transform: translateZ(-1000px) rotateY(-90deg); opacity: .2;}
}
@keyframes flipRightIn {
    from {transform: translateZ(-1000px) rotateY(-90deg);opacity: .2;}
}

.flipRightOut {
    -webkit-transform-origin: 50% 50%;
    -moz-transform-origin: 50% 50%;
    transform-origin: 50% 50%;
    -webkit-animation: flipRightOut .5s both ease-in;
    -moz-animation: flipRightOut .5s both ease-in;
    animation: flipRightOut .5s both ease-in;
}

@-webkit-keyframes flipRightOut {
    to {-webkit-transform: translateZ(1000px) rotateY(90deg); opacity: 0;}
}
@keyframes flipRightOut {
    to {transform: translateZ(1000px) rotateY(90deg); opacity: 0;}
}


.rotateIn {
    -webkit-transform-origin: 50% 50%;
    -moz-transform-origin: 50% 50%;
    transform-origin: 50% 50%;
    -webkit-animation: rotateIn .5s both ease-out;
    -moz-animation: rotateIn .5s both ease-out;
    animation: rotateIn .5s both ease-out;
}
@-webkit-keyframes rotateIn {
    from { -webkit-transform: translateZ(-3000px) rotateZ(-360deg); opacity: 0;}
}
@-moz-keyframes rotateIn {
    from {-moz-transform: translateZ(-3000px) rotateZ(-360deg);opacity: 0;}
}
@keyframes rotateIn {
    from {transform: translateZ(-3000px) rotateZ(-360deg);opacity: 0;}
}

.rotateOut {
    -webkit-transform-origin: 50% 50%;
    -moz-transform-origin: 50% 50%;
    transform-origin: 50% 50%;
    -webkit-animation: rotateOut .5s both ease-in;
    -moz-animation: rotateOut .5s both ease-in;
    animation: rotateOut .5s both ease-in;
}
@-webkit-keyframes rotateOut {
    to {-webkit-transform: translateZ(-3000px) rotateZ(360deg);opacity: 0;}
}
@-moz-keyframes rotateOut {
    to {-moz-transform: translateZ(-3000px) rotateZ(360deg);opacity: 0;}
}
@keyframes rotateOut {
    to { transform: translateZ(-3000px) rotateZ(360deg); opacity: 0;}
}

.rotateCubeIn {
    -webkit-transform-origin: 50% 100%;
    -webkit-animation: rotateCubeIn .6s both ease-in;
    -moz-transform-origin: 50% 100%;
    -moz-animation: rotateCubeIn .6s both ease-in;
    transform-origin: 50% 100%;
    animation: rotateCubeIn .6s both ease-in;
}
@-webkit-keyframes rotateCubeIn {
    0% {opacity: .3;
        -webkit-transform: translateY(-100%) rotateX(90deg);}
    50% {-webkit-animation-timing-function: ease-out;
        -webkit-transform: translateY(-50%) translateZ(-200px) rotateX(45deg); }
}
@-moz-keyframes rotateCubeIn {
    0% {opacity: .3;
        -moz-transform: translateY(-100%) rotateX(90deg); }
    50% {-moz-animation-timing-function: ease-out;
        -moz-transform: translateY(-50%) translateZ(-200px) rotateX(45deg);}
}
@keyframes rotateCubeIn {
    0% {opacity: .3;
        transform: translateY(-100%) rotateX(90deg);}
    50% {animation-timing-function: ease-out;
        transform: translateY(-50%) translateZ(-200px) rotateX(45deg);}
}

.rotateCubeOut {
    -webkit-transform-origin: 50% 0;
    -webkit-animation: rotateCubeOut .6s both ease-in;
    -moz-transform-origin: 50% 0;
    -moz-animation: rotateCubeOut .6s both ease-in;
    transform-origin: 50% 0;
    animation: rotateCubeOut .6s both ease-in;
}
@-webkit-keyframes rotateCubeOut {
    50% {-webkit-animation-timing-function: ease-out;-webkit-transform: translateY(50%) translateZ(-200px) rotateX(-45deg);  }
    100% { opacity: .3; -webkit-transform: translateY(100%) rotateX(-90deg); }
}
@-moz-keyframes rotateCubeOut {
    50% { -moz-animation-timing-function: ease-out;-moz-transform: translateY(50%) translateZ(-200px) rotateX(-45deg);  }
    100% { opacity: .3;-moz-transform: translateY(100%) rotateX(-90deg); }
}
@keyframes rotateCubeOut {
    50% {animation-timing-function: ease-out;
        transform: translateY(50%) translateZ(-200px) rotateX(-45deg); }
    100% { opacity: .3; transform: translateY(100%) rotateX(-90deg);}
}

/* Demo Styles */
 

.btn {
  background: rgb(0, 159, 211);
  color: #fff;
  border: 1px solid;
  display: inline-block;
  padding: 5px 20px;
}
.btn:hover {
  background: #fff;
  color: rgb(0, 159, 211);
}
.popup {
    -webkit-perspective: 1200px;
    -moz-perspective: 1200px;
    perspective: 1200px;
}
.popup-content {
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-transform: translate3d(0,0,0);
    -moz-transform: translate3d(0,0,0);
    transform: translate3d(0,0,0);
    -webkit-transform-style: preserve-3d;
    -moz-transform-style: preserve-3d;
    transform-style: preserve-3d;
}

</style>
    
    
  </head>
  <body class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar" data-open="click" data-menu="vertical-menu" data-col="2-columns">
   <%HttpSession session1 = request.getSession(false);
  String name = (String)session1.getAttribute("username");
  %>

     <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div>

    <!-- fixed-top-->
    <nav class="header-navbar navbar-expand-md navbar navbar-with-menu fixed-top navbar-semi-dark navbar-shadow">
      <div class="navbar-wrapper">
        <div class="navbar-header">
          <ul class="nav navbar-nav flex-row">
            <li class="nav-item mobile-menu d-md-none mr-auto"><a class="nav-link nav-menu-main menu-toggle hidden-xs is-active" href="#"><i class="ft-menu font-large-1"></i></a></li>
            <li class="nav-item"><a class="navbar-brand" href="#"><img class="brand-logo" alt="change! admin logo" src="/auth/img/title.png">
                <h3 class="brand-text">:ticketR</h3></a></li>
            <li class="nav-item d-md-none"><a class="nav-link open-navbar-container" data-toggle="collapse" data-target="#navbar-mobile"><i class="fa fa-ellipsis-v"></i></a></li>
          </ul>
        </div>
        <div class="collapse navbar-collapse" id="navbar-mobile">
            <ul class="nav navbar-nav mr-auto float-left">
              
            </ul>
            <ul class="nav navbar-nav float-right">         
              
             
              <li class="dropdown dropdown-user nav-item"><a class="dropdown-toggle nav-link dropdown-user-link" href="#" data-toggle="dropdown"><span class="avatar"><img src="/auth/img/title.png" alt="avatar"></span><span class="user-name"><%=name%></span></a>
                <div class="dropdown-menu dropdown-menu-right"><a class="dropdown-item" href="user-profile.html">
                  <div class="dropdown-divider"></div><a class="dropdown-item" href="/ticketlogout"></i> Logout</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>

    <!-- ////////////////////////////////////////////////////////////////////////////-->


    <div class="main-menu menu-fixed menu-dark menu-accordion    menu-shadow " data-scroll-to-active="true">
      <div class="main-menu-content ps-container ps-theme-light ps-active-y" data-ps-id="7e2bc806-372e-778a-7b1e-09f9b92a0646">
         <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
          <!-- <li class="nav-item has-sub"><a href="ticketdash"><i class="icon-home"></i><span class="menu-title" data-i18n="nav.dash.main">Dashboard</span><span class="badge badge badge-info badge-pill float-right mr-2">5</span></a>
           -->
           <li class=" nav-item"><a href="/auth/admticketdash"><i class="icon-support"></i><span class="menu-title" data-i18n="nav.support_raise_support.main">Dashboard</span></a>
           
             
          </li>
          
           
         
           <li class="active nav-item"><a href="/auth/admticketinbox"><i class="icon-support"></i><span class="menu-title" data-i18n="nav.support_raise_support.main">My Inbox</span></a>
         
          
           
          </li>
          <li class=" navigation-header"><span data-i18n="nav.category.layouts">SETTING</span><i class="ft-more-horizontal ft-minus" data-toggle="tooltip" data-placement="right" data-original-title="Layouts"></i>
          </li>
          
          <!-- <li class="nav-item has-sub"><a href="newtaskreg"><i class="icon-list"></i><span class="menu-title" data-i18n="nav.navbars.main">Task</span><span class="badge badge badge-success float-right mr-2">New</span></a> -->
          <li class=" nav-item"><a href="/auth/ticketadmnewtask"><i class="icon-support"></i><span class="menu-title" data-i18n="nav.support_raise_support.main">New Task</span></a>
          
             
          </li>
              
          <li class=" navigation-header"><span data-i18n="nav.category.support">Support</span><i class="ft-more-horizontal ft-minus" data-toggle="tooltip" data-placement="right" data-original-title="Support"></i>
          </li>
         <li class=" nav-item"><a href="/sendMail.jsp"></i><span class="menu-title" data-i18n="nav.support_documentation.main">Send Email</span></a>
          </li>
        </ul>
      <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: -2439px;"><div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps-scrollbar-y-rail" style="top: 2442px; height: 245px; right: 3px;"><div class="ps-scrollbar-y" tabindex="0" style="top: 182px; height: 18px;"></div></div></div>
    </div>

    <div class="app-content content">
      <div class="content-wrapper">
        <div class="content-header row">
          <div class="content-header-left col-md-8 col-12 mb-2 breadcrumb-new">
            <h3 class="content-header-title mb-0 d-inline-block">Sources Datatable</h3>
            <div class="row breadcrumbs-top d-inline-block">
              <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a>
                  </li>
                  <li class="breadcrumb-item"><a href="#">DataTables</a>
                  </li>
                  <li class="breadcrumb-item active">Sources Datatable
                  </li>
                </ol>
              </div>
            </div>
          </div>
          <div class="content-header-right col-md-4 col-12">
            <div class="btn-group float-md-right">
              <button class="btn btn-info dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon-settings mr-1"></i>Action</button>
              <div class="dropdown-menu arrow"><a class="dropdown-item" href="#"><i class="fa fa-calendar mr-1"></i> Calender</a><a class="dropdown-item" href="#"><i class="fa fa-cart-plus mr-1"></i> Cart</a><a class="dropdown-item" href="#"><i class="fa fa-life-ring mr-1"></i> Support</a>
                <div class="dropdown-divider"></div><a class="dropdown-item" href="#"><i class="fa fa-cog mr-1"></i> Settings</a>
              </div>
            </div>
          </div>
        </div>
      
        
         <div class="content-body"><!-- HTML (DOM) sourced data -->
<section id="html">
	<div class="row">
	    <div class="col-12">
	        <div class="card">
	           
	            <div class="card-content collpase show">
	                <div class="card-body card-dashboard">
	               </p>
	                <table class="table table-striped table-bordered sourced-data">
					        <thead>
					        <tr> <th>Action</th>
					             
					               <th>TicketId</th>       
 				        		   <th>Nature of Work</th>
 					            <th>Assigned To</th>
 					             <th>Requester</th>
 					             <th>Follower</th>
 					             <th>*Task Date</th>
 					             <th>Status</th>
 					               
 					               
 					             
 					               </tr>
					        </thead>
					        <tbody >
					         
	   <%ArrayList<HashMap<String,String>> userList =null;
					 if(request.getSession().getAttribute("userList") !=null) {
					 %>
									 	   		
					    <%  userList =(ArrayList<HashMap<String,String>> ) request.getSession().getAttribute("userList");
						      for(HashMap<String,String> row : userList){
						    %>
						    
						     <tr>
						    <td><a href="#" class="btn open-popup" data-id="<%=row.get("ticket_id")%>" data-animation="flipRight">View</a></td>
			                
			                <td>#<%=row.get("ticket_id")%> </td>
			                <td><%=row.get("natureofwork")%> </td>
			                <td><%=row.get("assigndto")%> </td>
			                <td><%=row.get("requstuser")%> </td>
			                <td><%=row.get("follower")%> </td>
			                <td><%=row.get("reqdate")%>  <%-- / <%=row.get("reqtime")%> --%></td>
			                <%if(row.get("status").equals("Complete")){ %>
			                 <td style="background: rgb(9, 150, 9);color: #fff;border: 11px solid;display: inline-block;padding: 1px 19px;"><%=row.get("status")%> </td>
			                 <%}else if(row.get("status").equals("Hold")){ %>
			                 <td style="background: rgb(226, 0, 0);color: #fff;border: 11px solid;display: inline-block;padding: 1px 34px;"><%=row.get("status")%> </td>
			                 <%}else{ %>
			                 <td style="background: rgb(226, 161, 0);color: #fff;border: 11px solid;display: inline-block;padding: 1px 14px;"><%=row.get("status")%> </td>
			                 
			                 <%} %>
			                </tr>
			                 
			
                 <div id="<%=row.get("ticket_id")%>" class="popup">
  <div class="popup-overlay"></div>
  <div class="popup-content">
    <a href="#" class="close-popup" data-id="<%=row.get("ticket_id")%>"data-animation="flipRight">&times;</a>
    <h1>Ticket Id : #<%=row.get("ticket_id")%> </h1>
    <p><b> Titile     : </b><%=row.get("title") %>     |  <b> Nature of Work :</b> <%=row.get("natureofwork") %> </p>
    

<p><b>Assigned To : </b><%=row.get("assigndto") %>    |  <b>Requstuser :</b> <%=row.get("requstuser") %>  </p>
<p><b>Follower :</b> <%=row.get("follower") %>   |	<b>Type Of Support :</b> <%=row.get("typeofsupport") %></p>

<p><b>Priority :</b> <%=row.get("priority") %> 	|	<b>Status :</b> <%=row.get("status") %> </p>
<p><b>Remarks :</b> <%=row.get("remarks") %> </p>
<p><b>Due Date / Time : </b><%=row.get("duedate") %> 	|	<%=row.get("reqdate") %>  /  <%=row.get("reqtime") %> </p>

<p>
 
 <%String path = row.get("files");
 
 
 try{
	 //String Str= "F:/apache-tomcat-7.0.27/tmpfiles/NewProject/12_11_2014/10425174_684289908293257_8334238618476197638_n_(1).jpg";
	 if(path!=null || path!=""){
	 
      boolean p = (path.matches("(.*), (.*)"));
    //  boolean a = (Str.matches("(.*), (.*)"));
      %>
	<% if(p==true){
	
		String[] splitpath = null;
		splitpath = path.split(", ");
		ArrayList arrlist = new ArrayList();int j=1;
		for(String arr : splitpath){
		  
		%> 

				
	
	<a  href="/auth/empdownloadServlet?filepath=<%=arr%>"><%=j++%> . Download - <%String[] splits = arr.split("/");%><%=splits[7]%> </a><br/>
			
					<%arrlist.add(arr);%>
					
				<%}%>
		
		<%			String filepath = null;
					String fpth =null;
					filepath=arrlist.toString();
					fpth = filepath.replace("[", "");
					fpth = fpth.replace("]", "");
					//splitfilepath=fpth.split(",");
		%>
		
		<%
			}else{
		%>
			<a  href="/auth/empdownloadServlet?filepath=<%=path%>"> Download -<%String[] splits = path.split("/");%><%=splits[7]%> </a>
		<%
	}
	}
 }catch(Exception e){
	 e.printStackTrace();
 }
	 %>	
	</p>   

    
  </div>
</div>
			                 
						   <%}} %>		
					           
					        </tbody>
					        
					        <tfoot>
					             
					        </tfoot>
					    </table>
					</div>
	            </div>
	        </div>
	    </div>
	</div>
</section>
<!--/ HTML (DOM) sourced data -->



    
    
    <!-- <div class="buy-now"><a href="https://1.envato.market/robust_admin" target="_blank" class="btn bg-gradient-directional-purple white btn-purple btn-glow px-2">Buy Now</a></div> -->
    <!-- <div class="buy-now"><a href="#" target="_blank" class="btn bg-gradient-directional-purple white btn-purple btn-glow px-2">New Task</a></div> -->

    <footer class="footer footer-static footer-light navbar-border">
        <p class="clearfix blue-grey lighten-2 text-sm-center mb-0 px-2"><span class="float-md-left d-block d-md-inline-block">Copyright © 2020 <a class="text-bold-800 grey darken-2" href="" target="_blank"> ticketR </a>, All rights reserved. </span></p>
    </footer>





    <!-- BEGIN VENDOR JS-->
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN ROBUST JS-->
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/js/core/app-menu.min.js"></script>
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/js/core/app.min.js"></script>
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/js/scripts/customizer.min.js"></script>
    <!-- END ROBUST JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/js/scripts/tables/datatables-extensions/datatables-sources.min.js"></script>
    <!-- END PAGE LEVEL JS-->
    
    
    
    
    
    
 <script type="text/javascript">
 
//jQuery extend functions for popup
 (function($) {
   $.fn.openPopup = function( settings ) {
     var elem = $(this);
     // Establish our default settings
     var settings = $.extend({
       anim: 'fade'
     }, settings);
     elem.show();
     elem.find('.popup-content').addClass(settings.anim+'In');
   }
   
   $.fn.closePopup = function( settings ) {
     var elem = $(this);
     // Establish our default settings
     var settings = $.extend({
       anim: 'fade'
     }, settings);
     elem.find('.popup-content').removeClass(settings.anim+'In').addClass(settings.anim+'Out');
     
     setTimeout(function(){
         elem.hide();
         elem.find('.popup-content').removeClass(settings.anim+'Out')
       }, 500);
   }
     
 }(jQuery));

 // Click functions for popup
 $('.open-popup').click(function(){
   $('#'+$(this).data('id')).openPopup({
     anim: (!$(this).attr('data-animation') || $(this).data('animation') == null) ? 'fade' : $(this).data('animation')
   });
 });
 $('.close-popup').click(function(){
   $('#'+$(this).data('id')).closePopup({
     anim: (!$(this).attr('data-animation') || $(this).data('animation') == null) ? 'fade' : $(this).data('animation')
   });
 });

 // To open/close the popup at any functions call the below
 // $('#popup_default').openPopup();
 // $('#popup_default').closePopup();


 </script>   
   <script src="https://apps.elfsight.com/p/platform.js" defer></script>
<div class="elfsight-app-4db87a40-3770-417f-b2ec-b1731c6ac71b"></div>
    
  </body>
</html>