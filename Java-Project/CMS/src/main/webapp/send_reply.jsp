<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Reply Page</title>
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"
	media="all">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
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
</head>
<style>
body {
	background-image: url("images/blind.jpg");
	background-size: cover;
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
}

.btn {
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
	background-color: #a534eb;
}

.btn3 {
	background-color: #eb4034;
}

.btn4 {
	background-color: #14ded4;
}

.btn2 {
	background-color: #d1de14;
}

.messege-section {
	max-width: 400px;
	border-radius: 20px;
	margin-left: 37%;
	background: rgba(0, 0, 0, 0.7);
	box-sizing: border-box;
	padding: 40px;
	color: #fff;
	box-shadow: 10px 10px 10px black;
}

textarea {
	width: 100%;
	font-size: 20px;
	box-sizing: border-box;
	padding: 20px, 5px;
	background: rgba(0, 0, 0, 0.10);
	outline: none;
	border: 1px solid #fff;
	color: #fff;
	border-radius: 5px;
	margin: 10px;
	font-weight: bold;
}

textarea:hover {
	border: 2px solid green;
}

h1 {
	text-shadow: 2px 2px black;
}
</style>
<%
String ss = request.getParameter("msg");
%>
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
                            <li class="nav-item active"><a class="nav-link" href="admin_rights.jsp">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="Crime_Details.jsp">See Crime Details</a></li>
                            <li class="nav-item"><a class="nav-link" href="view_feedback_details.jsp">View Feedback Details</a></li>
                            <li class="nav-item"><a class="nav-link" href="view_chat_details.jsp">View Chat Details</a></li>
                            <li class="nav-item"><a class="nav-link" href="Logout_Process.jsp">Logout</a></li>

                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- //header -->
	
	<h1 style="color: #fd5201">
		<center>Give Reply</center>
	</h1>
	<form action="Reply_processing.jsp" method="post">
		<div class="messege-section">
			<textarea rows="8" cols="20" name="msgg"></textarea>
			<input type="hidden" name="mm" value=<%=ss%>> <br />
			<center>
				<input type="submit" value="SEND" class="btn">
			</center>
		</div>
	</form>
</body>
</html>


