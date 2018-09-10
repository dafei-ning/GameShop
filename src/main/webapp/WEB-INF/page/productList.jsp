<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!-- 	navigation Bar -->
<%@ include file="navbar.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Management</title>
<link rel="icon" type="image/x-icon"
	href="<c:url value="/resource/images/favicon.png"/>" />
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
				</ol>

				<!-- slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="<c:url value="/resource/images/pixel.jpg"/>" style="width:100%;" alt="Image1">
					</div>

					<div class="item">
						<img src="<c:url value="/resource/images/iphone.jpg"/>" style="width:100%;" alt="Image2" >
					</div>

					<div class="item">
						<img src="<c:url value="/resource/images/oppo2.jpg"/>" style="width:100%;" alt="Image3">
					</div>

					<div class="item">
						<img src="<c:url value="/resource/images/samsung.jpg"/>" style="width:100%;" alt="Image4">
					</div>

					<div class="item">
						<img src="<c:url value="/resource/images/buy.jpg"/>" style="width:100%;" alt="Image5">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	

	<!-- Product list -->
	<div class="container">
		
		<!-- style="width: 1200px; margin-bottom: 180px;" -->


		<h2>Product Management</h2>
		<p>The List of Products in our Database</p>
		<table class="table table-hover" id="productList">
			<thead>
				<tr>
					<th>Screen-Shot</th>
					<th>Product Id</th>
					<th>Category</th>
					<th>Product Name</th>
					<th>Products Price</th>
					<th>Stock Unit</th>
					<th>Description</th>
					<th>Manufacturer</th>
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
						<td style="width: 171px"><img src="/products/${prod.id}.jpg"
							style="width: 100px; height: 90px;" /></td>
						<td>${prod.id}</td>
						<td>${prod.productCategory}</td>
						<td>${prod.productName}</td>
						<td>${prod.productPrice}</td>
						<td>${prod.unitStock}</td>
						<td style="width: 180px">${prod.productDescription}</td>
						<td>${prod.productManufacturer}</td>
						<td ng-controller="myController"><a
							href="getProductById/${prod.id}" class="btn btn-info"
							role="button"> <span class="glyphicon glyphicon-info-sign"></span>
						</a> <!-- view only for user --> <security:authorize
								access="hasRole('ROLE_USER')">
								<a href="#" ng-click="addToCart(${prod.id})"
									class="btn btn-primary" style="margin-left: 5px"> <span
									class="glyphicon glyphicon-shopping-cart"></span>
								</a>
							</security:authorize> <!-- view only to the admin --> <security:authorize
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
	<div id="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>