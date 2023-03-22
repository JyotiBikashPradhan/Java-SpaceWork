<%@ page language="java"  import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="dbcon.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reply Send User</title>
</head>
<%  

String s1=request.getParameter("msgg"); 
String s2=request.getParameter("mm"); 


try{
	Connection cn=D.getcon();
	PreparedStatement pres=cn.prepareStatement(" update chart_meng set reply=? where id=? ");
	
	pres.setString(1,s1);
	pres.setString(2,s2);
	
	int i=pres.executeUpdate();
	if(i>0){
	
		out.println("<html><body style='background-image: url(images/blind.jpg); background-repeat:repeat'></body></html>");
		out.println("<center><h1 style='color:blue'>Reply Send Sucessfully</h1></center>");
		
		out.println("<center><a href='Logout_Process.jsp' style=' border-radius:20px;border: none;color: white;text-decoration:none;padding: 20px; text-align: center;background-color:#d1de14;cursor: pointer;font-size: 20px ' >Logout</a> <a href='admin_rights.jsp' style=' border: none;color: white;padding: 20px; text-align: center;border-radius:20px;text-decoration:none;background-color:#14ded4;cursor: pointer;font-size: 20px'>Home</a></center>");
				  
				  
	} else{
		out.println(" Reply Not Saved");
	}
	}
catch(Exception ee){
		ee.printStackTrace();
	}
	%>

<body>

</body>
</html>