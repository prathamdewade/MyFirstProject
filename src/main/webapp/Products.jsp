<%@page import="com.model.ProductData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.DataOperation"%>


<!DOCTYPE html>
<html>
<head>

<title></title>

<%@include file="includes/head.jsp"%>
</head>

<style type="text/css">
</style>
<body>
	<% DataOperation dao=new DataOperation();
  	 ArrayList<ProductData> pd=dao.getAllProduct();
  		    HttpSession session3=request.getSession();  
	        session.setAttribute("ProductCards",pd); 
	 
	        
	 /* fectching machinary data */
	  ArrayList<ProductData>md=dao.getyMachinaryData();
	 request.getSession().setAttribute("machine", md);
	 
	 /* fectching farm data */
	 ArrayList<ProductData>fd=dao.getFarmData();
	 request.getSession().setAttribute("machine", fd);
	    /*feaching allFarmProduct   */
	    ArrayList<ProductData>pAll=dao.getAllFarmProduct();
  		   %>
	<!-- Navbar Strat Here -->

	<%@include file="includes/navbar.jsp"%>
	<!-- Navbar End here -->

	<div style="padding-top: 82px !important;">

		<!-- Nav pills -->
		<ul class="nav nav-pills" role="tablist">

			<li class="nav-item"><a class="nav-link " data-toggle="pill"
				href="#home">Machinary</a></li>


			<li class="nav-item"><a class="nav-link" data-toggle="pill"
				href="#menu1">Vegetables & Fruits</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="pill"
				href="#menu3">Farm Product</a></li>
			<li class="nav-item"><a class="nav-link active"
				data-toggle="pill" href="#menu2">All Product's</a></li>
		</ul>


		<!-- Tab panes -->
		<div class="tab-content">

			<div id="m2" class="tab-pane fade"
				style="position: relative; left: 100px;">
				<h3 style="display: block;">Machinary</h3>
				<div class=" d-flex" style="flex-wrap: wrap;">
					<br>
					<h1>products all here</h1>
				</div>
			</div>
			<!--  -->

			<%-- <%HHHH
     
     %> --%>
			<div id="home" class="tab-pane fade p-3">
				<h3 style="display: block;">Machinary</h3>
				<div class=" d-flex p-3" style="flex-wrap: wrap;">
					<br>

					<% if(!md.isEmpty()){%>
					<% for(ProductData pro : md){ %>
					<div class="col" style="margin: 32px;">


						<div class="card border p-2 m-2" style="width: 226px;">
							<img src="<%=pro.getImage() %>" class="card-img-top w-100"
								alt=" " style="height: 170px;">
							<div class="card-body p-0 text-center">
								<h5 class="card-title mt-1">
									<b><%=pro.getPName() %></b>
								</h5>
								<p class="card-text m-0"><%=pro.getImgDetail() %></p>
								<p class="card-text mt-3" style="font-size: 21px;"><%=pro.getPrice() %>.RS
								</p>
								<a href="#" class="btn btn-primary w-100">Order Now</a>
							</div>
						</div>

					</div>
					<%}} %>
				</div>
			</div>

			<div id="menu1" class="tab-pane fade p-3">
				<h3 style="display: block;">Vegetables & Fruits</h3>
				<div class=" d-flex container" style="flex-wrap: wrap;">
					<br>

					<% if(!pd.isEmpty()){%>
					<% for(ProductData pro : pd){ %>
					<div class="col" style="">


						<div class="card border p-2 m-2" style="width: 222px;">
							<img src="<%=pro.getImage() %>" class="card-img-top w-100"
								alt=" " style="height: 170px;">
							<div class="card-body p-0 text-center">
								<h5 class="card-title mt-1">
									<b><%=pro.getPName() %></b>
								</h5>
								<p class="card-text m-0"><%=pro.getImgDetail() %></p>
								<p class="card-text mt-3" style="font-size: 21px;"><%=pro.getPrice() %>.RS
								</p>
								<a href="#" class="btn btn-primary w-100">Order Now</a>
							</div>
						</div>

					</div>
					<%}} %>
				</div>
			</div>
			<div id="menu2" class="tab-pane fade p-3">
				<h3 style="display: block;">All Product</h3>
				<div class=" d-flex" style="flex-wrap: wrap;">
					<br>

					<% if(!pAll.isEmpty()){%>
					<% for(ProductData pro : pAll){ %>
					<div class="col" style="">


						<div class="card border p-2 m-2" style="width: 222px;">
							<img src="<%=pro.getImage() %>" class="card-img-top w-100"
								alt=" " style="height: 170px;">
							<div class="card-body p-0 text-center">
								<h5 class="card-title mt-1">
									<b><%=pro.getPName() %></b>
								</h5>
								<p class="card-text m-0"><%=pro.getImgDetail() %></p>
								<p class="card-text mt-3" style="font-size: 21px;"><%=pro.getPrice() %>.RS
								</p>
								<a href="#" class="btn btn-primary w-100">Order Now</a>
							</div>
						</div>

					</div>
					<%}} %>
				</div>
			</div>


			<div id="menu3" class="tab-pane fade p-3">
				<h3 style="display: block;">Farm Product</h3>
				<div class=" d-flex" style="flex-wrap: wrap;">
					<br>

					<% if(!fd.isEmpty()){%>
					<% for(ProductData pro : fd){ %>
					<div class="col" style="">


						<div class="card border m-2 p-2" style="width: 226px;">
							<img src="<%=pro.getImage() %>" class="card-img-top" alt=" "
								style="width: 200px; height: 170px;">
							<div class="card-body p-0 text-center">
								<h5 class="card-title mt-1">
									<b><%=pro.getPName() %></b>
								</h5>
								<p class="card-text m-0"><%=pro.getImgDetail() %></p>
								<p class="card-text mt-3" style="font-size: 21px;"><%=pro.getPrice() %>.RS
								</p>
								<a href="#" class="btn btn-primary w-100">Order Now</a>
							</div>
						</div>

					</div>
					<%}} %>
				</div>
			</div>

			<!-- footer Start Here -->
			<%@include file="includes/footer.jsp"%>
			<!-- footer End Here -->
</body>
</html>
