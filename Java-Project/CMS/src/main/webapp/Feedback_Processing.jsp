<%@ page language="java"  import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="dbcon.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback Registered</title>
</head>
<%  

String s1=request.getParameter("t1"); 
String s2=request.getParameter("t2"); 

try{
	Connection cn=D.getcon();
	PreparedStatement pres=cn.prepareStatement(" update report_crime set feedback=? where criime_reason=? ");
	
	pres.setString(1,s2);
	pres.setString(2,s1);
	
	int i=pres.executeUpdate();
	if(i>0){
		out.println("<html><body style='background-image: url(images/po2.jpg); background-repeat:no-repeat'></body></html>");
		out.println("<center><h1 style='color:blue'>Sucessfully Accepted your Feedback</h1></center>");
		out.println("<center><h3 style='color:green'>Thank You For Feedback</h3></center><br/><br/>");
		out.println("<center> <a href='Logout_Process.jsp' style=' border: none;color: white;padding: 8px; text-align: center;background-color:#d1de14;cursor: pointer;font-size: 15px ' >Logout</a>  <a href='rights_citizen.jsp' style=' border: none;color: white;padding: 8px; text-align: center;background-color:#14ded4;cursor: pointer;font-size: 15px'>Home</a></center>");
				  
				  
	} else{
		out.println(" Registered Feedback  Failed");
	}
	}
catch(Exception ee){
		ee.printStackTrace();
	}
	%>

<body>

</body>
</html>