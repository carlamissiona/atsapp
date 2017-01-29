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
<script src="<c:url value="/resources/js/main.js" />"></script>

<title>Company Name Mini ATS</title>


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
					<li id="header_inbox_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
							<i class="fa fa-envelope-o"></i> <span class="badge bg-theme">5</span>
					</a>
						<ul class="dropdown-menu extended inbox">
							<div class="notify-arrow notify-arrow-green"></div>
							<li>
								<p class="green">You have 5 new messages</p>
							</li>
							<li><a href="index.html#"> <span class="photo"><img
										alt="avatar" src="assets/ui-zac.jpg"></span> <span
									class="subject"> <span class="from">Zac Snider</span> <span
										class="time">Just now</span>
								</span> <span class="message"> Hi mate, how is everything? </span>
							</a></li>
							<li><a href="index.html#"> <span class="photo"><img
										alt="avatar" src="assets/ui-divya.jpg"></span> <span
									class="subject"> <span class="from">Divya Manian</span>
										<span class="time">40 mins.</span>
								</span> <span class="message"> Hi, I need your help with this. </span>
							</a></li>
							<li><a href="index.html#"> <span class="photo"><img
										alt="avatar" src="assets/ui-danro.jpg"></span> <span
									class="subject"> <span class="from">Dan Rogers</span> <span
										class="time">2 hrs.</span>
								</span> <span class="message"> Love your new Dashboard. </span>
							</a></li>
							<li><a href="index.html#"> <span class="photo"><img
										alt="avatar" src="assets/ui-sherman.jpg"></span> <span
									class="subject"> <span class="from">Dj Sherman</span> <span
										class="time">4 hrs.</span>
								</span> <span class="message"> Please, answer asap. </span>
							</a></li>
							<li><a href="index.html#">See all messages</a></li>
						</ul></li>
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
							<li><a href="general.html">Candidates</a></li>
							<li><a href="buttons.html">Jobs</a></li>
							<li><a href="panels.html">Companies</a></li>
							<li><a href="panels.html">My Email</a></li>
						</ul></li>

					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-cogs"></i> <span>Components</span>
					</a>
						<ul class="sub">
							<li><a href="calendar.html">Calendar</a></li>
							<li><a href="gallery.html">Gallery</a></li>
							<li><a href="todo_list.html">Todo List</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-book"></i> <span>Extra Pages</span>
					</a>
						<ul class="sub">
							<li><a href="blank.html">Blank Page</a></li>
							<li><a href="login.html">Login</a></li>
							<li><a href="lock_screen.html">Lock Screen</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-tasks"></i> <span>Forms</span>
					</a>
						<ul class="sub">
							<li><a href="form_component.html">Form Components</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-th"></i> <span>Data Tables</span>
					</a>
						<ul class="sub">
							<li><a href="basic_table.html">Basic Table</a></li>
							<li><a href="responsive_table.html">Responsive Table</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;"> <i
							class=" fa fa-bar-chart-o"></i> <span>Charts</span>
					</a>
						<ul class="sub">
							<li><a href="morris.html">Morris</a></li>
							<li><a href="chartjs.html">Chartjs</a></li>
						</ul></li>

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
					<h2>${message}</h2>
					<div class="col-lg-9 main-chart">

						<div class="row mtbox">
							<div class="col-md-2 col-sm-2 col-md-offset-1 box0">
								<div class="box1">
									<span class="li_heart"></span>
									<h3>933</h3>
								</div>
								<p>933 People who liked our service. Whoohoo!</p>
							</div>
							<div class="col-md-2 col-sm-2 box0">
								<div class="box1">
									<span class="li_cloud"></span>
									<h3>+48</h3>
								</div>
								<p>48 New files were added in your cloud storage.</p>
							</div>
							<div class="col-md-2 col-sm-2 box0">
								<div class="box1">
									<span class="li_stack"></span>
									<h3>23</h3>
								</div>
								<p>You have 23 unread messages in your inbox.</p>
							</div>
							<div class="col-md-2 col-sm-2 box0">
								<div class="box1">
									<span class="li_news"></span>
									<h3>+10</h3>
								</div>
								<p>More than 10 news were added in your reader.</p>
							</div>
							<div class="col-md-2 col-sm-2 box0">
								<div class="box1">
									<span class="li_data"></span>
									<h3>OK!</h3>
								</div>
								<p>Your server is working perfectly. Relax & enjoy.</p>
							</div>

						</div>
						<!-- /row mt -->

						<!-- Email Table  -->
						<div class="row mt">
							<div class="col-lg-12">
								<div class="content-panel">
									<h4>
										<i class="fa fa-angle-right"></i> No More Table
									</h4>
									<section id="no-more-tables">
										<table
											class="table table-bordered table-striped table-condensed cf">
											<thead class="cf">
												<tr>
													<th>Code</th>
													<th>Company</th>
													<th class="numeric">Price</th>
													<th class="numeric">Change</th>
													<th class="numeric">Change %</th>
													<th class="numeric">Open</th>
													<th class="numeric">High</th>
													<th class="numeric">Low</th>
													<th class="numeric">Volume</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td data-title="Code">AAC</td>
													<td data-title="Company">AUSTRALIAN AGRICULTURAL
														COMPANY LIMITED.</td>
													<td class="numeric" data-title="Price">$1.38</td>
													<td class="numeric" data-title="Change">-0.01</td>
													<td class="numeric" data-title="Change %">-0.36%</td>
													<td class="numeric" data-title="Open">$1.39</td>
													<td class="numeric" data-title="High">$1.39</td>
													<td class="numeric" data-title="Low">$1.38</td>
													<td class="numeric" data-title="Volume">9,395</td>
												</tr>
												<tr>
													<td data-title="Code">AAD</td>
													<td data-title="Company">ARDENT LEISURE GROUP</td>
													<td class="numeric" data-title="Price">$1.15</td>
													<td class="numeric" data-title="Change">+0.02</td>
													<td class="numeric" data-title="Change %">1.32%</td>
													<td class="numeric" data-title="Open">$1.14</td>
													<td class="numeric" data-title="High">$1.15</td>
													<td class="numeric" data-title="Low">$1.13</td>
													<td class="numeric" data-title="Volume">56,431</td>
												</tr>
												<tr>
													<td data-title="Code">AAX</td>
													<td data-title="Company">AUSENCO LIMITED</td>
													<td class="numeric" data-title="Price">$4.00</td>
													<td class="numeric" data-title="Change">-0.04</td>
													<td class="numeric" data-title="Change %">-0.99%</td>
													<td class="numeric" data-title="Open">$4.01</td>
													<td class="numeric" data-title="High">$4.05</td>
													<td class="numeric" data-title="Low">$4.00</td>
													<td class="numeric" data-title="Volume">90,641</td>
												</tr>
												<tr>
													<td data-title="Code">ABC</td>
													<td data-title="Company">ADELAIDE BRIGHTON LIMITED</td>
													<td class="numeric" data-title="Price">$3.00</td>
													<td class="numeric" data-title="Change">+0.06</td>
													<td class="numeric" data-title="Change %">2.04%</td>
													<td class="numeric" data-title="Open">$2.98</td>
													<td class="numeric" data-title="High">$3.00</td>
													<td class="numeric" data-title="Low">$2.96</td>
													<td class="numeric" data-title="Volume">862,518</td>
												</tr>
												<tr>
													<td data-title="Code">ABP</td>
													<td data-title="Company">ABACUS PROPERTY GROUP</td>
													<td class="numeric" data-title="Price">$1.91</td>
													<td class="numeric" data-title="Change">0.00</td>
													<td class="numeric" data-title="Change %">0.00%</td>
													<td class="numeric" data-title="Open">$1.92</td>
													<td class="numeric" data-title="High">$1.93</td>
													<td class="numeric" data-title="Low">$1.90</td>
													<td class="numeric" data-title="Volume">595,701</td>
												</tr>
												<tr>
													<td data-title="Code">ABY</td>
													<td data-title="Company">ADITYA BIRLA MINERALS LIMITED</td>
													<td class="numeric" data-title="Price">$0.77</td>
													<td class="numeric" data-title="Change">+0.02</td>
													<td class="numeric" data-title="Change %">2.00%</td>
													<td class="numeric" data-title="Open">$0.76</td>
													<td class="numeric" data-title="High">$0.77</td>
													<td class="numeric" data-title="Low">$0.76</td>
													<td class="numeric" data-title="Volume">54,567</td>
												</tr>
												<tr>
													<td data-title="Code">ACR</td>
													<td data-title="Company">ACRUX LIMITED</td>
													<td class="numeric" data-title="Price">$3.71</td>
													<td class="numeric" data-title="Change">+0.01</td>
													<td class="numeric" data-title="Change %">0.14%</td>
													<td class="numeric" data-title="Open">$3.70</td>
													<td class="numeric" data-title="High">$3.72</td>
													<td class="numeric" data-title="Low">$3.68</td>
													<td class="numeric" data-title="Volume">191,373</td>
												</tr>
												<tr>
													<td data-title="Code">ADU</td>
													<td data-title="Company">ADAMUS RESOURCES LIMITED</td>
													<td class="numeric" data-title="Price">$0.72</td>
													<td class="numeric" data-title="Change">0.00</td>
													<td class="numeric" data-title="Change %">0.00%</td>
													<td class="numeric" data-title="Open">$0.73</td>
													<td class="numeric" data-title="High">$0.74</td>
													<td class="numeric" data-title="Low">$0.72</td>
													<td class="numeric" data-title="Volume">8,602,291</td>
												</tr>
												<tr>
													<td data-title="Code">AGG</td>
													<td data-title="Company">ANGLOGOLD ASHANTI LIMITED</td>
													<td class="numeric" data-title="Price">$7.81</td>
													<td class="numeric" data-title="Change">-0.22</td>
													<td class="numeric" data-title="Change %">-2.74%</td>
													<td class="numeric" data-title="Open">$7.82</td>
													<td class="numeric" data-title="High">$7.82</td>
													<td class="numeric" data-title="Low">$7.81</td>
													<td class="numeric" data-title="Volume">148</td>
												</tr>
												<tr>
													<td data-title="Code">AGK</td>
													<td data-title="Company">AGL ENERGY LIMITED</td>
													<td class="numeric" data-title="Price">$13.82</td>
													<td class="numeric" data-title="Change">+0.02</td>
													<td class="numeric" data-title="Change %">0.14%</td>
													<td class="numeric" data-title="Open">$13.83</td>
													<td class="numeric" data-title="High">$13.83</td>
													<td class="numeric" data-title="Low">$13.67</td>
													<td class="numeric" data-title="Volume">846,403</td>
												</tr>
												<tr>
													<td data-title="Code">AGO</td>
													<td data-title="Company">ATLAS IRON LIMITED</td>
													<td class="numeric" data-title="Price">$3.17</td>
													<td class="numeric" data-title="Change">-0.02</td>
													<td class="numeric" data-title="Change %">-0.47%</td>
													<td class="numeric" data-title="Open">$3.11</td>
													<td class="numeric" data-title="High">$3.22</td>
													<td class="numeric" data-title="Low">$3.10</td>
													<td class="numeric" data-title="Volume">5,416,303</td>
												</tr>
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


					<!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->

					<div class="col-lg-3 ds">
						<!--COMPLETED ACTIONS DONUTS CHART-->
						<!-- USERS ONLINE SECTION -->
						<h3>THE CREW</h3>
						<!-- First Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle" src="assets/ui-divya.jpg" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">DIVYA MANIAN</a><br />
									<muted>Available</muted>
								</p>
							</div>
						</div>
						<!-- Second Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle" src="assets/ui-sherman.jpg" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">DJ SHERMAN</a><br />
									<muted>I am Busy</muted>
								</p>
							</div>
						</div>
						<!-- Third Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle" src="assets/ui-danro.jpg" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">DAN ROGERS</a><br />
									<muted>Available</muted>
								</p>
							</div>
						</div>
						<!-- Fourth Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle" src="assets/ui-zac.jpg" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">Zac Sniders</a><br />
									<muted>Available</muted>
								</p>
							</div>
						</div>
						<!-- Fifth Member -->
						<div class="desc">
							<div class="thumb">
								<img class="img-circle" src="assets/ui-sam.jpg" width="35px"
									height="35px" align="">
							</div>
							<div class="details">
								<p>
									<a href="#">Marcel Newman</a><br />
									<muted>Available</muted>
								</p>
							</div>
						</div>

						<!-- CALENDAR-->
						<div id="calendar" class="mb">
							<div class="panel green-panel no-margin">
								<div class="panel-body">
									<div id="date-popover" class="popover top"
										style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
										<div class="arrow"></div>
										<h3 class="popover-title" style="disadding: none;"></h3>
										<div id="date-popover-content" class="popover-content"></div>
									</div>
									<div id="my-calendar"></div>
								</div>
							</div>
						</div>
						<!-- / calendar -->

					</div>
					<!-- /col-lg-3 -->
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
							var unique_id = $.gritter
									.add({
										// (string | mandatory) the heading of the notification
										title : 'Welcome to Dashgum!',
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
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    
	
	
	
	
	
	
	
	
	
	</script>

	<!-- Email -->
	    <p>Gmail API Quickstart</p>

    <!--Add buttons to initiate auth sequence and sign out-->
    <button id="authorize-button" style="display: none;">Authorize</button>
    <button id="signout-button" style="display: none;">Sign Out</button>

    <pre id="content"></pre>  

    <script type="text/javascript">
      // Client ID and API key from the Developer Console
      var CLIENT_ID = '44908189323-581ggnn44jq7rqaj7aa5gf36jik855b3.apps.googleusercontent.com';

      // Array of API discovery doc URLs for APIs used by the quickstart
      var DISCOVERY_DOCS = ["https://www.googleapis.com/discovery/v1/apis/gmail/v1/rest"];

      // Authorization scopes required by the API; multiple scopes can be
      // included, separated by spaces.
      var SCOPES = 'https://www.googleapis.com/auth/gmail.readonly';

      var authorizeButton = document.getElementById('authorize-button');
      var signoutButton = document.getElementById('signout-button');

      /**
       *  On load, called to load the auth2 library and API client library.
       */
      function handleClientLoad() {
        gapi.load('client:auth2', initClient);
      }

      /**
       *  Initializes the API client library and sets up sign-in state
       *  listeners.
       */
      function initClient() {
        gapi.client.init({
          discoveryDocs: DISCOVERY_DOCS,
          clientId: CLIENT_ID,
          scope: SCOPES
        }).then(function () {
          // Listen for sign-in state changes.
          gapi.auth2.getAuthInstance().isSignedIn.listen(updateSigninStatus);

          // Handle the initial sign-in state.
          updateSigninStatus(gapi.auth2.getAuthInstance().isSignedIn.get());
          authorizeButton.onclick = handleAuthClick;
          signoutButton.onclick = handleSignoutClick;
        });
      }

      /**
       *  Called when the signed in status changes, to update the UI
       *  appropriately. After a sign-in, the API is called.
       */
      function updateSigninStatus(isSignedIn) {
        if (isSignedIn) {
          authorizeButton.style.display = 'none';
          signoutButton.style.display = 'block';
          
          //listMessages(userId, query, callback) ;
          listMessages("me","", "") ;
         
         // listLabels();
        } else {
          authorizeButton.style.display = 'block';
          signoutButton.style.display = 'none';
        }
      }

      /**
       *  Sign in the user upon button click.
       */
      function handleAuthClick(event) {
        gapi.auth2.getAuthInstance().signIn();
      }

      /**
       *  Sign out the user upon button click.
       */
      function handleSignoutClick(event) {
        gapi.auth2.getAuthInstance().signOut();
      }

      /**
       * Append a pre element to the body containing the given message
       * as its text node. Used to display the results of the API call.
       *
       * @param {string} message Text to be placed in pre element.
       */
      function appendPre(message) {
        var pre = document.getElementById('content');
        var textContent = document.createTextNode(message + '\n');
        pre.appendChild(textContent);
      }

       function listMessages(userId, query, callback) {
    	   var getPageOfMessages = function(request, result) {
    	     request.execute(function(resp) {
    	       result = result.concat(resp.messages);
    	       var nextPageToken = resp.nextPageToken;
    	       if (nextPageToken) {
    	         request = gapi.client.gmail.users.messages.list({
    	           'userId': userId,
    	           'pageToken': nextPageToken,
    	           'q': query
    	         });
    	         getPageOfMessages(request, result);
    	         console.log("These are msgs " );console.log(result);
    	       } else {
        	       
    	         //callback(result);
    	       }
    	     });
    	   };
    	   var initialRequest = gapi.client.gmail.users.messages.list({
    	     'userId': userId,
    	     'q': query
    	   });
    	   
    	   getPageOfMessages(initialRequest, []);
    	 }

    </script>

    <script async defer src="https://apis.google.com/js/api.js"
      onload="this.onload=function(){};handleClientLoad()"
      onreadystatechange="if (this.readyState === 'complete') this.onload()">
    </script>
</body>

</html>