 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList,java.util.HashMap"%>

<html class="loaded" lang="en" data-textdirection="ltr"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Robust admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template.">
    <meta name="keywords" content="admin template, robust admin template, dashboard template, flat admin template, responsive admin template, web app, crypto dashboard, bitcoin dashboard">
    <meta name="author" content="PIXINVENT">
    <title>ticketR: User Dashboard</title>
    <link rel="apple-touch-icon" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" href="/assets/icons/title.ico">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i%7CMuli:300,400,500,700" rel="stylesheet">
    <!-- BEGIN VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/vendors/css/forms/toggle/switchery.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/vendors/css/extensions/dragula.min.css">
    <link rel="stylesheet" type="text/css" href="https//pixinvent.com/bootstrap-admin-template/robust/app-assets/fonts/flag-icon-css/css/flag-icon.min.css">

 

    <!-- END VENDOR CSS-->
    <!-- BEGIN ROBUST CSS-->
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/css/app.min.css">
    <!-- END ROBUST CSS-->
    <!-- BEGIN Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/css/core/menu/menu-types/vertical-menu.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/css/core/colors/palette-gradient.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/css/plugins/forms/switch.min.css">
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/bootstrap-admin-template/robust/assets/css/style.css">
    
    
    <!-- END Custom CSS-->
  <style type="text/css">@keyframes fadeInOpacity{0%{opacity:0}to{opacity:1}}:hover>*>.fbvd--wrapper{animation-name:fadeInOpacity;animation-duration:.3s;opacity:1}.fbvd--wrapper{position:absolute;top:10px;left:10px;opacity:0;text-align:center;margin:0;z-index:5}.fbvd--wrapper a{background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPjxzdmcgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiI+PHBhdGggZmlsbD0iIzRiNGY1NiIgZD0iTTggMTUuNWw3LjUtNy41aC00LjV2LThoLTZ2OGgtNC41eiI+PC9wYXRoPjwvc3ZnPg==) no-repeat 3px 4.55px; background-color: #fff; display:inline-block;font:700 14px Helvetica,Arial,sans-serif;color:#4b4f56;text-decoration:none;vertical-align:middle;padding:0px 8px 0px;margin-right:8px;border-radius:2px; line-height: 22px; padding-left:19px; border: 1px solid #e7e7e7; background-size: 13px}.fbvd--wrapper a:last-child{margin-right:0}.fbvd--wrapper a:hover{text-decoration:none}.fbvd--wrapper a:focus{box-shadow:0 0 1px 2px rgba(88,144,255,.75),0 1px 1px rgba(0,0,0,.15);outline:none}.fbvd--wrapper b{font-size:13px;position:relative;top:1px;color:#3b5998;font-weight:400}</style></head>
  <body class="vertical-layout vertical-menu 2-columns fixed-navbar menu-expanded pace-done" data-open="click" data-menu="vertical-menu" data-col="2-columns"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
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
            <li class="nav-item"><a class="navbar-brand" href="#"><img class="brand-logo" alt="ticketR! Admin logo" src="/auth/img/title.png">
                <h3 class="brand-text">:ticketR</h3></a></li>
            <li class="nav-item d-md-none"><a class="nav-link open-navbar-container" data-toggle="collapse" data-target="#navbar-mobile"><i class="fa fa-ellipsis-v"></i></a></li>
          </ul>
        </div>
        <div class="navbar-container content">
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
           <li class=" active nav-item"><a href="/auth/userticketdash"><i class="icon-support"></i><span class="menu-title" data-i18n="nav.support_raise_support.main">Dashboard</span></a>
           
             
          </li>
          
           
         
           <li class="nav-item"><a href="/auth/userticketinbox"><i class="icon-support"></i><span class="menu-title" data-i18n="nav.support_raise_support.main">My Inbox</span></a>
         
          
             
          </li>
          <li class=" navigation-header"><span data-i18n="nav.category.layouts">SETTING</span><i class="ft-more-horizontal ft-minus" data-toggle="tooltip" data-placement="right" data-original-title="Layouts"></i>
          </li>
          
           <li class=" nav-item"><a href="/auth/ticketusernewtask"><i class="icon-support"></i><span class="menu-title" data-i18n="nav.support_raise_support.main">New Task</span></a>
        
          
         <li class=" nav-item"><a href="/sendMail.jsp"></i><span class="menu-title" data-i18n="nav.support_documentation.main">Send Email</span></a>
          </li>
        </ul>
      <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: -2439px;"><div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps-scrollbar-y-rail" style="top: 2442px; height: 245px; right: 3px;"><div class="ps-scrollbar-y" tabindex="0" style="top: 182px; height: 18px;"></div></div></div>
    </div>


    <div class="app-content content">
      <div class="content-wrapper">

        </div>
        <div class="content-body"><!-- Draggable cards section start -->
