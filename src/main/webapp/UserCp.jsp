
<%UserRegister ur =(UserRegister)request.getSession().getAttribute("User"); %>

<!DOCTYPE html>
<html>
<head>
<title></title>
<!-- head link here -->
<%@include file="includes/head.jsp"%>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

form {
	height: auto;
	border: 1px solid black;
	padding: 20px;
}

form #bb {
	margin-bottom: -5px;
}
</style>
</head>
<body>
	<!-- navbar -->
	<%@include file="includes/navbar.jsp"%>
	<br>
	<section class="d-flex justify-content-center text-align-center mt-5">
		<div class="w-50">
			<form action="UpdateUP" class="was-validated" method="get">

				<h3 class="text-center">
					Edit your profile
					</button>
				</h3>
				<div class="form-group" id="bb">
					<!-- //conctact no -->
					<input type="hidden" class="form-control" id="uname" name="ucon"
						value="<%=ur.getContactNo() %>">
					<div class="valid-feedback">Valid.</div>
					<div class="invalid-feedback">Please fill out this field.</div>
				</div>



				<div class="form-group" id="bb">
					<label for="uname">Name:</label> <input type="text"
						class="form-control" id="uname" name="uname"
						value="<%=ur.getName() %>" required>
					<div class="valid-feedback">Valid.</div>
					<div class="invalid-feedback">Please fill out this field.</div>
				</div>
				<div class="form-group" id="bb">
					<label for="ucn">Contact No:</label> <input type="number"
						class="form-control" id="pwd" name="ucn"
						value="<%=ur.getContactNo() %>" required>
					<div class="valid-feedback">Valid.</div>
					<div class="invalid-feedback">Please fill out this field.</div>
				</div>
				<div class="form-group" id="bb">
					<label for="pwd">Email ID:</label> <input type="text"
						class="form-control" id="pwd" name="email"
						value="<%=ur.getEmail() %>" required>
					<div class="valid-feedback">Valid.</div>
					<div class="invalid-feedback">Please fill out this field.</div>
				</div>
				<div class="form-group" id="bb">
					<label for="pwd">Password:</label> <input type="password"
						class="form-control" id="pwd" name="pswd" value="**********"
						required>
					<div class="valid-feedback">Valid.</div>
					<div class="invalid-feedback">Please fill out this field.</div>
				</div>
				<div class="form-group" id="bb">
					<label for="pwd">Address:</label> <input type="text"
						class="form-control" id="pwd" name="address"
						value="<%=ur.getAddress() %>" required>
					<div class="valid-feedback">Valid.</div>
					<div class="invalid-feedback">Please fill out this field.</div>
				</div>
				<div class="form-group form-check">
					<label class="form-check-label"> <input
						class="form-check-input" type="checkbox" name="remember" required>
						I agree for thise infomation.
						<div class="valid-feedback">Valid.</div>
						<div class="invalid-feedback">Check this checkbox to
							continue.</div>
					</label>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>

		</div>
	</section>
	<!-- footer -->
	<%@include file="includes/footer.jsp"%>

</body>
</html>