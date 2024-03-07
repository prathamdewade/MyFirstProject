<%@page import="com.model.UserRegister"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%UserRegister ur =(UserRegister)request.getSession().getAttribute("User"); %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<!-- footer Start Here -->
<%@include file="includes/head.jsp"%>
<!-- footer End Here -->
<style>
a {
	font-size: 15px;
	font-family: 'Roboto Condensed', sans-serif;
	color: #212529;
}

a:hover {
	/* background-color: green; */
	color: yellow !important;
}

.nav-link.active, .show>.nav-link {
	color: !important;
	background-color: #343a40 !important;
}

.card {
	box-shadow: 2px 5px 6px black;
	border-radius: 20px background-color:#D1CDDB;
	color: black;
}

table tr {
	height: 40px;
	margin: 20px;
}

#gf {
	position: relative;
	left: 750px;
}

/
add product /

        form input {
	width: 500px;
}

select {
	position: relative;
	left: 30px;
}

#pd {
	box-shadow: 1px 4px 6px black;
	height: 525px;
	/* width: 530px;
*/
}

#pd form {
	margin: 20px;
}

form input {
	width: 300px;
}

/
select product page /
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
</head>

<body>
	<!-- navbar -->

	<%@include file="includes/navbar.jsp"%>
	<!-- navbar End Here -->

	<h3 class="mt-3">User Profile</h3>
	<section style="margin-top: 50px;">
		<section class="row m-0">
			<div class="col-md-2" style="position: sticky;">
				<div class="nav flex-column nav-pills border p-2" id="v-pills-tab"
					role="tablist" aria-orientation="vertical">
					<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill"
						href="#v-pills-home" role="tab" aria-controls="v-pills-home"
						aria-selected="true"><i class="fa fa-home mx-2"
						aria-hidden="true"></i> MY Profile</a> <a class="nav-link"
						id="v-pills-profile-tab" data-toggle="pill"
						href="#v-pills-profile" role="tab" aria-controls="v-pills-profile"
						aria-selected="false"><i class="fa fa-user mx-2"
						aria-hidden="true"></i>Add product</a> <a class="nav-link"
						id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-select"
						role="tab" aria-controls="v-pills-profile" aria-selected="false"><i
						class="fa fa-user mx-2" aria-hidden="true"></i>Select product</a> <a
						class="nav-link" id="v-pills-messages-tab" data-toggle="pill"
						href="#v-pills-messages" role="tab"
						aria-controls="v-pills-messages" aria-selected="false"><i
						class="fa fa-home mx-2" aria-hidden="true"></i>Cheak Orders</a>


				</div>
			</div>

			<div class="col">
				<div class="tab-content border p-2" style="height: auto;"
					id="v-pills-tabContent">
					<div class="tab-pane fade show active" id="v-pills-home"
						role="tabpanel" aria-labelledby="v-pills-home-tab">

						<section
							class="d-flex justify-content-center text-align-center mt-5">
							<div class="row m-0" id="bb">
								<div class="col-md-6 m-0">
									<img
										src="https://i.pinimg.com/736x/3f/94/70/3f9470b34a8e3f526dbdb022f9f19cf7.jpg"
										height="330" width="330">
								</div>
								<div class="col-md-6">
									<h4 style="position: relative; left: 130px;">Personal
										Detail</h4>
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
											class="btn btn-danger text-white" href="UserCp.jsp"
											style="position: relative; top: 20px; left: 80px;">Edit
											Profile</a>
									</div>
								</div>

							</div>

						</section>

					</div>

					<!-- Profile -->
					<div class="tab-pane fade" id="v-pills-profile" role="tabpanel"
						aria-labelledby="v-pills-profile-tab">

						<section
							class=" d-flex justify-content-center text-align-center mt-5 ">
							<div id="pd">
								<h2
									style="text-align: center; font-family: Snap ITC; color: green;"
									class="mt-3">Add Your Product</h2>
								<form action="ProductAll" method="post"
									enctype="multipart/form-data">
									<label>Product Name :</label><br> <input type="text"
										name="pn" placeholder="Enter Product Name"><br> <label>Product
										Discription :</label><br> <input type="text" name="pdc"
										placeholder="Enter Product Discription "><br> <label>Product
										Price :</label><br> <input type="text" name="pp"
										placeholder="Enter Product Price"><br> <label>Product
										Image :</label><br> <input type="file" name="pi"
										placeholder="Enter Product Image"><br>
									<br> <label>Select Product Type :</label> <select
										name="pt">
										<option value="fruits">fruits and vegetables</option>
										<option value="farm product">farm products</option>
										<option value="machinary">machinary</option>

									</select><br>
									<br> <input class="btn btn-info" type="submit"
										style="position: relative;" value="AddTo">
									<!-- <button class="btn btn-danger" style="position: relative;">Cancel</button> -->
								</form>
							</div>



						</section>
					</div>
					<div class="tab-pane fade" id="v-pills-select" role="tabpanel"
						aria-labelledby="v-pills-messages-tab">
						<section>
							<h4 style="text-align: center;" class="mt-5">All your
								product list here</h4>

							<table border="2" id="xy" class="table-responsive">
								<tr class="bg-dark text-white">
									<th>ID</th>
									<th>Product Name</th>
									<th>Product Discription</th>
									<th>Product Quantity</th>
									<th>Product Price</th>
									<th>Product Image</th>
									<th>Select Product Type</th>
									<th>Action</th>
								</tr>
								<tr>
									<td>1</td>
									<td>potato</td>
									<td>is the potato</td>
									<td>5</td>
									<td>100/-RS</td>
									<td><img
										src="https://m.media-amazon.com/images/I/51lTK6iktYL.AC_UF1000,1000_QL80.jpg"
										height="80px" width="100"></td>
									<td>vegetables</td>
									<td><a href="" class="btn btn-success btn-outline-warning">
											EDIT</a> <a href=""
										class="btn btn-danger btn-outline-warning mt-0"> DELETE</a></td>

								</tr>
								<tr>
									<td>2</td>
									<td>tomato</td>
									<td>is the tomato</td>
									<td>10</td>
									<td>200/-RS</td>
									<td><img
										src="https://img.freepik.com/free-photo/tomatoes_144627-15409.jpg"
										height="80" width="100"></td>
									<td>vegetables</td>
									<td><a href="" class="btn btn-success btn-outline-warning">
											EDIT</a> <a href=""
										class="btn btn-danger btn-outline-warning mt-0"> DELETE</a></td>
								</tr>
								<tr>
									<td>3</td>
									<td>potato</td>
									<td>is the</td>
									<td>7</td>
									<td>300/-RS</td>
									<td><img
										src="https://m.media-amazon.com/images/I/51lTK6iktYL.AC_UF1000,1000_QL80.jpg"
										height="80px" width="100"></td>
									<td>vegetables</td>
									<td><a href="" class="btn btn-success btn-outline-warning">
											EDIT</a> <a href=""
										class="btn btn-danger btn-outline-warning mt-0"> DELETE</a></td>
								</tr>
							</table>

						</section>



					</div>
					<div class="tab-pane fade" id="v-pills-messages" role="tabpanel"
						aria-labelledby="v-pills-messages-tab">heelo world</div>


				</div>

			</div>
		</section>
	</section>

	<!-- footer Start Here -->
	<%@include file="includes/footer.jsp"%>
	<!-- footer End Here -->


</body>

</html>
