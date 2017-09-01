<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
	
	<!-- start: Meta -->
	<meta charset="utf-8">
	<title>Bootstrap Metro Dashboard by Dennis Ji for ARM demo</title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="Dennis Ji">
	<meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="/test/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/test/resources/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="/test/resources/bootstrap/css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="/test/resources/bootstrap/css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="/test/resources/bootstrap/img/favicon.ico">
	<!-- end: Favicon -->
	
		
		
<script src="/test/resources/js/jquery-3.2.1.min.js"></script>			
</head>

<script>

	$(function() {
	
	})
 

	function sendNo(){
		$.ajax({
		  		url: "/test/wbs/getWbs",
		  		type: "post",
		  		data: {"projectNo" : $("#projectNo").val()},
		  		datatype: "json",
		  		success: function(result) {
		  		    
		  			var p_name2 = result.projectName;
		  			alert(p_name2);
		  			$("#p_name").append("<tr><td><button class='btn btn-large btn-primary'>" + p_name2 + "</button></td></tr>"); 
		  			
		  			var t_list = result.taskList; 
						  
		  			var totalSpace = 1000-(t_list.length*100); 
				    var subSpace = (totalSpace/t_list.length)*0.5;
				    
				    $(t_list).each(function(index, item) {
						  $("#t_name").append("<td><div style='margin-right:" + subSpace + "px; margin-left:" + subSpace + "px;'><button class='btn btn-large'>" + item.taskName + "</button><div></td>");
						  
					})
				},
						  
		  		error: function() {
					alert("선택해 주세요...");
				}
		})
	}

    function done() {
    	$("#keyList").empty();
		$("#keyList").append("<div style='background-color: #CC6666;'><a href='/test/wbs/doneList?projectNo=1&key=0'><tr><td>0 %<td><tr></a></div>"
		                   + "<div style='background-color: #CC9999;'><a href='/test/wbs/doneList?projectNo=1&key=20'><tr><td>20 %<td><tr></a></div>"
		                   + "<div style='background-color: #FFCC99;'><a href='/test/wbs/doneList?projectNo=1&key=40'><tr><td>40 %<td><tr></a></div>"
		                   + "<div style='background-color: #FFFFCC;'><a href='/test/wbs/doneList?projectNo=1&key=60'><tr><td>60 %<td><tr></a></div>"
		                   + "<div style='background-color: #CCFF99;'><a href='/test/wbs/doneList?projectNo=1&key=80'><tr><td>80 %<td><tr></a></div>"
		                   + "<div style='background-color: #99FF99;'><a href='/test/wbs/doneList?projectNo=1&key=100'><tr><td>100 %<td><tr></a></div>");
	}	 
	 
    function priority() {
    	$("#keyList").empty();
		$("#keyList").append("<tr><td>LOW<td><tr>"
		                   + "<tr><td>NORMAL<td><tr>"
		                   + "<tr><td>HIGH<td><tr>"
		                   + "<tr><td>DO IT NOW<td><tr>");
	}	
    
    function status() {
    	$("#keyList").empty();
		$("#keyList").append("<tr><td>NEW<td><tr>"
		                   + "<tr><td>ING<td><tr>"
		                   + "<tr><td>DONE<td><tr>");
	}	
    
    function member(){
    	$.ajax({
	  		url: "/test/wbs/getMemberList",
	  		type: "post",
	  		data: {"projectNo" : $("#projectNo").val()},
	  		datatype: "json",
	  		success: function(result) {
	  			$("#keyList").empty();
			    $(result).each(function(index, item) {
			    	alert("멤버 function");
			    	$("#keyList").append("<tr><td>" + item +"<td><tr>");
				})
			},
	  		error: function() {
				alert("선택해 주세요...");
			}
	   })
    }
			                         
					  
	  		    
	  		
			    
    	

</script>

