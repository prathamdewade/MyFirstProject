

<%@page import="com.model.UserRegister"%>
<style>
#kk {
	text-transform: uppercase;
}
</style>
<section>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark"
		style="position: fixed; z-index: 1; width: 100%; margin-top: -8px;">
		<!-- Brand -->
		<a class="navbar-brand" href="home.jsp">E-Farming</a>

		<!-- Toggler/collapsibe Button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Navbar links -->
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<div class="col-md-6">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="home.j
				sp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="Products.jsp">Shopping</a></li>

					<li class="nav-item"><a class="nav-link" href="About.jsp">About</a></li>
					<li class="nav-item"><a class="nav-link" href="Service.jsp">Service</a></li>


					<% /* HttpSession session2=request.getSession(false);  
					UserRegister ur = (UserRegister)session.getAttribute("uname");  */
					String name= (String)request.getSession().getAttribute("uname");
					
					
			        if(name==null){%>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> Log In </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="URegister.jsp">Registration</a> <a
								class="dropdown-item" href="userLogin.jsp">Log In</a>
							<!-- <a
								class="dropdown-item" href="#">Link 3</a> -->
						</div></li>
					<%}else {%>

					<li class="nav-item" style="position: relative; left: 1019px;">
						<a class="nav-link" href="UserIcon.jsp"> <span
							class="fa fa-user text-white" style="font-size: 25px;"></span>
					</a>

					</li>

					<li class="nav-item" style="margin-left: 900px;"></li>

					<% }%>

				</ul>


			</div>


		</div>
	</nav>
</section>

<!-- nav end here -->
