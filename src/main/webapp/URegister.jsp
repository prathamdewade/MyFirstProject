<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<%@include file="includes/head.jsp"%>
</head>

<body>
	<!-- navbar -->
	<%@include file="includes/navbar.jsp"%>
	<!-- nav end here -->
	<div>
		<img
			src="https://indiaclimatedialogue.net/wp-content/uploads/2020/07/Paddy.jpg"
			alt="" style="width: 100%; height: 793px;">
	</div>
	<section class="text-center" style="margin-top: -701px;">
		<h3 class="my-3">Registration Form</h3>
		<div class="w-25 d-inline-block">
			<form action="User-Reg" method="get">
				<div class="mt-2 text-left">
					<label class="font-weight-bold">First Name</label><br> <input
						type="text" class="form-control" placeholder="First name"
						name="fn">
				</div>
				<div class="mt-2 text-left">
					<label class="font-weight-bold">Last Name</label><br> <input
						type="text" class="form-control" placeholder="Last Name" name="ln">
				</div>
				<div class="mt-2 text-left">
					<label class="font-weight-bold">Contact No</label><br> <input
						type="text" class="form-control" placeholder="Contact No"
						name="cn">
				</div>
				<div class="mt-2 text-left">
					<label class="font-weight-bold">Enter Email</label><br> <input
						type="text" class="form-control" placeholder="Enter Email"
						name="email">
				</div>
				<div class="mt-2 text-left">
					<label class="font-weight-bold">Enter Password</label><br> <input
						type="password" class="form-control" placeholder="Enter Password"
						name="password">
				</div>
				<div class="mt-2 text-left">
					<label class="font-weight-bold">Address</label><br> <input
						type="text" class="form-control" placeholder="Address"
						name="address">
				</div>
				<button class="btn btn-success mt-3 w-100">Submit</button>
			</form>
		</div>
	</section>

</body>

</html>


<!-- 
    full name,
    contact,
    address,
    email,
    password,

 -->