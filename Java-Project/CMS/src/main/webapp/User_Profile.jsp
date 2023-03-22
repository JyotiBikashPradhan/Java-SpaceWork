<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.D"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Profile</title>
    <link href="css/User_Profile.css" rel='stylesheet' type='text/css' />
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
    
    <style type="text/css">
    body {
 	background-image: url("images/blind.jpg");
	background-size:cover;
	background-attachment:fixed;
	background-position:center;
	background-repeat:no-repeat;
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
                            <li class="nav-item"><a class="nav-link" href="rights_citizen.jsp">Home</a></li>
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
    
    <div class="w3ls_banner_info">
        <h1>My Profile </h1>
        <%
        String id=(String)session.getAttribute("x1");
try{
	Connection cn=D.getcon();
	PreparedStatement ps=cn.prepareStatement("select * from register_user where email_id=?");
	ps.setString(1,id);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
%>
        <div class="profile-main">
            <div class="profile-pic wthree">
                <img src="images/user.png" alt="">
                <h3><%=rs.getString(2) %></h3>
                <div class="w3ls-agile-left">
                    <!---728x90--->
                    <ul class="address">
                        <li>
                            <ul class="address-text">
                                <li><b>Id </b></li>
                                <li>: </li>
                                <li> <span class="w3"><%=rs.getString(1) %></span></li>
                            </ul>
                        </li>
                        <li>
                            <ul class="address-text">
                                <li><b>Mobile Number </b></li>
                                <li>: </li>
                                <li> <span class="w3"><%=rs.getString(3) %></span></li>
                            </ul>
                        </li>

                        <li>
                            <ul class="address-text">
                                <li><b>Adhaar Number</b></li>
                                <li>: </li>
                                <li> <span class="w3"><%=rs.getString(4) %></span></li>
                            </ul>
                        </li>
                        <li>
                            <ul class="address-text">
                                <li><b>Address </b></li>
                                <li>: </li>
                                <li> <span class="w3"><%=rs.getString(5) %></span></li>
                            </ul>
                        </li>
                        <li>
                            <ul class="address-text">
                                <li><b>Email ID </b></li>
                                <li>: </li>
                                <li> <span class="w3"><%=rs.getString(6) %></span></li>
                            </ul>
                        </li>
                        

                    </ul>
                </div>
            </div>
        </div>
        <%
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
   </div>
    
</body>

</html>
