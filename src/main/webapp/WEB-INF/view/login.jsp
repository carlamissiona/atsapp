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

		<div id="login-page">
			<div class="container">
				<form>
	 
					<h2 class="form-login-heading">sign in now</h2>
					<div class="login-wrap">
						<input type="text" class="form-control" placeholder="User ID"
							autofocus> <br> <input type="password"
							class="form-control" placeholder="Password"> <label
							class="checkbox"> 
						</label>
						<button class="btn btn-theme btn-block" href="index.html"
							type="submit">
							<i class="fa fa-lock"></i> SIGN IN
						</button>
						<hr>
						
						<div class="registration">
							Don't have an account yet?<br /> <a class="" href="#">
								Create an account </a>
						</div>

					</div>
</form>
					<!-- Modal -->
					<div aria-hidden="true" aria-labelledby="myModalLabel"
						role="dialog" tabindex="-1" id="myModal" class="modal fade">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									
								</div>
								<div class="modal-body">
									<p>Enter your e-mail address below to reset your password.</p>
									<input type="text" name="email" placeholder="Email"
										autocomplete="off" class="form-control placeholder-no-fix">

								</div>
								<div class="modal-footer">
									<button data-dismiss="modal" class="btn btn-default"
										type="button">Cancel</button>
									<button class="btn btn-theme btn-submit" type="button">Submit</button>
								</div>
							</div>
						</div>
					</div>
					<!-- modal -->

 

			</div>
		</div>
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="/resources/theme_dashgum/assets/js/jquery.js"></script>
	<script src="/resources/theme_dashgum/assets/js/bootstrap.min.js"></script>
    
	<!--BACKSTRETCH-->
	<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
	<script type="text/javascript"
		src="/resources/theme_dashgum/assets/js/jquery.backstretch.min.js"></script>
	<script>
		$.backstretch("/resources/theme_dashgum/assets/img/assets/login-bg.jpg", {
			speed : 500
		});
	</script>
	<script type="text/javascript">

	 $(document).ready(function () {
  	 
  			$(".btn-submit").click(function(event){
				console.log("I clicked edit submit");
				 var form = $("form").serialize();
				 console.log(form);
				 $.post( window.location.origin + "/login/submit", form , function( data ) {
					  alert( "Data Loaded: " + data );
					  console.log(data);
				 });
		 
			});

	});


	</script>


</body>
</html>