<section  id="draggable-cards">
	<div class="row" id="card-drag-area" style="margin-left: 20px;">


	   <%ArrayList<HashMap<String,String>> userList =null;
					 if(request.getAttribute("userList") !=null) {
					 %>
									 	   		
					    <%  userList =(ArrayList<HashMap<String,String>> ) request.getAttribute("userList");
						      for(HashMap<String,String> row : userList){
						    %>
						  		


		<div class="col-xl-3 col-lg-6 col-sm-12" >
			<div class="card customizer-toggle box-shadow-3"  style=" width: 90%;max-width: 400px;height: 290px;
    	box-shadow: 0 10px 16px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19) !important;background-image: linear-gradient(yellow,orange);">
				<a href="#"  onClick="reply_click(this.id)" id="<%=row.get("id")%>" style="-webkit-text-fill-color: black;"  >
				 
				<div class="card-content" >
					<div class="card-body"  >
					
				 
						<u><h4>TICKET ID: #<strong id="ticketid"> <%=row.get("ticket_id") %></strong></h4></u>
						<p class="card-text" >
						   - <b>Titile :</b>  <%=row.get("title") %>  <br/> 
						   - <b>Nature of Work :</b>  <%=row.get("natureofwork") %> <br/>
						   - <b>Assigned To :</b>  <%=row.get("assigndto") %> <br/>
						   - <b>Requester :</b>  <%=row.get("requstuser") %> <br/>
						   - <b>Follower :</b>  <%=row.get("follower") %> <br/>
						   - <b>Status :</b>  <%=row.get("status") %><br/>
						 </p>
						 
						
					</div>
				</div>
				</a>
			</div>
		</div> 
		 
<%}%>
<%if(!userList.isEmpty()){%>


<%}else{ %>
<center style="margin-left: 400px;"><h1>NO TICKET TODAY</h1></center>
<%} %>

<%}%>
   
  
</div> 
 

	<script type="text/javascript">
  function reply_click(clicked_id)
  {
    //  alert(clicked_id);
    $("#cid").val(clicked_id);
    var user ='<%=name%>';
      $.ajax({
			url: "/admticketdata?id="+clicked_id,
			type : 'get',
			cache : false,
			contentType:"application/json",
			 
          error : function() {
              //alert("Error");
          },
          success : function(response) {
        	  var out = "";
				 $.each(response, function(index) {
					  
						 $("#ticketid2").html(response[index].ticket_id);
						  $("#status").html(response[index].title);
						  $("#work").html(response[index].natureofwork);
						  $("#assigndto").html(response[index].assigndto);
						  $("#typeofsupport").html(response[index].typeofsupport);
						  $("#requstuser").html(response[index].requstuser);
						  $("#follower").html(response[index].follower);
                                                 if(response[index].follower == user || response[index].requstuser == user){
							  // alert('am  equalt to follower');
							  $("div#replay").hide();
							  $("div#replay").hide().attr("id");
						  }else{
							//  alert('am not equalt to follower');
							  $("div#replay").show();
							    $("div#replay").show().attr("id");
						  } 
                                                  
						  $("#priority").html(response[index].priority);
						  $("#remarks").html(response[index].remarks);
						  $("#duedate").html(response[index].duedate);
						  $("#taskcomplete_date").html(response[index].taskcomplete_date);
						  $("#tstatus").html(response[index].status);
					 
						  if(!response[index].msg){}else{
							  out+="<h5 class='mt-1 mb-1 text-bold-500'><b> ";
							  if(user==response[index].username){
								  out+="Me ";
							  }else{
								  out+=response[index].username;
							  }
							  out+= " : </b><label style='width: 334px;'>"+response[index].msg+"</label></h5>";
							  }
 						});
				 
				 $("#conve").html(out);

		  }});
      
      
  }
