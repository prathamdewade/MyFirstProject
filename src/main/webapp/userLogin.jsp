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
		<img src="https://wallpaperaccess.com/full/2408569.jpg" alt=""
			style="width: 100%; height: 879px;">

	</div>
	<section class="text-center" style="margin-top: -624px;">
		<h3 class="my-4 font-weight-bold">Login Form</h3>
		<div class="w-25 text-center d-inline-block">
			<form action="UserLogin" method="get">
				<div class="mt-2 text-left">
					<label class="font-weight-bold">Enter Email</label><br> <input
						type="text" name="email" class="w-100 border-bottom border-dark"
						style="outline: 0; background: none; border: none">
				</div>
				<div class="mt-2 text-left">
					<label class="font-weight-bold">Enter Password</label><br> <input
						type="password" name="pass"
						class="w-100 border-bottom border-dark"
						style="outline: 0; background: none; border: none">
				</div>

				<button class="btn btn-primary mt-3 w-100 font-weight-bold">Log
					In</button>
				<a class="btn btn-outline-warning mt-3 w-100 font-weight-bold"
					href="URegister.jsp">Register</a>
			</form>
		</div>
	</section>

</body>

</html>