<body>
    <!-- start: Header -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="index.jsp"><span>JANUX</span></a>
								
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="icon-bell"></i>
								<span class="badge red">
								7 </span>
							</a>
							<ul class="dropdown-menu notifications">
								<li class="dropdown-menu-title">
 									<span>You have 11 notifications</span>
									<a href="#refresh"><i class="icon-repeat"></i></a>
								</li>	
                            	<li>
                                    <a href="#">
										<span class="icon blue"><i class="icon-user"></i></span>
										<span class="message">New user registration</span>
										<span class="time">1 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon green"><i class="icon-comment-alt"></i></span>
										<span class="message">New comment</span>
										<span class="time">7 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon green"><i class="icon-comment-alt"></i></span>
										<span class="message">New comment</span>
										<span class="time">8 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon green"><i class="icon-comment-alt"></i></span>
										<span class="message">New comment</span>
										<span class="time">16 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon blue"><i class="icon-user"></i></span>
										<span class="message">New user registration</span>
										<span class="time">36 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon yellow"><i class="icon-shopping-cart"></i></span>
										<span class="message">2 items sold</span>
										<span class="time">1 hour</span> 
                                    </a>
                                </li>
								<li class="warning">
                                    <a href="#">
										<span class="icon red"><i class="icon-user"></i></span>
										<span class="message">User deleted account</span>
										<span class="time">2 hour</span> 
                                    </a>
                                </li>
								<li class="warning">
                                    <a href="#">
										<span class="icon red"><i class="icon-shopping-cart"></i></span>
										<span class="message">New comment</span>
										<span class="time">6 hour</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon green"><i class="icon-comment-alt"></i></span>
										<span class="message">New comment</span>
										<span class="time">yesterday</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon blue"><i class="icon-user"></i></span>
										<span class="message">New user registration</span>
										<span class="time">yesterday</span> 
                                    </a>
                                </li>
                                <li class="dropdown-menu-sub-footer">
                            		<a>View all notifications</a>
								</li>	
							</ul>
						</li>
						<!-- start: Notifications Dropdown -->
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="icon-calendar"></i>
								<span class="badge red">
								5 </span>
							</a>
							<ul class="dropdown-menu tasks">
								<li class="dropdown-menu-title">
 									<span>You have 17 tasks in progress</span>
									<a href="#refresh"><i class="icon-repeat"></i></a>
								</li>
								<li>
                                    <a href="#">
										<span class="header">
											<span class="title">iOS Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim red">80</div> 
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">Android Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim green">47</div> 
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">ARM Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim yellow">32</div> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="header">
											<span class="title">ARM Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim greenLight">63</div> 
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">ARM Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim orange">80</div> 
                                    </a>
                                </li>
								<li>
                            		<a class="dropdown-menu-sub-footer">View all tasks</a>
								</li>	
							</ul>
						</li>
						<!-- end: Notifications Dropdown -->
						<!-- start: Message Dropdown -->
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="icon-envelope"></i>
								<span class="badge red">
								4 </span>
							</a>
							<ul class="dropdown-menu messages">
								<li class="dropdown-menu-title">
 									<span>You have 9 messages</span>
									<a href="#refresh"><i class="icon-repeat"></i></a>
								</li>	
                            	<li>
                                    <a href="#">
										<span class="avatar"><img src="/test/resources/bootstrap/img/avatar.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	6 min
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="avatar"><img src="/test/resources/bootstrap/img/avatar.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	56 min
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="avatar"><img src="/test/resources/bootstrap/img/avatar.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	3 hours
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="avatar"><img src="/test/resources/bootstrap/img/avatar.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	yesterday
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="avatar"><img src="/test/resources/bootstrap/img/avatar.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	Jul 25, 2012
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
								<li>
                            		<a class="dropdown-menu-sub-footer">View all messages</a>
								</li>	
							</ul>
						</li>
						
						<!-- start: User Dropdown -->
						<li class="dropdown">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white user"></i> Dennis Ji
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title">
 									<span>Account Settings</span>
								</li>
								<li><a href="#"><i class="halflings-icon user"></i> Profile</a></li>
								<li><a href="login.jsp"><i class="halflings-icon off"></i> Logout</a></li>
							</ul>
						</li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
	<!-- start: Header -->
	
		<div class="container-fluid-full">
		<div class="row-fluid">
				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="index.jsp"><i class="icon-bar-chart"></i><span class="hidden-tablet"> Dashboard</span></a></li>	
						
						<!-- WBS 메뉴 -->
						<li><a href="/test/wbs/wbsForm"><i class="icon-bar-chart"></i><span class="hidden-tablet"> WBS</span></a></li>	
						
						<li><a href="messages.jsp"><i class="icon-envelope"></i><span class="hidden-tablet"> Messages</span></a></li>
						<li><a href="tasks.jsp"><i class="icon-tasks"></i><span class="hidden-tablet"> Tasks</span></a></li>
						<li><a href="widgets.jsp"><i class="icon-dashboard"></i><span class="hidden-tablet"> Widgets</span></a></li>
						<li>
							<a class="dropmenu" href="#"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> Dropdown</span><span class="label label-important"> 3 </span></a>
							<ul>
								<li><a class="submenu" href="submenu.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 1</span></a></li>
								<li><a class="submenu" href="submenu2.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 2</span></a></li>
								<li><a class="submenu" href="submenu3.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 3</span></a></li>
							</ul>	
						</li>
						<li><a href="form.jsp"><i class="icon-edit"></i><span class="hidden-tablet"> Forms</span></a></li>
						<li><a href="chart.jsp"><i class="icon-list-alt"></i><span class="hidden-tablet"> Charts</span></a></li>
						<li><a href="typography.jsp"><i class="icon-font"></i><span class="hidden-tablet"> Typography</span></a></li>
						<li><a href="table.jsp"><i class="icon-align-justify"></i><span class="hidden-tablet"> Tables</span></a></li>
						<li><a href="calendar.jsp"><i class="icon-calendar"></i><span class="hidden-tablet"> Calendar</span></a></li>
						<li><a href="file-manager.jsp"><i class="icon-folder-open"></i><span class="hidden-tablet"> File Manager</span></a></li>
						<li><a href="login.jsp"><i class="icon-lock"></i><span class="hidden-tablet"> Login Page</span></a></li>
					</ul>
				</div>
			</div>
			<!-- end: Main Menu -->
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<!-- start: Content -->
			<div id="content" class="span10">
			
						
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="index.jsp">Home</a>
					<i class="icon-angle-right"></i> 
				</li>
				<li>
					<i class="icon-list-alt"></i>
					<a href="#">WBS</a>
				</li>
			</ul>
			
	