</script>	 





</section>
 
        </div>
      </div>
   
    <!-- ////////////////////////////////////////////////////////////////////////////-->
    
    
    
    

    <div class="customizer border-left-blue-grey border-left-lighten-4 d-none d-xl-block"><a class="customizer-close" href="#"><i class="ft-x font-medium-3"></i></a>
    
    
    <a class="customizer-toggle bg-danger box-shadow-3" href="#">
    	<i class="ft-settings font-medium-3 spinner white"></i>
    </a>
    
    
    
    
    <div class="customizer-content p-2 ps-container ps-theme-dark ps-active-y" data-ps-id="1855b8e1-31d8-3d05-693e-9dfec1739d5e">
	<h4 class="text-uppercase mb-0">Ticket_Id: #<strong id="ticketid2"></strong></h4>
	<hr>
	
	<h5 class="mt-1 mb-1 text-bold-500"> Titile  &nbsp;&nbsp;&nbsp; : <b><label id="status"></label></b></h5>
	
	<h5 class="mt-1 mb-1 text-bold-500"> Nature of Work : <b><label id="work"></label></b></h5>
	<h5 class="mt-1 mb-1 text-bold-500"> Assigned To : <b><label id="assigndto"></label></b></h5>
	<h5 class="mt-1 mb-1 text-bold-500"> Requstuser : <b><label id="requstuser"></label></b></h5>
	<h5 class="mt-1 mb-1 text-bold-500"> Follower : <b><label id="follower"></label></b></h5>
	<h5 class="mt-1 mb-1 text-bold-500"> Type Of Support : <b><label id="typeofsupport"></label></b></h5>
	<h5 class="mt-1 mb-1 text-bold-500"> Priority : <b><label id="priority"></label></b></h5>
	<h5 class="mt-1 mb-1 text-bold-500"> Remarks : <b><label id="remarks"></label></b></h5>
	<h5 class="mt-1 mb-1 text-bold-500"> Due Date / Time : <b><label id="duedate"></label></b></h5>
	<h5 class="mt-1 mb-1 text-bold-500"> Task Complete_Date / Time : <b><label id="taskcomplete_date"></label></b></h5>
	<h5 class="mt-1 mb-1 text-bold-500"> Status : <b><label id="tstatus"></label></b></h5>
	 
	 
	 <label id="conve"></label>
	
	<h5 class="mt-1 mb-1 text-bold-500"> Any Queries : <b>
	 <textarea id="remarksmsg" rows="6" class="form-control border-primary" name="remark" placeholder="Your messages"></textarea>
	</b></h5>
	
	<h5 class="mt-1 mb-1 text-bold-500"><b>
		<button type="submit" id="submit" class="btn btn-info btn-lg btn-block"><i class="ft-unlock"></i> Submit</button>																																																											
	</b></h5>
 
	 
	<div id="replay">
	 <form method="post" action="/auth/usertaskcomplete" enctype="multipart/form-data" id="myform"> 
	 <input type="hidden" id="cid" name="cid">
	 
	<h5 class="mt-1 mb-1 text-bold-500"> Final Action : <b>
	 <select name="cmpstatus" id="action"  class="form-control border-primary">
			                                <option value="none" selected="" disabled="">Select your option.</option>
			                                <option value="Hold">Hold</option>
			                                <option value="Complete">Complete</option>
			                                
			                            </select>
	
	</b></h5>
	
	<h5 class="mt-1 mb-1 text-bold-500"> Final Action : <b>
	  <input type="file" id="file" name="file" /> 
 
	</b></h5>
	
	
	<h5 class="mt-1 mb-1 text-bold-500"> Any Queries : <b>
	 <textarea id="remarks" rows="6" class="form-control border-primary" name="reremark" placeholder="Your messages"></textarea>
	</b></h5>
	
	
	<h5 class="mt-1 mb-1 text-bold-500"><b>
		<button type="submit" id="combtn" class="btn btn-info btn-lg btn-block"><i class="ft-unlock"></i> Complete</button>																																																											
	
	</b></h5>
	
	<div class="form-group">
		<!-- Outline Button group -->
		<div class="btn-group customizer-sidebar-options" role="group" aria-label="Basic example">
			<button type="button" class="btn btn-outline-info" data-sidebar="menu-light">Light Menu</button>
			<button type="button" class="btn btn-outline-info active" data-sidebar="menu-dark">Dark Menu</button>
		</div>
	</div>
	<hr>
	</form>
	</div>
	
	</div>
	<hr>
	
	
	
	<h5 class="mt-1 text-bold-500">Navigation Color Options</h5>
	<ul class="nav nav-tabs nav-underline nav-justified color-options">
		<li class="nav-item">
			<a class="nav-link nav-semi-light active" id="color-opt-1" data-toggle="tab" aria-controls="clrOpt1" href="#clrOpt1" aria-expanded="false">Semi Light</a>
		</li>
		<li class="nav-item">
			<a class="nav-link nav-semi-dark" id="color-opt-2" data-toggle="tab" aria-controls="clrOpt2" href="#clrOpt2" aria-expanded="false">Semi Dark</a>
		</li>
		<li class="nav-item">
			<a class="nav-link nav-dark" id="color-opt-3" data-toggle="tab" aria-controls="clrOpt3" href="#clrOpt3" aria-expanded="false">Dark</a>
		</li>
		<li class="nav-item">
			<a class="nav-link nav-light" id="color-opt-4" data-toggle="tab" aria-controls="clrOpt4" href="#clrOpt4" aria-expanded="true">Light</a>
		</li>
	</ul>
	<div class="tab-content px-1 pt-1">
		<div role="tabpanel" class="tab-pane active" id="clrOpt1" aria-expanded="true" aria-labelledby="color-opt-1">
			<div class="row">
				<div class="col-6">
					<h6>Solid</h6>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-slight-clr" class="custom-control-input bg-blue-grey" data-bg="bg-blue-grey" id="default-solid">
							<label class="custom-control-label" for="default-solid">Default</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-slight-clr" class="custom-control-input bg-primary" data-bg="bg-primary" id="primary-solid">
							<label class="custom-control-label" for="primary-solid">Primary</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-slight-clr" class="custom-control-input bg-danger" data-bg="bg-danger" id="danger-solid">
							<label class="custom-control-label" for="danger-solid">Danger</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-slight-clr" class="custom-control-input bg-success" data-bg="bg-success" id="success-solid">
							<label class="custom-control-label" for="success-solid">Success</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-slight-clr" class="custom-control-input bg-blue" data-bg="bg-blue" id="blue">
							<label class="custom-control-label" for="blue">Blue</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-slight-clr" class="custom-control-input bg-cyan" data-bg="bg-cyan" id="cyan">
							<label class="custom-control-label" for="cyan">Cyan</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-slight-clr" class="custom-control-input bg-pink" data-bg="bg-pink" id="pink">
							<label class="custom-control-label" for="pink">Pink</label>
						</div>
					
				</div>
				<div class="col-6">
					<h6>Gradient</h6>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-slight-clr" checked="" class="custom-control-input bg-blue-grey" data-bg="bg-gradient-x-grey-blue" id="bg-gradient-x-grey-blue">
							<label class="custom-control-label" for="bg-gradient-x-grey-blue">Default</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-slight-clr" class="custom-control-input bg-primary" data-bg="bg-gradient-x-primary" id="bg-gradient-x-primary">
							<label class="custom-control-label" for="bg-gradient-x-primary">Primary</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-slight-clr" class="custom-control-input bg-danger" data-bg="bg-gradient-x-danger" id="bg-gradient-x-danger">
							<label class="custom-control-label" for="bg-gradient-x-danger">Danger</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-slight-clr" class="custom-control-input bg-success" data-bg="bg-gradient-x-success" id="bg-gradient-x-success">
							<label class="custom-control-label" for="bg-gradient-x-success">Success</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-slight-clr" class="custom-control-input bg-blue" data-bg="bg-gradient-x-blue" id="bg-gradient-x-blue">
							<label class="custom-control-label" for="bg-gradient-x-blue">Blue</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-slight-clr" class="custom-control-input bg-cyan" data-bg="bg-gradient-x-cyan" id="bg-gradient-x-cyan">
							<label class="custom-control-label" for="bg-gradient-x-cyan">Cyan</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-slight-clr" class="custom-control-input bg-pink" data-bg="bg-gradient-x-pink" id="bg-gradient-x-pink">
							<label class="custom-control-label" for="bg-gradient-x-pink">Pink</label>
						</div>
					
				</div>
			</div>
		</div>
		<div class="tab-pane" id="clrOpt2" aria-labelledby="color-opt-2">
			
				<div class="custom-control custom-radio mb-1">
					<input type="radio" name="nav-sdark-clr" checked="" class="custom-control-input bg-default" data-bg="bg-default" id="opt-default">
					<label class="custom-control-label" for="opt-default">Default</label>
				</div>
			
				<div class="custom-control custom-radio mb-1">
					<input type="radio" name="nav-sdark-clr" class="custom-control-input bg-primary" data-bg="bg-primary" id="opt-primary">
					<label class="custom-control-label" for="opt-primary">Primary</label>
				</div>
			
				<div class="custom-control custom-radio mb-1">
					<input type="radio" name="nav-sdark-clr" class="custom-control-input bg-danger" data-bg="bg-danger" id="opt-danger">
					<label class="custom-control-label" for="opt-danger">Danger</label>
				</div>
			
				<div class="custom-control custom-radio mb-1">
					<input type="radio" name="nav-sdark-clr" class="custom-control-input bg-success" data-bg="bg-success" id="opt-success">
					<label class="custom-control-label" for="opt-success">Success</label>
				</div>
			
				<div class="custom-control custom-radio mb-1">
					<input type="radio" name="nav-sdark-clr" class="custom-control-input bg-blue" data-bg="bg-blue" id="opt-blue">
					<label class="custom-control-label" for="opt-blue">Blue</label>
				</div>
			
				<div class="custom-control custom-radio mb-1">
					<input type="radio" name="nav-sdark-clr" class="custom-control-input bg-cyan" data-bg="bg-cyan" id="opt-cyan">
					<label class="custom-control-label" for="opt-cyan">Cyan</label>
				</div>
			
				<div class="custom-control custom-radio mb-1">
					<input type="radio" name="nav-sdark-clr" class="custom-control-input bg-pink" data-bg="bg-pink" id="opt-pink">
					<label class="custom-control-label" for="opt-pink">Pink</label>
				</div>
			
		</div>
		<div class="tab-pane" id="clrOpt3" aria-labelledby="color-opt-3">
			<div class="row">
				<div class="col-6">
					<h3>Solid</h3>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-dark-clr" class="custom-control-input bg-blue-grey" data-bg="bg-blue-grey" id="solid-blue-grey">
							<label class="custom-control-label" for="solid-blue-grey">Default</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-dark-clr" class="custom-control-input bg-primary" data-bg="bg-primary" id="solid-primary">
							<label class="custom-control-label" for="solid-primary">Primary</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-dark-clr" class="custom-control-input bg-danger" data-bg="bg-danger" id="solid-danger">
							<label class="custom-control-label" for="solid-danger">Danger</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-dark-clr" class="custom-control-input bg-success" data-bg="bg-success" id="solid-success">
							<label class="custom-control-label" for="solid-success">Success</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-dark-clr" class="custom-control-input bg-blue" data-bg="bg-blue" id="solid-blue">
							<label class="custom-control-label" for="solid-blue">Blue</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-dark-clr" class="custom-control-input bg-cyan" data-bg="bg-cyan" id="solid-cyan">
							<label class="custom-control-label" for="solid-cyan">Cyan</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-dark-clr" class="custom-control-input bg-pink" data-bg="bg-pink" id="solid-pink">
							<label class="custom-control-label" for="solid-pink">Pink</label>
						</div>
					
				</div>

				<div class="col-6">
					<h3>Gradient</h3>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-dark-clr" class="custom-control-input bg-blue-grey" data-bg="bg-gradient-x-grey-blue" id="bg-gradient-x-grey-blue1">
							<label class="custom-control-label" for="bg-gradient-x-grey-blue1">Default</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-dark-clr" checked="" class="custom-control-input bg-primary" data-bg="bg-gradient-x-primary" id="bg-gradient-x-primary1">
							<label class="custom-control-label" for="bg-gradient-x-primary1">Primary</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-dark-clr" checked="" class="custom-control-input bg-danger" data-bg="bg-gradient-x-danger" id="bg-gradient-x-danger1">
							<label class="custom-control-label" for="bg-gradient-x-danger1">Danger</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-dark-clr" checked="" class="custom-control-input bg-success" data-bg="bg-gradient-x-success" id="bg-gradient-x-success1">
							<label class="custom-control-label" for="bg-gradient-x-success1">Success</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-dark-clr" checked="" class="custom-control-input bg-blue" data-bg="bg-gradient-x-blue" id="bg-gradient-x-blue1">
							<label class="custom-control-label" for="bg-gradient-x-blue1">Blue</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-dark-clr" checked="" class="custom-control-input bg-cyan" data-bg="bg-gradient-x-cyan" id="bg-gradient-x-cyan1">
							<label class="custom-control-label" for="bg-gradient-x-cyan1">Cyan</label>
						</div>
					
						<div class="custom-control custom-radio mb-1">
							<input type="radio" name="nav-dark-clr" checked="" class="custom-control-input bg-pink" data-bg="bg-gradient-x-pink" id="bg-gradient-x-pink1">
							<label class="custom-control-label" for="bg-gradient-x-pink1">Pink</label>
						</div>
					
				</div>
			</div>
		</div>
		<div class="tab-pane" id="clrOpt4" aria-labelledby="color-opt-4">
			
				<div class="custom-control custom-radio mb-1">
					<input type="radio" name="nav-light-clr" class="custom-control-input bg-blue-grey" data-bg="bg-blue-grey bg-lighten-4" id="light-blue-grey">
					<label class="custom-control-label" for="light-blue-grey">Default</label>
				</div>
			
				<div class="custom-control custom-radio mb-1">
					<input type="radio" name="nav-light-clr" class="custom-control-input bg-primary" data-bg="bg-primary bg-lighten-4" id="light-primary">
					<label class="custom-control-label" for="light-primary">Primary</label>
				</div>
			
				<div class="custom-control custom-radio mb-1">
					<input type="radio" name="nav-light-clr" class="custom-control-input bg-danger" data-bg="bg-danger bg-lighten-4" id="light-danger">
					<label class="custom-control-label" for="light-danger">Danger</label>
				</div>
			
				<div class="custom-control custom-radio mb-1">
					<input type="radio" name="nav-light-clr" class="custom-control-input bg-success" data-bg="bg-success bg-lighten-4" id="light-success">
					<label class="custom-control-label" for="light-success">Success</label>
				</div>
			
				<div class="custom-control custom-radio mb-1">
					<input type="radio" name="nav-light-clr" class="custom-control-input bg-blue" data-bg="bg-blue bg-lighten-4" id="light-blue">
					<label class="custom-control-label" for="light-blue">Blue</label>
				</div>
			
				<div class="custom-control custom-radio mb-1">
					<input type="radio" name="nav-light-clr" class="custom-control-input bg-cyan" data-bg="bg-cyan bg-lighten-4" id="light-cyan">
					<label class="custom-control-label" for="light-cyan">Cyan</label>
				</div>
			
				<div class="custom-control custom-radio mb-1">
					<input type="radio" name="nav-light-clr" class="custom-control-input bg-pink" data-bg="bg-pink bg-lighten-4" id="light-pink">
					<label class="custom-control-label" for="light-pink">Pink</label>
				</div>
			
		</div>
	</div>
