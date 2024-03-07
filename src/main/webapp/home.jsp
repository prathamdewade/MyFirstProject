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
<style>
a {
	font-size: 15px;
	font-family: 'Roboto Condensed', sans-serif;
}

a:hover {
	/* background-color: green; */
	color: green !important;
}
</style>
</head>

<body>
	<!-- navbar -->
	<%@include file="includes/navbar.jsp"%>
	<!-- nav end here -->
	<img alt="" src="'image/Group Photo.jpg'">
	<!-- carousel start here -->
	<section>
		<div id="demo" class="carousel slide" data-ride="carousel">
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="https://media.istockphoto.com/id/806276128/photo/farmer-ploughing-rice-field-at-sunrise.jpg?s=612x612&w=0&k=20&c=t5IUOH9GWrI1lAz4gXPJnwjR9WUxQxdmSnIJxk_XDiQ="
						alt="Los Angeles" width="100%" height="500">
					<div class="carousel-caption">
						<h3>Los Angeles</h3>
						<p>We had such a great time in LA!</p>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="https://c4.wallpaperflare.com/wallpaper/674/65/161/farm-farmers-water-drops-rice-wallpaper-preview.jpg"
						alt="Chicago" width="100%" height="500">
					<div class="carousel-caption">
						<h3>Chicago</h3>
						<p>Thank you, Chicago!</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="https://wallpaperaccess.com/full/4293102.jpg"
						alt="New York" width="100%" height="500">
					<div class="carousel-caption">
						<h3>New York</h3>
						<p>We love the Big Apple!</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- body Start here -->


	<section class="mt-3 d-flex " width="100%">
		<div class="col-md-6">
			<img
				src="https://gumlet.assettype.com/swarajya%2F2020-07%2Fd27080f2-2655-4694-90bb-6a1a57805038%2Fsowing.jpg?w=1200&auto=format%2Ccompress&ogImage=true"
				alt="" class="rounded" style="height: 325px; width: 100%;">
		</div>
		<div class="col-md-6 d-inline-block">
			<div class="p-3">
				<h1 class="my-3">About Our Farmer</h1>
				<p class="text-justify">Farmers are hardworking individuals who
					cultivate crops, raise livestock, and produce food and agricultural
					products. They possess knowledge and skills in various areas of
					agriculture, adapt to changing conditions, manage risks, and
					practice sustainable farming techniques. Farmers play a vital role
					in ensuring food security, rural development, and environmental
					stewardship. They face challenges such as weather variability,
					market fluctuations, and rising costs but continue to embrace new
					technologies and innovations to improve productivity. Farmers
					contribute to their communities and form close-knit farming
					networks, promoting knowledge sharing and support within the
					agricultural sector.</p>
				<a href="AboutOurFarmers.jsp" class="btn btn-dark">Read More</a>
			</div>
		</div>
	</section>

	<section class="mt-3 d-flex flex-row-reverse" width="100%">
		<div class="col-md-6">
			<img
				src="https://pixahive.com/wp-content/uploads/2020/12/A-farmer-with-farming-machine-229438-pixahive.jpg"
				alt="" class="rounded" alt="" class="rounded"
				style="height: 325px; width: 100%;">
		</div>
		<div class="col-md-6 d-inline-block">
			<div class="p-3">
				<h1 class="my-3">Our Fields</h1>
				<p class="text-justify">It is a long established fact that a
					reader will be distracted by the readable content of a page when
					looking at it's layout. The point of using Lorem Ipsum is that it
					has a more-or-less normal distribution of letters, as opposed to
					using 'Content here, content here', making it look like readable
					English. Many desktop publishing packages and</p>
				<a href="OurField.jsp" class="btn btn-dark">Read More</a>
			</div>
		</div>
	</section>

	<section class="mt-3 d-flex" width="100%">
		<div class="col-md-6 row ml-2">
			<img
				src="https://cdn.mos.cms.futurecdn.net/iC7HBvohbJqExqvbKcV3pP.jpg"
				alt="" class="rounded" style="height: 325px; width: 50%;"> <img
				src="https://images.pexels.com/photos/533280/pexels-photo-533280.jpeg?cs=srgb&dl=pexels-pixabay-533280.jpg&fm=jpg"
				alt="" class="rounded" style="height: 325px; width: 50%;">

		</div>
		<div class="col-md-6 d-inline-block">
			<div class="p-3">
				<h1 class="my-3">Foods And Vegetables</h1>
				<p class="text-justify">In farming, the cultivation of foods and
					vegetables is an essential component. Here's a short description of
					each: Both foods and vegetables in farming require suitable growing
					conditions, appropriate soil management, irrigation, pest control,
					and harvesting techniques. Farmers play a vital role in ensuring
					the successful production of these crops, which contribute to food
					security and the availability of fresh, nutritious produce for
					local and global consumption.</p>
				<a href="FoodsAndVegetables.jsp" class="btn btn-dark">Read More</a>
			</div>
		</div>
	</section>


	<!-- footer -->

	<%@include file="includes/footer.jsp"%>
</body>

</html>