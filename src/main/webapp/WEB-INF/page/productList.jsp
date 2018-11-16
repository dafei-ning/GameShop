<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!-- 	navigation Bar -->
<%@ include file="navbar.jsp"%>
<%-- <%@ include file="slider.jsp"%>  --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Games and Consoles | offered by your friends</title>
<link rel="icon" type="image/x-icon"
	href="<c:url value="/resource/images/favi.png"/>" />
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/ProductList.css"/>">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resource/js/productController.js"/>"></script>
</head>
<body ng-app="myapp">


	<!-- Product list Slider -->
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
	
	<!-- Product list -->
	<div class="container" style="margin: 0 auto">
		<div id="product_list" style="margin: 0 auto; padding-bottom: 200px;">
			<h2 style="margin-top: 50px; color: #505763'">Game List</h2>
			<p style="color: #505763">Here you can select the games you want and add them to cart before processing to order web flow.</p>
			<table class="table table-hover" id="productList">
				<thead>
					<tr>
						<th>Screen-Shot</th>
						<th>ID</th>
						<th>Console</th>
						<th>Game</th>
						<th>Price</th>
						<th>Stock</th>
						<th>Description</th>
						<th>Genre</th>
						<th>View <security:authorize access="hasRole('ROLE_USER')">
						/Add to Cart
					</security:authorize> <!-- views only to the admin --> <security:authorize
								access="hasRole('ROLE_ADMIN')">
						/Edit/Delete
					</security:authorize>
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${products}" var="prod">
						<tr>
							<td style="width: 125px"><img src="/Games/${prod.id}.jpg" style="width: 80px; height: 80px;" /></td>
							<td style="width: 25px">${prod.id}</td>
							<td style="width: 50px; margin: 0 auto">${prod.productCategory}</td>
							<td style="width: 200px">${prod.productName}</td>
							<td style="width: 50px">${prod.productPrice}</td>
							<td style="width: 50px">${prod.unitStock}</td>
							<td style="width: 420px">${prod.productDescription}</td>
							<td style="width: 80px">${prod.productManufacturer}</td>
							<td style="width: 200px" ng-controller="myController">
							<a
								href="getProductById/${prod.id}" class="btn btn-info"
								role="button"> <span class="glyphicon glyphicon-info-sign"></span>
							</a>  
							<!-- view only for user -->
							<security:authorize
									access="hasRole('ROLE_USER')">
									<a href="#" ng-click="addToCart(${prod.id})"
										class="btn btn-primary" style="margin-left: 5px"> <span
										class="glyphicon glyphicon-shopping-cart"></span>
									</a>
							</security:authorize> 
							<!-- view only to the admin --> 
							<security:authorize
									access="hasRole('ROLE_ADMIN')">
									<a href="admin/product/editProduct/${prod.id}"
										class="btn btn-success" style="margin-left: 5px"> <span
										class="glyphicon glyphicon-edit"></span></a>
									<a href="admin/delete/${prod.id}" class="btn btn-danger"
										style="margin-left: 5px"> <span
										class="glyphicon glyphicon-trash"></span></a>
							</security:authorize></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<div id="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>