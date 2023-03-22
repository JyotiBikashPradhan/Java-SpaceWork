<!DOCTYPE html>
<html lang="zxx">

<head>
<title>Signup Form Responsive</title>
<!-- Meta tags -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- //Meta tags -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css/user_register.css" type="text/css"
	media="all" />
<!-- Style-CSS -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- font-awesome-icons -->
</head>

<body>
	<section class="w3l-form-36">
		<div class="form-36-mian section-gap">
			<div class="wrapper">
				<div class="form-inner-cont">
					<h3>Create your account</h3>
					<form action="User_register_Process.jsp" method="post"
						class="signin-form">
						<div class="form-input">
							<span class="fa fa-user-o" aria-hidden="true"></span> <input
								type="text" name="t1" placeholder="Name" required />
						</div>
						<div class="form-input">
							<span class="fa fa-user-o" aria-hidden="true"></span> <input
								type="number" name="t2" placeholder="Mobile No" required />
						</div>
						<div class="form-input">
							<span class="fa fa-user-o" aria-hidden="true"></span> <input
								type="text" name="t3" placeholder="Adhhar No" required />
						</div>
						<div class="form-input">
							<span class="fa fa-user-o" aria-hidden="true"></span> <input
								type="text" name="t4" placeholder="Address" required />
						</div>
						<div class="form-input">
							<span class="fa fa-envelope-o" aria-hidden="true"></span> <input
								type="email" name="t5" placeholder="Email" required />
						</div>
						<div class="form-input">
							<span class="fa fa-key" aria-hidden="true"></span><input
								type="password" name="t6" placeholder="Password" required />
						</div>

						<div class="text-center mt-5">
							<input type="submit" class="btn theme-button" value="SignUp">
						</div>
					</form>

					<p class="signup">
						Already a member? <a href="index1.jsp">Login</a>
					</p>
				</div>


				<!-- copyright -->
				<div class="copy-right">
					<p>© 2020 Stock Signup Form. All rights reserved.</p>
				</div>
				<!-- //copyright -->
			</div>
		</div>
	</section>
</body>
</html>