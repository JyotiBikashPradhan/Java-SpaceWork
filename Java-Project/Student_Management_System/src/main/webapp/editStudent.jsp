<%@page import="com.entities.Student"%>
<%@page import="com.conn.Dbcon"%>
<%@page import="com.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="bootstrapcdn.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	
	<div class="container p-4">
	<div class ="row">
	<div class ="col-md-6 offset-md-3">
	<div class= "card">
	<div class="card-body bg-light">
<div class= "card bg-primary text-center">
	<p class="fs-4 text-light m-2">Edit Student</p>
	</div>	
	
	<%
	  int id=Integer.parseInt(request.getParameter("id"));
      StudentDao dao= new StudentDao(Dbcon.getCon());
	  Student s=dao.getStudentById(id);
	%>
  
	
	<form action="update" method="post" >
	<div class="mb-3">
    <label class="form-label">Id</label> <i class="bi bi-card-list"></i>
    <input type="text" value="<%=s.getId() %>" name="id" class="form-control" >
  </div>
  
  <div class="mb-3">
    <label class="form-label">Name</label> <i class="bi bi-person-fill"></i>
    <input value="<%=s.getName() %>" type="text" value=""name="name"class="form-control" >
  </div>
  
  <div class="mb-3">
    <label class="form-label">Roll No.</label> <i class="bi bi-fingerprint"></i>
    <input type="text" value="<%=s.getRoll_no() %> " name="roll_no"class="form-control" >
  </div>
  
  <div class="mb-3">
    <label class="form-label">D.O.B</label> <i class="bi bi-calendar-check-fill"></i>
    <input type="date" value="<%=s.getDob() %>" name="dob" class="form-control" >
  </div>
  
  <div class="mb-3">
    <label class="form-label">Address</label> <i class="bi bi-house-check-fill"></i>
    <input type="text" value="<%=s.getAddress() %>" name="address" class="form-control" >
  </div>
  
  <div class="mb-3">
    <label class="form-label">Department Name</label> <i class="bi bi-building-fill"></i>
    <input type="text" name="dept_name" value="<%=s.getDept_name() %>" class="form-control" >
  </div>
  
  <div class="mb-3">
    <label class="form-label">Semester</label> <i class="bi bi-book-half"></i>
    <input type="text" name="sem" value="<%=s.getSem() %>" class="form-control" >
  </div>

<div class="mb-3">
    <label class="form-label">E-mail</label> <i class="bi bi-envelope-at-fill"></i>
    <input type="email" value="<%=s.getEmail() %>" name="email" class="form-control" >
  </div>
  
  
  <button type="submit" class="btn btn-primary col-md-12">Update <i class="bi bi-cloud-download"></i></button> 
	
	 
	
	</div>
	</div>
	</div>
	</div>
	
	</div>
</body>
</html>