<!-- ========================================================================================================================== -->

			<!-- 키워드 드롭다운 박스 -->
			
			<div class="row-fluid">	
					<div class="box span4">
							<div class="box-header">
								<h2><i class="halflings-icon white plus"></i><span class="break"></span>Show by Keyword</h2>
									<div class="box-icon">
										<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
										<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
										<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
									</div>
							</div>
							
							<div class="box-content">
								<table class="table table-bordered table-striped">
									  <div class="btn-group">
											<button class="btn btn-large">Select Keyword</button>
											<button class="btn btn-large dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
											<ul class="dropdown-menu">
												<li onclick="done()">% DONE</li>
												<li onclick="priority()"> PRIORITY </li>
												<li onclick="status()"> STATUS </li>
												<li onclick="member()"> MEMBER </li>
											</ul>
						             </div>
								</table>
												
								<table id="keyList">
								</table>
						   </div>	
				   </div>
			</div><!--키워드 드롭다운 박스 -->	
								
								
													  
												
												
												
												
												
						
										  
					
								
			
	        <!-- WBS 트리 박스  -->
				
			<!-- Project List 페이지에서 하나의 프로젝트를 클릭하면, 해당 프로젝트의 projectNo을 넘기는 구조 -->
			<!-- projectNo을 넘기기 위한 임시 form -->
			   <form>
			     <input type="text" name="projectNo" id="projectNo">
			     <input type="button" value="데이터 불러오기" onclick="sendNo()"> 
			   </form>
			<!-- projectNo을 넘기기 위한 임시 form -->	   
			   
			<div class="row-fluid">	
	             <div class="box span12">
							<div class="box-header" />
									 <h2><i class="halflings-icon white list"></i><span class="break"></span>WBS</h2>
									 <div class="box-icon">
										<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
										<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
										<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
									 </div>
							</div>
							
							<div class="box-content" />
	                               <!-- 1ST // 프로젝트 이름 -->
								    <div style="width: 1000px; height: 50px; margin-right: 450px; margin-left: 450px;">
								            <table id="p_name">
								            </table>
								    </div>
								    
								   <!--  2ND // 선 그리기 -->
								    <div style="width: 1000px; height: 50px; ">
								    </div>
								    
								    <!-- 3RD // 업무 이름  -->
									<div id="t_div" style="width: 1000px; height: 50px;">
									    <table>
									      <tr id="t_name"></tr> 
									    </table>
									</div>
									
									<!-- 4TH // 선 그리기 -->
								    <div style="width: 1000px; height: 50px; ">
								    </div>
								    
								    <!-- 5TH // 세부 업무 이름 -->
								    <div style="width: 1000px; height: 50px; ">
								    </div>
							</div>
			      </div>
			  </div><!-- WBS 트리 박스 -->
							    
							    
							        
			  <!-- 노드 정보 박스 -->				    
			  <div class="row-fluid">
				
				<div class="box span12">
						<div class="box-header">
							<h2><i class="halflings-icon white th"></i><span class="break"></span>Info</h2>
						</div>
						
						<div class="box-content">
							<ul class="nav tab-menu nav-tabs" id="myTab">
								<li class="active"><a href="#info">Info</a></li>
								<li><a href="#custom">Custom</a></li>
								<li><a href="#messages">Messages</a></li>
							</ul>
							 
								<div id="myTabContent" class="tab-content">
										<div class="tab-pane active" id="info">
											<p>
			
												Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.   
											</p>
			
										</div>
										
										<div class="tab-pane" id="custom">
											<p>
												Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   
											</p>
										</div>
										
										<div class="tab-pane" id="messages">
											<p>
												Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.   
											</p>
											<p>
												Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer
											</p>
										</div>
								</div>
						</div>
				</div><!--/span-->
			
			</div><!--/row-->			
							
							
							
								
							
				

			
		<!-- 	 
			<div class="row-fluid">	
				<div class="box blue span12">
					<div class="box-header">
						<h2><i class="halflings-icon white white hand-top"></i><span class="break"></span>Quick Buttons</h2>
					</div>
					<div class="box-content">
						
						<a class="quick-button span2">
							<i class="icon-group"></i>
							<p>Users</p>
							<span class="notification blue">1.367</span>
						</a>
						<a class="quick-button span2">
							<i class="icon-comments-alt"></i>
							<p>Comments</p>
							<span class="notification green">167</span>
						</a>
						<a class="quick-button span2">
							<i class="icon-shopping-cart"></i>
							<p>Orders</p>
						</a>
						<a class="quick-button span2">
							<i class="icon-barcode"></i>
							<p>Products</p>
						</a>
						<a class="quick-button span2">
							<i class="icon-envelope"></i>
							<p>Messages</p>
						</a>
						<a class="quick-button span2">
							<i class="icon-calendar"></i>
							<p>Calendar</p>
							<span class="notification red">68</span>
						</a>
						<div class="clearfix"></div>
					</div>	
				</div>/span
				
			</div>/row
			 -->
			
		<!-- 	
			<div class="row-fluid">	
				<div class="box span12">
					<div class="box-header">
						<h2><i class="halflings-icon white white hand-top"></i><span class="break"></span>Small Quick Buttons</h2>
					</div>
					<div class="box-content">
						
						<a class="quick-button-small span1">
							<i class="icon-group"></i>
							<p>Users</p>
							<span class="notification blue">7</span>
						</a>
						<a class="quick-button-small span1">
							<i class="icon-comments-alt"></i>
							<p>Comments</p>
							<span class="notification green">4</span>
						</a>
						<a class="quick-button-small span1">
							<i class="icon-shopping-cart"></i>
							<p>Orders</p>
						</a>
						<a class="quick-button-small span1">
							<i class="icon-barcode"></i>
							<p>Products</p>
						</a>
						<a class="quick-button-small span1">
							<i class="icon-envelope"></i>
							<p>Messages</p>
						</a>
						<a class="quick-button-small span1">
							<i class="icon-calendar"></i>
							<p>Calendar</p>
							<span class="notification red">8</span>
						</a>
						<a class="quick-button-small span1">
							<i class="icon-beaker"></i>
							<p>Projects</p>
						</a>
						<a class="quick-button-small span1">
							<i class="icon-thumbs-up"></i>
							<p>Likes</p>
							<span class="notification green">1</span>
						</a>
						<a class="quick-button-small span1">
							<i class="icon-heart-empty"></i>
							<p>Favorites</p>
						</a>
						<a class="quick-button-small span1">
							<i class="icon-bullhorn"></i>
							<p>Notifications</p>
							<span class="notification yellow">7</span>
						</a>
						<a class="quick-button-small span1">
							<i class="icon-cogs"></i>
							<p>Settings</p>
						</a>
						<a class="quick-button-small span1">
							<i class="icon-dashboard"></i>
							<p>Dashboard</p>
						</a>
						
						<div class="clearfix"></div>
					</div>	
				</div>/span
				
			</div>/row
		
			
				 -->
					
				<div class="box span6">
					<div class="box-header">
						<h2><i class="halflings-icon white list"></i><span class="break"></span>Buttons</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content buttons">
						<p>
							<button class="btn btn-large">Large button</button>
							<button class="btn btn-large btn-primary">Large button</button>
							<button class="btn btn-large btn-danger">Large button</button>
							<button class="btn btn-large btn-warning">Large button</button>
						</p>
						<p>
							<button class="btn btn-large btn-success">Large button</button>
							<button class="btn btn-large btn-info">Large button</button>
							<button class="btn btn-large btn-inverse">Large button</button>
						</p>
						<p>
							
						</p>
						<div class="btn-group">
							<button class="btn btn-large">Large Dropdown</button>
							<button class="btn btn-large dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="halflings-icon white star"></i> Action</a></li>
								<li><a href="#"><i class="halflings-icon white tag"></i> Another action</a></li>
								<li><a href="#"><i class="halflings-icon white download-alt"></i> Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#"><i class="halflings-icon white tint"></i> Separated link</a></li>
							</ul>
						</div>
						
						<hr>
						
						<p class="btn-group">
							  <button class="btn">Left</button>
							  <button class="btn">Middle</button>
							  <button class="btn">Right</button>
						</p>
						<p>
							<button class="btn btn-small"><i class="halflings-icon white white star"></i> Icon button</button>
							<button class="btn btn-small btn-primary">Small button</button>
							<button class="btn btn-small btn-danger">Small button</button>
							<button class="btn btn-small btn-warning">Small button</button>
							<button class="btn btn-small btn-success">Small button</button>
							
						</p>
						<p>
							<button class="btn btn-small btn-info">Small button</button>
							<button class="btn btn-small btn-inverse">Small button</button>
							<button class="btn btn-large btn-primary btn-round">Round button</button>
							<button class="btn btn-large btn-round"><i class="halflings-icon white white ok"></i></button>
							<button class="btn btn-primary"><i class="halflings-icon white white edit"></i></button>
						</p>
						<p>
							<button class="btn btn-mini">Mini button</button>
							<button class="btn btn-mini btn-primary">Mini button</button>
							<button class="btn btn-mini btn-danger">Mini button</button>
							<button class="btn btn-mini btn-warning">Mini button</button>
							<button class="btn btn-mini btn-info">Mini button</button>
							<button class="btn btn-mini btn-success">Mini button</button>
							<button class="btn btn-mini btn-inverse">Mini button</button>
						</p>
						
					</div>
				</div><!--/span-->
				
			</div><!--/row-->
			
			
			
			

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">Ã</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a>
			<a href="#" class="btn btn-primary">Save changes</a>
		</div>
	</div>
	
	<div class="clearfix"></div>
	
	<footer>

		<p>
			<span style="text-align:left;float:left">&copy; 2013 <a href="http://themifycloud.com/downloads/janux-free-responsive-admin-dashboard-template/" alt="Bootstrap_Metro_Dashboard">JANUX Responsive Dashboard</a></span>
			
		</p>

	</footer>
	
	<!-- start: JavaScript-->

		<script src="/test/resources/bootstrap/js/jquery-1.9.1.min.js"></script>
	<script src="/test/resources/bootstrap/js/jquery-migrate-1.0.0.min.js"></script>
	
		<script src="/test/resources/bootstrap/js/jquery-ui-1.10.0.custom.min.js"></script>
	
		<script src="/test/resources/bootstrap/js/jquery.ui.touch-punch.js"></script>
	
		<script src="/test/resources/bootstrap/js/modernizr.js"></script>
	
		<script src="/test/resources/bootstrap/js/bootstrap.min.js"></script>
	
		<script src="/test/resources/bootstrap/js/jquery.cookie.js"></script>
	
		<script src='/test/resources/bootstrap/js/fullcalendar.min.js'></script>
	
		<script src='/test/resources/bootstrap/js/jquery.dataTables.min.js'></script>

		<script src="/test/resources/bootstrap/js/excanvas.js"></script>
	<script src="/test/resources/bootstrap/js/jquery.flot.js"></script>
	<script src="/test/resources/bootstrap/js/jquery.flot.pie.js"></script>
	<script src="/test/resources/bootstrap/js/jquery.flot.stack.js"></script>
	<script src="/test/resources/bootstrap/js/jquery.flot.resize.min.js"></script>
	
		<script src="/test/resources/bootstrap/js/jquery.chosen.min.js"></script>
	
		<script src="/test/resources/bootstrap/js/jquery.uniform.min.js"></script>
		
		<script src="/test/resources/bootstrap/js/jquery.cleditor.min.js"></script>
	
		<script src="/test/resources/bootstrap/js/jquery.noty.js"></script>
	
		<script src="/test/resources/bootstrap/js/jquery.elfinder.min.js"></script>
	
		<script src="/test/resources/bootstrap/js/jquery.raty.min.js"></script>
	
		<script src="/test/resources/bootstrap/js/jquery.iphone.toggle.js"></script>
	
		<script src="/test/resources/bootstrap/js/jquery.uploadify-3.1.min.js"></script>
	
		<script src="/test/resources/bootstrap/js/jquery.gritter.min.js"></script>
	
		<script src="/test/resources/bootstrap/js/jquery.imagesloaded.js"></script>
	
		<script src="/test/resources/bootstrap/js/jquery.masonry.min.js"></script>
	
		<script src="/test/resources/bootstrap/js/jquery.knob.modified.js"></script>
	
		<script src="/test/resources/bootstrap/js/jquery.sparkline.min.js"></script>
	
		<script src="/test/resources/bootstrap/js/counter.js"></script>
	
		<script src="/test/resources/bootstrap/js/retina.js"></script>

		<script src="/test/resources/bootstrap/js/custom.js"></script>
	<!-- end: JavaScript-->
	
</body>
</html>