<div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 3px;"><div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps-scrollbar-y-rail" style="top: 0px; height: 643px; right: 3px;"><div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 511px;"></div></div></div>
    </div>
    <div class="buy-now">
    <!--  <a href="https://goo.gl/J1RsWj" target="_blank" class="btn bg-gradient-directional-purple white btn-purple btn-glow px-2">Buy Now</a> --> 
    <a href="/auth/newtaskreg"  class="btn bg-gradient-directional-purple white btn-purple btn-glow px-2">New Task</a>
    </div>

    <footer class="footer footer-static footer-light navbar-border">
        <p class="clearfix blue-grey lighten-2 text-sm-center mb-0 px-2"><span class="float-md-left d-block d-md-inline-block">Copyright © 2020 <a class="text-bold-800 grey darken-2" href="" target="_blank"> ticketR </a>, All rights reserved. </span></p>
    </footer>

    <!-- BEGIN VENDOR JS-->
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/vendors/js/forms/toggle/switchery.min.js"></script>
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/vendors/js/extensions/dragula.min.js"></script>
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN ROBUST JS-->
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/js/core/app-menu.min.js"></script>
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/js/core/app.min.js"></script>
        
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/js/scripts/customizer.min.js"></script>
    
    <!-- END ROBUST JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <script src="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/js/scripts/extensions/drag-drop.min.js"></script>
    <!-- END PAGE LEVEL JS-->
    
    
    
      <script type="text/javascript">
    $(document).ready(function(){
   	 $("#submit").click(function(e){
		 e.preventDefault();
		 var id = $("#ticketid2").html();
		 var msg = $("#remarksmsg").val();
		 var user = "<%=name%>";
  	  $.ajax({
			url: "/admticketchat",
			type : 'get',
			data : {'msg' : msg, 'id' : id,'username' : user},
			cache : false,
			contentType:"application/json",
			 
            error : function() {
                //alert("Error");
            },
            success : function(response) {
            	  var out = "";
			 	 $.each(response, function(index) {
			 		if(!response[index].msg){}else{
						  out+="<h5 class='mt-1 mb-1 text-bold-500'> ";
						  if(user==response[index].username){
							  out+="Me ";
						  }else{
							  out+=response[index].username;
						  }
						  out+= " : <b><label>"+response[index].msg+"</label></b></h5>";
					}
			 		 
				 });
			 	 $("#remarksmsg").val('');
			 	$("#conve").html(out);
		  }}); 
	}); 
    	});
    
    </script>
    
    
    <script type="text/javascript">
    $("#click").click(function(){
    	  $.ajax({
    			url: "/auth/userticketdash",
    			type : 'get',
    			cache : false,
				contentType:"application/json",
				 
	            error : function() {
	                //alert("Error");
	            },
	            success : function(response) {
 
               
					 $.each(response, function(index) {
						//alert(response[index].ticket_id)
						  $("#ticketid2").html(response[index].ticket_id);   
					    });


					//out += "</tbody></table>";
					//$('#inbox').html(out); 
					
    		  }});
    	});
    
    </script>
  
        <script src="https://apps.elfsight.com/p/platform.js" defer></script>
<div class="elfsight-app-4db87a40-3770-417f-b2ec-b1731c6ac71b"></div>
  
</body></html>
