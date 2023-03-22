<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/birth_certificate.css" type="text/css" media="all" />
	<link href="css/font-login.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Apply Income Certificate !!</title>
</head>
<body>
<% 
response.setHeader("Cache-Control", "no-catch, no-store, must-revalidate");
response.setHeader("Pragma","no-catch"); //http 1.0
response.setHeader("Expires","0"); //Proxies

HttpSession sessionUser = request.getSession();

if(sessionUser!=null)
{
	String userid = (String) sessionUser.getAttribute("username");

%>
<h2 style="color: black;"><%=userid %> Apply For Income Certificate !!</h2>

<div class="aa">
	<h3>Income Certificate</h3>
              <div id="error_message"></div>
            
	<form action="IncomeCertificate" method="post">

	<input type="text" name="name" placeholder="Name" id="fname" required />
	
	<input type="text" name="fatherName" placeholder="Father's Name/Mother's Name" required />

	<input type="date" name="dob" placeholder="Date Of Birth" required />

	<select name="gender" id="gender">
		<option value="male">Male</option>
		<option value="female">Female</option>
		<option value="others">Others</option>
	</select>
	
	<input type="text" name="occupation" placeholder="Occupation" required />
	
	<input type="text" name="income" placeholder="Annual Income" required />
		
		<input type="submit"  value="Submit">
		<div class="text-center">
		<a href="userLogout.jsp" class="signuplink">Logout</a>
      	</div>
	</form>
        </div>

<%-- <section class="w3l-form-36">
		<div class="form-36-mian section-gap">
			<div class="wrapper">
				<div class="form-inner-cont">
					<h3><%=userid %> Apply For Income Certificate !!</h3>
					<form action="IncomeCertificate" method="post" class="signin-form">
				

						<div class="form-input">
							<span class="fa fa-envelope-o" aria-hidden="true"></span> <input
								type="text" name="name" placeholder="Name" required />
						</div>
												<div class="form-input">
							<span class="fa fa-envelope-o" aria-hidden="true"></span> <input
								type="text" name="fatherName" placeholder="Father's Name/Mother's Name" required />
						</div>
												<div class="form-input">
							<span class="fa fa-envelope-o" aria-hidden="true"></span> <input
								type="text" name="dob" placeholder="Date Of Birth" required />
						</div>
							
								<label for="gender">Select Gender : </label> <select name="gender" id="gender">
							<option value="male">Male</option>
							<option value="female">Female</option>
							<option value="others">Others</option>
							</select>
							
						
							<div class="form-input">
							<span class="fa fa-envelope-o" aria-hidden="true"></span> <input type="text" name="occupation"
								placeholder="Occupation" required />
						    </div>
						    <div class="form-input">
							<span class="fa fa-envelope-o" aria-hidden="true"></span> <input type="text" name="income"
								placeholder="Annual Income" required />
						    </div>



						<div class="login-remember d-grid">
							<label class="check-remaind">
								<input type="radio" value="confirm">
								<span class="checkmark"></span>
								<p class="remember">Comfirm!!</p>
							</label>
							<button class="btn theme-button">Submit</button>
						</div>
						
					</form>
				
					<p class="signup"> <a href="logout.jsp" class="signuplink">Logout</a></p>
				</div>

				<!-- copyright -->
				<div class="copy-right">
					<p>© 2020 Active Deposit Form. All rights reserved ||</p>
				</div>
				<!-- //copyright -->
			</div>
		</div>
	</section> --%>
	<!-- copyright -->
				<div class="text-center">
					<p>© 2020 Active Deposit Form. All rights reserved ||</p>
				</div>
	<!-- //copyright -->
	<%
}
else
{
	response.sendRedirect("UserLogin");
}
	%>
</body>
</html>