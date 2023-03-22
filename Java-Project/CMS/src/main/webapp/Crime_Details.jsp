<%@ page language="java"  import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="dbcon.D" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crime Details Page</title>
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" media="all">
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
 background-image: url("images/in_hand.jpg");
background-size:cover;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
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
  background-color:#a534eb;
}
.btn2{
background-color:#d1de14;
}
.btn4{
background-color:#14ded4;
}
.report{
text-shadow:2px 2px red;
}
</style>
<body>
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
                            <li class="nav-item"><a class="nav-link"  href="view_users.jsp">View Users</a></li>
                            <li class="nav-item"><a class="nav-link" href="Logout_Process.jsp">Logout</a></li>

                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>

<center><h1 style="color:white;" class="report">Report Details</h1></center>
 <% 
 try{
	 Connection cn=D.getcon();
    PreparedStatement pres=cn.prepareStatement("select * from report_crime");
    ResultSet ress=pres.executeQuery();
    
 %>
 
 <div class="container mt-3">
		
		<table class="table table-dark table-bordered table-striped table-hover">
	<thead>
	<tr class="bg-info text-center">
		<th>Name</th>
 		<th>Date</th>
 		<th>Address</th>
 		<th>Crime Reason</th>
	</tr>
	</thead>
	
<% while(ress.next()){ %>
<tbody>

<tr style="text-align: center;">
<td><%=ress.getString(2)%></td>
<td><%=ress.getString(3)%></td>
<td><%=ress.getString(4)%></td>
<td><%=ress.getString(5)%></td>

</tr>
<%}}catch(Exception ee){
	
	ee.printStackTrace();}
	%>


</tbody>




</table>
</div>
</body>
</html>