<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">


<link
	href="<c:url value="/resources/theme_dashgum/assets/css/main.css" />"
	rel="stylesheet">
<script
	src="<c:url value="/resources/theme_dashgum/assets/js/jquery.1.10.2.min.js" />"></script>
<script
	src="<c:url value="/resources/theme_dashgum/assets/js/main.js" />"></script>

<title>  Name Mini ATS</title>


<link
	href="<c:url value='/resources/theme_dashgum/assets/css/bootstrap.css' />"
	rel="stylesheet">

<link
	href="<c:url value='/resources/theme_dashgum/assets/font-awesome/css/font-awesome.css' />"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/theme_dashgum/assets/css/zabuto_calendar.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/theme_dashgum/assets/js/gritter/css/jquery.gritter.css' />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/theme_dashgum/assets/lineicons/style.css' />">


<link
	href="<c:url value='/resources/theme_dashgum/assets/css/style.css' />"
	rel="stylesheet">
<link
	href="<c:url value='/resources/theme_dashgum/assets/css/style-responsive.css' />"
	rel="stylesheet">

<script
	src="<c:url value='/resources/theme_dashgum/assets/js/chart-master/Chart.js' />"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<section id="container">
		<!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
		<!--header start-->
		<header class="header black-bg">
			<div class="sidebar-toggle-box">
				<div class="fa fa-bars tooltips" data-placement="right"
					data-original-title="Toggle Navigation"></div>
			</div>
			<!--logo start-->
			<a href="index.html" class="logo"><b>Mini Bullhorn { Page
					Title Bar }</b></a>
			<!--logo end-->
			<div class="nav notify-row" id="top_menu">
				<!--  notification start -->
				<ul class="nav top-menu">
					<!-- settings start -->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="index.html#"> <i
							class="fa fa-tasks"></i> <span class="badge bg-theme">4</span>
					</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-green"></div>
							<li>
								<p class="green">You have 4 pending tasks</p>
							</li>
							<li><a href="index.html#">
									<div class="task-info">
										<div class="desc">DashGum Admin Panel</div>
										<div class="percent">40%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 40%">
											<span class="sr-only">40% Complete (success)</span>
										</div>
									</div>
							</a></li>
							<li><a href="index.html#">
									<div class="task-info">
										<div class="desc">Database Update</div>
										<div class="percent">60%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-warning"
											role="progressbar" aria-valuenow="60" aria-valuemin="0"
											aria-valuemax="100" style="width: 60%">
											<span class="sr-only">60% Complete (warning)</span>
										</div>
									</div>
							</a></li>
							<li><a href="index.html#">
									<div class="task-info">
										<div class="desc">Product Development</div>
										<div class="percent">80%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-info" role="progressbar"
											aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
											style="width: 80%">
											<span class="sr-only">80% Complete</span>
										</div>
									</div>
							</a></li>
							<li><a href="index.html#">
									<div class="task-info">
										<div class="desc">Payments Sent</div>
										<div class="percent">70%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-danger"
											role="progressbar" aria-valuenow="70" aria-valuemin="0"
											aria-valuemax="100" style="width: 70%">
											<span class="sr-only">70% Complete (Important)</span>
										</div>
									</div>
							</a></li>
							<li class="external"><a href="#">See All Tasks</a></li>
						</ul></li>
					<!-- settings end -->
					<!-- inbox dropdown start-->
					<li id="header_inbox_bar" class="dropdown tooltips" data-placement="right" data-original-title="Authorize Email"><a
						data-toggle="dropdown" class="dropdown-toggle"
						id="authorize-button" href="index.html#"> <i
							class="fa fa-envelope-o"></i>
					</a></li>
					<!-- inbox dropdown end -->
				</ul>
				<!--  notification end -->
			</div>
			<div class="top-menu">
				<ul class="nav pull-right top-menu">
					<li><a class="logout" href="login.html">Logout</a></li>
				</ul>
			</div>
		</header>
		<!--header end-->

		<!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu" id="nav-accordion">

					<p class="centered">
						<a href="profile.html"><img src="assets/ui-sam.jpg"
							class="img-circle" width="60"></a>
					</p>
					<h5 class="centered">Marcel Newman</h5>

					<li class="mt"><a class="active" href="index.html"> <i
							class="fa fa-dashboard"></i> <span>Dashboard</span>
					</a></li>

					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-desktop"></i> <span>Work</span>
							</a>
						<ul class="sub">
							<li><a href="http://atsapp-devtuna.rhcloud.com/candidates">Candidates</a></li>
							<li><a href="http://atsapp-devtuna.rhcloud.com/jobs">Jobs</a></li>
							<li><a href="http://atsapp-devtuna.rhcloud.com/companies">Companies</a></li>
							<li><a href="http://atsapp-devtuna.rhcloud.com/email">My
									Email</a></li>
						</ul>
					</li>

				  

				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

		<!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">

				<div class="row">

					<div class="col-lg-12 main-chart">
 
						<!-- /row mt -->
												<!-- Email Table  -->
						<div class="row mt">
							<div class="col-lg-12">
								<div class="content-panel">
									<h4>
										<i class="fa fa-angle-right"></i> Candidates  <span class="pull-right"><button type="button" class="btn btn-info btn-sm" style="margin:10px;">Mass Email</button></span>
									</h4>
									<section id="unseen">
										<table
											class="table-candidates table table-bordered table-striped table-condensed cf">
											<thead class="cf">
												<tr>
													<th> </th>
													<th>Name</th>
													<th class="numeric">Email</th>
													<th class="numeric">Address</th>
													<th class="numeric">Tel</th>
													<th class="numeric">Mobile</th>
													<th class="numeric"> </th>
												</tr>
											</thead>
											<tbody>
												 
												
											</tbody>
										</table>
									</section>
								</div>
								<!-- /content-panel -->
							</div>
							<!-- /col-lg-12 -->
						</div>
						<!-- /row -->

					
	
					</div>
					<!-- /col-lg-9 END SECTION MIDDLE -->

 
				</div>
				<! --/row -->
			</section>
		</section>

		<!--main content end-->
		<!--footer start-->
		<footer class="site-footer">
			<div class="text-center">
				2014 - Alvarez.is <a href="index.html#" class="go-top"> <i
					class="fa fa-angle-up"></i>
				</a>
			</div>
		</footer>
		<!--footer end-->
	</section>

	<!-- js placed at the end of the document so the pages load faster -->
	<script
		src="<c:url value='/resources/theme_dashgum/assets/js/jquery.js' />">
		
	</script>
	<script
		src="<c:url value='/resources/theme_dashgum/assets/js/jquery-1.8.3.min.js' />"></script>
	<script
		src="<c:url value='/resources/theme_dashgum/assets/js/bootstrap.min.js'/>"></script>
	<script class="include" type="text/javascript"
		src="<c:url value='/resources/theme_dashgum/assets/js/jquery.dcjqaccordion.2.7.js'/>"></script>
	<script
		src="<c:url value='/resources/theme_dashgum/assets/js/jquery.scrollTo.min.js'/>"></script>
	<script
		src="<c:url value='/resources/theme_dashgum/assets/js/jquery.nicescroll.js'/>"
		type="text/javascript"></script>
	<script
		src="<c:url value='/resources/theme_dashgum/assets/js/jquery.sparkline.js'/>"></script>


	<!--common script for all pages-->
	<script
		src="<c:url value='/resources/theme_dashgum/assets/js/common-scripts.js'/> "></script>

	<script type="text/javascript"
		src="<c:url value='/resources/theme_dashgum/assets/js/gritter/js/jquery.gritter.js'/> "></script>
	<script type="text/javascript"
		src="<c:url value='/resources/theme_dashgum/assets/js/gritter-conf.js'/> "></script>

	<!--script for this page-->
	<script
		src="<c:url value='/resources/theme_dashgum/assets/js/sparkline-chart.js'/>"></script>
	<script
		src="<c:url value='/resources/theme_dashgum/assets/js/zabuto_calendar.js'/> "></script>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							/*var unique_id = $.gritter
									.add({
										// (string | mandatory) the heading of the notification
										title : 'Welcome to Company Name',
										// (string | mandatory) the text inside the notification
										text : 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo. Free version for <a href="http://blacktie.co" target="_blank" style="color:#ffd777">BlackTie.co</a>.',
										// (string | optional) the image to display on the left
										image : 'assets/ui-sam.jpg',
										// (bool | optional) if you want it to fade out on its own or just sit there
										sticky : true,
										// (int | optional) the time you want it to be alive for before fading out
										time : '',
										// (string | optional) the class name you want to apply to that specific message
										class_name : 'my-sticky-class'
											
									});
						*/
							return false;
						});
	</script>

	<script type="application/javascript">
		
        $(document).ready(function () {
            $("#date-popover").popover({html: true, trigger: "manual"});
            $("#date-popover").hide();
            $("#date-popover").click(function (e) {
                $(this).hide();
            });
        
            $("#my-calendar").zabuto_calendar({
                action: function () {
                    return myDateFunction(this.id, false);
                },
                action_nav: function () {
                    return myNavFunction(this.id);
                },
                ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                },
                legend: [
                    {type: "text", label: "Special event", badge: "00"},
                    {type: "block", label: "Regular event", }
                ]
            });

            //*********** candidates list table
			var userStore  =  ${users};
			//var whose_online = ${whose_online};
		 
			for (i = 0; i < userStore.length; i++) { 
				$(".table-candidates tbody").append(
				  "<tr> <td> <div class='checkbox'> <label> <input type='checkbox' value='"+  userStore[i].ac_email+"'> </label> </div> </td>" +
				  " <td>" + userStore[i].ac_firstname + " " + userStore[i].ac_lastname + " </td>" +
				  " <td>" + userStore[i].ac_email +"</td> " +
				  " <td>" + userStore[i].ac_address+ "</td>" +
				  " <td>" + userStore[i].ac_employment_date+ "</td>" +
				  " <td>" + userStore[i].ac_mobile + "</td>" + 
				  " <td>  <div class='btn-group open action-drop'> " +
				      "<button type='button' class='btn btn-theme03'>Action</button> " + 
				       "<button type='button' class='btn btn-theme03 dropdown-toggle' data-toggle='dropdown'>   <span class='caret'></span> "+
				       "<span class='sr-only'>Toggle Dropdown</span>"+
				       "</button>"+
				       "<ul class='dropdown-menu' role='menu'>" +
				         "<li><a href='/users/view/"+ userStore[i].ac_id +"'>View</a></li>" +
				         "<li><a href='/users/edit'>Edit</a></li>"+
				         "<li><a href='#'>Email</a></li>"+
				  	   "</ul> </div> </td> </tr>"
				 );
				       
				   
			}
			
			  console.log(userStore[i]);
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    	
	</script>

		<script async defer src="https://apis.google.com/js/api.js"
		onload="this.onload=function(){};handleClientLoad()"
		onreadystatechange="if (this.readyState === 'complete') this.onload()">
		</body>

		</html>
	