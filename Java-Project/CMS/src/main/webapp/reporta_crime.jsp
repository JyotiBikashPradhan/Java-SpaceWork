<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Signup Form Responsive</title>
		<!-- Meta tags -->
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<!-- //Meta tags -->
    <link rel="stylesheet" href="css/user_register.css" type="text/css" media="all" /><!-- Style-CSS -->
    <link href="css/font-awesome.css" rel="stylesheet"><!-- font-awesome-icons -->
    <!-- Custom Theme files -->
    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- navigation -->
    <link href="css/nav.css" type="text/css" rel="stylesheet" media="all">
    <!-- banner slider -->
    <link href="css/css_slider.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>

        .btnn {
   /* Green */
  border: none;
  color: white;
  padding: 20px;
  border-radius: 12px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  margin: 4px 2px;
  cursor: pointer;
  background-color:#a534eb;
}
.btn2{
background-color:#d1de14;
}

.btn4{
background-color:#14ded4;
}
 
a{
float: right;
top: 0;
}
</style>
</head>

<body>
<!-- header -->
    <header>
        <div class="container">
            <div class="header d-lg-flex justify-content-between align-items-center">
                <div class="header-agile">
                    <h1>
                        <a class="navbar-brand editContent logo" href="admin_rights.jsp">
                            <label>CMS</label>
                        </a>
                    </h1>
                </div>
                <div class="nav_w3ls">
                    <nav>
                        <input class="menu-btn" type="checkbox" id="menu-btn" />
                        <label class="menu-icon" for="menu-btn"><span class="navicon"></span></label>
                        <ul class="menu">
                            <li class="nav-item active"><a class="nav-link" href="rights_citizen.jsp">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="User_Profile.jsp">Profile</a></li>
                            <li class="nav-item"><a class="nav-link" href="reporta_crime.jsp">Report Crime</a></li>
                            <li class="nav-item"><a class="nav-link" href="Feedback_Details.jsp">Feedback</a></li>
                            <li class="nav-item"><a class="nav-link" href="chart_meng.jsp ">Chat</a></li>
                            <li class="nav-item"><a class="nav-link" href="Logout_Process.jsp">Logout</a></li>

                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- //header -->
    
    
	<section class="w3l-form-36">
		<div class="form-36-mian section-gap">
			<div class="wrapper">
				<div class="form-inner-cont">
					<h3>Report Any Problem</h3>
					
					<form action="reportCrime_process.jsp" method="post" class="signin-form">
				         
						<div class="form-input">
							<span class="fa fa-user-o" aria-hidden="true"></span> <input type="text" name="t1" placeholder="Name" required />
						</div>
						
						<div class="form-input">
							<span class="fa fa-user-o" aria-hidden="true"></span> <input type="date" style="background: transparent;border: none;outline: none;width: 100%;font-size: 16px;
							padding: 0px 12px 0px 0px;color: var(--title-color);height: 45px;-webkit-appearance: none;"name="t2" placeholder="Date" required />
						</div>
						<div class="form-input">
							<span class="fa fa-user-o" aria-hidden="true"></span> <input type="text" name="t3" placeholder="Address" required />
						</div>
						<div class="form-input">
							<span class="fa fa-envelope-o" aria-hidden="true"></span> <input type="text" name="t4" placeholder="Crime" required />
						</div>
				
							<div class="text-center mt-5">
							<input type="submit" class="btn theme-button" value="Report">
							</div>
						</form>
						
						</div>
						

				<!-- copyright -->
				<div class="copy-right">
					<p>© 2020 Stock Signup Form. All rights reserved.</p>
				</div>
				<!-- //copyright -->
			</div>
		</div>
	</section>
</body>
</html>