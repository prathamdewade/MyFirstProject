<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<%@include file="includes/head.jsp"%>
<style>
a {
	font-size: 15px;
	font-family: 'Roboto Condensed', sans-serif;
}

a:hover {
	/* background-color: green; */
	color: green !important;
}

#nilu h1 {
	text-align: justify;
	text-align: center;
	font-family: Stencil;
}

#nilu p {
	text-align: center;
}

body {
	background-color: lightgray;
}

#akash {
	font-family: Bodoni MT Black;
}

h1 {
	margin-top: px;
}
</style>
</head>
<body>
	<!-- navbar -->
	<%@include file="includes/navbar.jsp"%>
	<!-- nav end here -->

	<section id="nilu">
		<div>
			<br>
			<br>
			<h1>OUR VISION</h1>
			<br>
			<p>
				Agri Marketplace’s vision is to become the largest agricultural
				fair-trade platform,<br> connecting farmers to industrial all
				around the world
			</p>
		</div>
		<div>
			<br>
			<br>
			<h1>OUR MISSION</h1>
			<br>
			<p>
				Agri Marketplace’s mission is to become THE global reference for
				DIGITAL agricultural food crop transactions <br> through a
				complete PLATFORM solution
			</p>
		</div>
		<br>
		<br>
		<div>
			<h1>OUR FOCUS & EXPERIENCE</h1>
			<br>
			<p>
				Agri Marketplace is a group of experts who leverage their knowledge
				& experience in Farming, Industry Procurement, <br> Digital
				Business, and Disruptive Innovation at all times. We aim at
				redistributing value through the agriculture supply <br> chain,
				to do so requires us to be agile, reliable and transparent. We
				promote these values throughout all of our actions,<br>
				operations and services.
			</p>
		</div>
		<br>
		<br>
		<div>
			<h1>KNOW-YOUR-CUSTOMER</h1>
			<br>
			<p>
				Know-Your-Customer (KYC) is the process we use to verify the
				identity and origin of finance of users in our digital market place.
				Thus,<br> preventing any money laundering and the financing of
				terrorist activities over our platform, whilst creating a network
				with only trustworthy <br> agricultural buyers and sellers.
			</p>
		</div>
		<br>
		<br>
		<div class="row m-0">
			<div class="col-md-6">
				<h3 class="text-center" id="akash">KYC FOR SELLERS</h3>
				<p>Seller accounts are verified by Agri MP and our partners.
					They are responsible for reviewing the company's registration
					document, proof of I.D. and user residence, and proof of company
					IBAN issues by that seller's bank</p>
			</div>
			<div class="col-md-6">
				<h3 class="text-center" id="akash">KYC FOR BUYERS</h3>
				<p>Buyer accounts are verified by Agri MP and our partners. The
					buyer KYC process is equal to the seller’s, but is not mandatory
					unless the buyer want to retract funds from his Agri MP wallet.</p>
			</div>
		</div>
		<br>
		<br>
		<div>
			<h1>CERTIFIED B CORPORATION</h1>
			<br>
			<p>
				The B Corporations are a new kind of business that balances purpose
				and profit. They are legally <br> required to consider the
				impact of their decisions on their workers, customers, suppliers,
				community,<br> and the environment. This is a community of
				leaders, driving a global movement of people using <br>
				business as a force for good.
			</p>
		</div>
	</section>

	<!-- footer -->
	<%@include file="includes/footer.jsp"%>
</body>
</html>