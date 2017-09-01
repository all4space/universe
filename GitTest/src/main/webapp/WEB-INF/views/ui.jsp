<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html lang="en">
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
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous"> -->

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="/test/resources/bootstrap/css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="/test/resources/bootstrap/css/ie9.css" rel="stylesheet">
	<![endif]-->
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="/test/resources/bootstrap/img/favicon.ico">
	<!-- end: Favicon -->
	<script src = "/test/resources/js/jquery-3.2.1.min.js"></script>
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
 
  <script type="text/javascript">
    google.charts.load('current', {'packages':['gantt']});
    google.charts.setOnLoadCallback(drawChart);

    function provide(){
    	for(var i=0; i < ${fn:length(taskList)} ; i++){
        	['i',"${taskList[i].taskName}","${taskList[i].startDate}","${taskList[i].dueDate}","${taskList[i].totalTime}",0,'bb'],
        	}
    }
    function daysToMilliseconds(days) {
      return days * 24 * 60 * 60 * 1000;
    }

    function drawChart() {

      var data = new google.visualization.DataTable();
      data.addColumn('string', 'Task ID');
      data.addColumn('string', 'Task Name');
      data.addColumn('date', 'Start Date');
      data.addColumn('date', 'End Date');
      data.addColumn('number', 'Duration');
      data.addColumn('number', 'Percent Complete');
      data.addColumn('string', 'Dependencies');

      data.addRows([
    	provide()
      ]);

      var options = {
        height: 275
      };

      var chart = new google.visualization.Gantt(document.getElementById('chart_div'));

      chart.draw(data, options);
    }
  </script>	
	
</head>

<!-- Styles -->
<style>
#chartdiv {
  width: 100%;
  height: 700px;
}																	
</style>

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
						<li><a href="/test/"><i class="icon-bar-chart"></i><span class="hidden-tablet"> Dashboard</span></a></li>	
						<li><a href="messages.jsp"><i class="icon-envelope"></i><span class="hidden-tablet"> Messages</span></a></li>
						<li><a href="tasks.jsp"><i class="icon-tasks"></i><span class="hidden-tablet"> Tasks</span></a></li>
						<li><a href="/test/project/Gantt"><i class="icon-eye-open"></i><span class="hidden-tablet"> UI Features</span></a></li>
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
						<li><a href="/test/chart"><i class="icon-list-alt"></i><span class="hidden-tablet"> Charts</span></a></li>
						<li><a href="typography.jsp"><i class="icon-font"></i><span class="hidden-tablet"> Typography</span></a></li>
						<li><a href="gallery.jsp"><i class="icon-picture"></i><span class="hidden-tablet"> Gallery</span></a></li>
						<li><a href="table.jsp"><i class="icon-align-justify"></i><span class="hidden-tablet"> Tables</span></a></li>
						<li><a href="/test/calendar"><i class="icon-calendar"></i><span class="hidden-tablet"> Calendar</span></a></li>
						<li><a href="file-manager.jsp"><i class="icon-folder-open"></i><span class="hidden-tablet"> File Manager</span></a></li>
						<li><a href="icon.jsp"><i class="icon-star"></i><span class="hidden-tablet"> Icons</span></a></li>
						<li><a href="/test/users/loginForm"><i class="icon-lock"></i><span class="hidden-tablet"> Login Page</span></a></li>
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
					<i class="icon-eye-open"></i>
					<a href="#">UI Features</a>
				</li>
			</ul>
			<div class="row-fluid">	
				<div class="box yellow span12">
					<div class="box-header">
						<h2><i class="halflings-icon white white tasks"></i><span class="break"></span>Sliders</h2>
					</div>
					<div class="box-content">
						<div class = "date" style="color : black">
								${taskList[0].startDate}
								${fn:length(taskList)}
							<c:forEach items="${taskList}" var="taskList">
									 ${taskList.dueDate}
							</c:forEach>					 
						</div>
						<table class="table <!-- table-striped -->" border="1">
							<c:forEach items="${taskList}" var="taskList">
							<tr><td style="color: black;">
								${taskList.taskName}
							</td>
							<div class="td_chart">
						<c:forEach begin="0" end="30">
								<td></td>
						</c:forEach>
							</div>
							</tr>
							</c:forEach>
							
					</table>
				</div>
				<div class = "gantt chart" style="position: relative;">
					<div class="progress progress-striped" style="position:relative; margin-bottom: 9px;" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">
					<div class="bar" style="width: 30%"></div>
					<div class="bar" style="width: 10%; background-color: white;"></div>
					<div class="bar" style="width: 30%; background-color: white;"></div>
					<div class="bar" style="width: 30%; background-color: white;"></div>
				</div>					
					<div class="progress progress-striped" style="background-color:white position:relative; margin-bottom: 9px;" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">
					<div class="bar" style="width: 30%; background-color: white;"></div>
					<div class="bar" style="width: 10%; background-color: black;"></div>
					<div class="bar" style="width: 30%; background-color: white;"></div>
					<div class="bar" style="width: 30%; background-color: white;"></div>
				</div>					
					<div class="progress progress-striped" style="background-color:white position:relative; margin-bottom: 9px;" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">
					<div class="bar" style="width: 30%; background-color: white;"></div>
					<div class="bar" style="width: 10%; background-color: white;"></div>
					<div class="bar" style="width: 30%; background-color: red;"></div>
					<div class="bar" style="width: 30%; background-color: white;"></div>
				</div>
					<div class="progress progress-striped" style="background-color:white position:relative; margin-bottom: 9px;" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">
					<div class="bar" style="width: 30%; background-color: white;"></div>
					<div class="bar" style="width: 10%; background-color: white;"></div>
					<div class="bar" style="width: 30%; background-color: white;"></div>
					<div class="bar" style="width: 30%; background-color: gold;"></div>
				</div>									
				</div>
				</div>
			</div>
	<!-- Styles -->
			<div id="chart_div"></div>

<!-- Resources -->
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script src="https://www.amcharts.com/lib/3/gantt.js"></script>
<script src="https://www.amcharts.com/lib/3/themes/none.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>

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

	<!-- end: JavaScript-->
	
</body>
</html>
