<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Chatting Page </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/chat_meng.css">
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
	background-size:cover;
	background-attachment:fixed;
	background-position:center;
	background-repeat:no-repeat;

}

        /* 
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
  background-color:#a534eb;
} */

</style>
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
                            <li class="nav-item"><a class="nav-link" href="view_reply.jsp">View Reply</a></li>
                            <li class="nav-item"><a class="nav-link" href="Logout_Process.jsp">Logout</a></li>

                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- //header -->

<div class="messege-section mt-5">
        <h2>Chat With Us</h2>
            
        <form action="Chart_process.jsp" method="post">	
            
        <textarea  rows="6" cols="20" name="chart" required style="margin-top: 30px"></textarea>
        
        <input type="submit"  class="btn btn-success" value="Send"><br><br><br>
        
        
        </form>
        </div>  
</body>
</html>



    