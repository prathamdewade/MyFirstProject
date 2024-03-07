<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%UserRegister ur =(UserRegister)request.getSession().getAttribute("User"); %>
<!DOCTYPE html>
<html>
<head>
<title>Document</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<%@include file="includes/head.jsp"%>
<style type="text/css">
#tt {
	padding: 30px;
	width: 400px;
	height: 250px;
}

table td {
	padding: 8px;
}

table {
	width: 350px;
}

#bb {
	border: 15px ridge green;
	height: 380px;
	width: 880px;
	padding: 20px;
}
</style>
<body>
	<!-- navbar -->
	<%@include file="includes/navbar.jsp"%>
	<!-- nav end here -->
	<section class="d-flex justify-content-center text-align-center mt-5">
		<div class="row m-0" id="bb">
			<div class="col-md-6 m-0">
				<img
					src="https://i.pinimg.com/736x/3f/94/70/3f9470b34a8e3f526dbdb022f9f19cf7.jpg"
					height="330" width="330">
			</div>
			<div class="col-md-6">
				<h4 style="position: relative; left: 130px;">Personal Detail</h4>
				<div id="tt">
					<table style="padding: 20px">
						<tr>
							<td><b> NAME :</b></td>
							<td><%= ur.getName() %></td>
						</tr>
						<tr>
							<td><b> EMAIL :</b></td>
							<td><%= ur.getEmail() %></td>
						</tr>
						<tr>
							<td><b> CONTACT :</b></td>
							<td><%= ur.getContactNo() %></td>
						</tr>
						<tr>
							<td><b> ADDRESS :</b></td>
							<td><%=ur.getAddress() %></td>
						</tr>


					</table>
					<a class="btn btn-primary text-white" href="Logout"
						style="position: relative; top: 20px;">Logout</a> <a
						class="btn btn-danger text-white"
						style="position: relative; top: 20px; left: 80px;">Edit
						Profile</a>
				</div>
			</div>

		</div>

	</section>
	<%@include file="includes/footer.jsp"%>
</body>
</html>