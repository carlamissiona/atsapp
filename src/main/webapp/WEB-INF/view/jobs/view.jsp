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

<title>Name Mini ATS</title>


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
					<li id="header_inbox_bar" class="dropdown tooltips"
						data-placement="right" data-original-title="Authorize Email"><a
						data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
							<i class="fa fa-envelope-o"></i>
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

					<div class="col-lg-12 view-single">


						<!-- /row mt -->
						<!-- View Single Candidate   -->
						<div class="row mt">
							<div class="col-lg-12">
								<div class="form-panel">
									<h4 class="mb">
										<i class="fa fa-angle-right"></i> Form Elements <span
											class="pull-right"><button type="button"
												class="btn btn-info btn-sm btn-edit-cnd" style="margin: 10px;">Edit</button></span>
									</h4>
									<form class="form-horizontal style-form" method="post">
										<div class="form-group">
											<label class="col-sm-2 col-sm-2 control-label">
												Job </label>
											<div class="col-sm-10">
												<input type="text" class="form-control cm_name"
													name="cm_name" disabled>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-2 col-sm-2 control-label">Description</label>
											<div class="col-sm-10">
												<input type="text" class="form-control cm_desc"
													name="cm_desc" disabled>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 col-sm-2 control-label">Contact Person</label>
											<div class="col-sm-10">
												<input type="text" class="form-control cm_contact_linked"
													name="cm_contact_linked" disabled>
											</div>
										</div>
										
										
										<div class="form-group">
											<label class="col-sm-2 col-sm-2 control-label">
												Update </label>
											<div class="col-sm-10">
												<button type="button"
													class="btn btn-info btn-sm btn-edit-company pull-right"
													style="margin: 10px;">Submit</button> <br>
											</div>
										</div>
									 

									</form>
								</div>
							</div>
							<!-- col-lg-12-->
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
			<button id="authorize-button" style="display: none;">Authorize</button>
			<button id="signout-button" style="display: none;">Sign Out</button>
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
		$(document).ready(function() {
			/* var unique_id = $.gritter
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
            //*********** If Edit button was clicked 
            $( ".btn-edit-cnd" ).click(function() {
                $(".form-control").removeAttr("disabled");
			
             });
            
			//*********** If view cv is clicked
			$( ".btn-view-cv" ).click(function() {
				 
				if( $(".form-control:disabled ").length > 0 ){
					viewCvlink();
					// disabled since viewing function so you can  open cv
				}else{
					
					
				}
			});
			//*********** Submit update form 
			
			$(".btn-edit-candidate").click(function(){
					console.log("I clicked edit submit");
				 var form = $("form").serialize();
				 console.log(form);
				 $.post( window.location.origin + "/jobs/form/edit", form , function( data ) {
					  alert( "Data Loaded: " + data );
					});
		 
			});
            //*********** Ccandidates list table
			var jobForm =${jobs};
			var whose_online = ${whose_online};
			populateForm(jobForm); 
			
			 
        });
        
        function populateForm(jobs){
            console.log("!!");
            console.log(jobs);
			$("input.cm_name").attr("value" , jobs[0].cm_name);
			$("input.cm_desc").attr("value" ,  jobs[0].cm_desc);
			$("input.cm_contact_linked").attr("value" ,  jobs[0].cm_contact);
		    
			
        }
        function viewCvlink(){
			
        	$(".sidebar-toggle-box .tooltips").click();
        	$(".view-single .form-panel").addClass("col-lg-4");
        	   console.log("Hieee");
		 	// check if edit button is on 
		  
    		
        }
        function uploadCv(){
			$("#authorize-button").click();			
				
        }
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    	
		
	
	
	
	
	
	</script>

	<!-- --  --------- Google Drive Google Drive --------- --- -->
	<script type="text/javascript">
		// Client ID and API key from the Developer Console
		var CLIENT_ID = '44908189323-0aghvejrg0t2oc5gm863blb6b2m9bj73.apps.googleusercontent.com';

		// Array of API discovery doc URLs for APIs used by the quickstart
		var DISCOVERY_DOCS = [ "https://www.googleapis.com/discovery/v1/apis/drive/v3/rest" ];

		// Authorization scopes required by the API; multiple scopes can be
		// included, separated by spaces.
		var SCOPES = 'https://www.googleapis.com/auth/drive.metadata.readonly';

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
			gapi.client
					.init({
						discoveryDocs : DISCOVERY_DOCS,
						clientId : CLIENT_ID,
						scope : SCOPES
					})
					.then(
							function() {
								// Listen for sign-in state changes.
								gapi.auth2.getAuthInstance().isSignedIn
										.listen(updateSigninStatus);

								// Handle the initial sign-in state.
								updateSigninStatus(gapi.auth2.getAuthInstance().isSignedIn
										.get());
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
				listFiles();
			} else {
				authorizeButton.style.display = 'block';
				signoutButton.style.display = 'none';
			}
		}

		/**
		 *  Sign in the user upon button click.
		 */
		function handleAuthClick(event) {
			console.log("Hieee");
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

		/**
		 * Print files.
		 */
		function listFiles() {
			gapi.client.drive.files.list({
				'pageSize' : 10,
				'fields' : "nextPageToken, files(id, name)"
			}).then(function(response) {
				appendPre('Files:');
				var files = response.result.files;
				if (files && files.length > 0) {
					for (var i = 0; i < files.length; i++) {
						var file = files[i];
						appendPre(file.name + ' (' + file.id + ')');
					}
				} else {
					appendPre('No files found.');
				}
			});
		}
	</script>


	<script async defer src="https://apis.google.com/js/api.js"
		onload="this.onload=function(){};handleClientLoad()"
		onreadystatechange="if (this.readyState === 'complete') this.onload()">
		</body>

		</html>
	