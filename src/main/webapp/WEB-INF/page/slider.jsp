<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/overall.css"/>">
	

</head>
<body>
	<!-- Slider -->
	<div class="jumbotron">
		<!-- <div id="imgDiv" class = "left"></div> -->
		<div class="container">
			<br>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>
					<li data-target="#myCarousel" data-slide-to="5"></li>
					<li data-target="#myCarousel" data-slide-to="6"></li>
					<li data-target="#myCarousel" data-slide-to="7"></li>
					<li data-target="#myCarousel" data-slide-to="8"></li>
					<li data-target="#myCarousel" data-slide-to="9"></li>
				</ol>

				<!-- slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="<c:url value="/resource/images/sliderPics/as1.jpg"/>"
							style="width: 100%;" alt="Image1">
					</div>

					<div class="item">
						<img src="<c:url value="/resource/images/sliderPics/ds1.jpg"/>"
							style="width: 100%;" alt="Image2">
					</div>

					<div class="item">
						<img src="<c:url value="/resource/images/sliderPics/ha1.jpg"/>"
							style="width: 100%;" alt="Image3">
					</div>

					<div class="item">
						<img src="<c:url value="/resource/images/sliderPics/hb1.jpg"/>"
							style="width: 100%;" alt="Image4">
					</div>

					<div class="item">
						<img src="<c:url value="/resource/images/sliderPics/mg1.png"/>"
							style="width: 100%;" alt="Image5">
					</div>
					<div class="item">
						<img src="<c:url value="/resource/images/sliderPics/oc1.jpg"/>"
							style="width: 100%;" alt="Image6">
					</div>
					<div class="item">
						<img src="<c:url value="/resource/images/sliderPics/qb1.jpg"/>"
							style="width: 100%;" alt="Image7">
					</div>
					<div class="item">
						<img src="<c:url value="/resource/images/sliderPics/tb1.jpg"/>"
							style="width: 100%;" alt="Image8">
					</div>
					<div class="item">
						<img
							src="<c:url value="/resource/images/sliderPics/witcher1.jpg"/>"
							style="width: 100%;" alt="Image9">
					</div>
					<div class="item">
						<img src="<c:url value="/resource/images/sliderPics/zelda1.png"/>"
							style="width: 100%;" alt="Image10">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<!-- <div id="imgDiv" class = "left"></div> -->
</body>
</html>