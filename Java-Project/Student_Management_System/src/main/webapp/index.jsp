<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="com.entities.Student"%>
<%@page import="com.dao.StudentDao"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.conn.Dbcon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STUDENT MANAGEMENT SYSTEM</title>
<%@include file="bootstrapcdn.jsp"%>
 
</head>
<body>

<%@include file="navbar.jsp"%>





<div class= "container p-3 " >
<div class="card border-dark">
<div class="card-body bg-light  ">

<div class="card border-info mb-3 bg-primary m-1">
<p class ="text-center text-light fs-2 m-2 ">All Student Details</P>
</div>

	<c:if test="${not empty succMsg }">
	<p class="text-center text-primary">${succMsg}</p>
	<c:remove var="succMsg"/>
	</c:if>
	
	<c:if test="${not empty errMsg }">
	<p class="text-center text-primary">${errMsg}</p>
	<c:remove var="errMsg"/>
	</c:if>
	
<table class="table table-bordered border-primary ">
  <thead class="table-info border-dark">
    <tr>
      
      <th scope="col">id</th>
      <th scope="col">Name</th>
      <th scope="col">Roll No.</th>
      <th scope="col">D.O.B</th>
      <th scope="col">Address</th>
      <th scope="col">Dept. Name</th>
      <th scope="col">Semester</th>
	  <th scope="col">E-mail</th>    
	  <th scope="col">Action</th>    
    </tr>
  </thead>
  <tbody class="table-group-divider">
  
  <%
  StudentDao dao=new StudentDao(Dbcon.getCon());
  List<Student> list =dao.getAllStudent();
  for(Student s: list){
  %>
   <tr>
  
  	  <th scope="row"><%=s.getId() %></th>
      <td><%=s.getName()%></td>
      <td><%=s.getRoll_no() %></td>
      <td><%=s.getDob() %></td>
      <td><%=s.getAddress() %></td>
      <td><%=s.getDept_name() %></td>
      <td><%=s.getSem() %></td>
      <td><%=s.getEmail() %></td>
      <td class="text-center"><a href="editStudent.jsp?id=<%= s.getId() %>" 
      class="btn btn-sm btn-primary col-md-9 m-2">Edit</a>
      
      
      <a href="delete?id=<%=s.getId() %>" class="btn btn-sm btn-danger ms-1 col-md-9 ">Delete</a>
      </td>
 
   </tr>
   
   <%
   }
   %>
   
  
    
  </tbody>
</table>
</div>
</div>

</div>




</body>
</html> 