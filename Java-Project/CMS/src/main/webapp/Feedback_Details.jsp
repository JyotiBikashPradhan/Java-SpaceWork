<%@ page language="java"  import="java.sql.*"  session="true" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="dbcon.D" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback Page </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/feed.css">
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
.area
{
    background: rgba(0,0,0,0.10);
    color: #fff;
    outline: none;
    border: 1px solid #fff;
    
}
.form-select{
	background-color: rgba(0,0,0,0.10);
	color: #fff;
	outline: none;
    border: 1px solid #fff;
}  
.form-select:hover{

	border: 2px solid green;
}   

.area:hover
{
    border: 2px solid green;
    
}

        /* .btn {
   /* Green */
  border: none;
  color: white;
  padding: 10px;
  border-radius: 12px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  margin: 4px 2px;
  cursor: pointer;
  background-color:#a534eb;

} */
 
</style>
<% 
String s5=(String)session.getAttribute("x1");
 try{
	 Connection cn=D.getcon();
    PreparedStatement pres=cn.prepareStatement("select * from report_crime where register_by=?");
    pres.setString(1,s5);
    ResultSet ress=pres.executeQuery();
    
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
<div class="text-center">
<h1 style="color:#fd5201;">Give Feedback</h1>
</div>
<form action="Feedback_Processing.jsp">
<div class="text-center aa">
<center>
<div  style="width: 300px;">
<select class="form-control form-select" aria-label="Default select example" name="t1">
  <option selected>--select Crime Type-------</option>
<% while(ress.next()){ %>
<option value=<%=ress.getString(5) %>><%=ress.getString(5) %></option>

<% } }
 catch(Exception ee){
	ee.printStackTrace();
	
	}%>
</select>
</div>

<div class="form-floating mt-5" style="width: 300px;">
  <textarea class="form-control area" placeholder="Leave a feedback here" id="floatingTextarea2" style="height: 200px;" name="t2" ></textarea>
</div>

<input type="submit" value="Enter Feedback" class="btn btn-success mt-4">
</center>
</div>
</form>
</body>
</html>
