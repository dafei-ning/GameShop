<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" type="image/x-icon"
	href="<c:url value="/resource/images/favi.png"/>" />
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/overall.css"/>">

</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">


		<div class="collapse navbar-collapse" id="myNavbar">

			<ul class="nav navbar-nav" style="vertical-align: middle">
				<li><img src=<c:url value="/resource/images/gameshopicon.png"/>
					width="150px" height="34.5px" alt="logo-image"> </img></li>

				<li><a href=" <c:url value="/index" />">Home <span
						class="glyphicon glyphicon-menu-down"></span>
				</a><i class="icon-angle-down"></i></li>
				<li><a href=" <c:url value="/getAllProducts" />">Product
						List <span class="glyphicon glyphicon-menu-down"></span>
				</a><i class="icon-angle-down"></i></li>
				<li><a href=" <c:url value="/aboutus" />">About <span
						class="glyphicon glyphicon-menu-down"></span>
				</a><i class="icon-angle-down"></i></li>
				<!-- Only admin can view this link -->
				<security:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href=" <c:url value="/admin/product/addProduct" />">Add
							Product <span class="glyphicon glyphicon-menu-down"></span>
					</a><i class="icon-angle-down"></i></li>
				</security:authorize>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<c:if test="${!empty pageContext.request.userPrincipal.name}">
					<li><a href="<c:url value="/index" />"><span
							class="glyphicon glyphicon-shopping-user"></span>Welcome
							to the Dafei Ning Gameshop! </a></li>
					<security:authorize access="hasRole('ROLE_USER')">
						<li><a href="<c:url value="/cart/getCartById" />"><span
								class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
					</security:authorize>
					<li><a href="<c:url value="/logout" />"><span
							class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				</c:if>
			</ul>


			<ul class="nav navbar-nav navbar-right">
				<c:if test="${pageContext.request.userPrincipal.name==null}">
					<li><a href="<c:url value="/login" />"><span
							class="glyphicon glyphicon-shopping-cart"></span>My Cart</a></li>
					<li><a href="<c:url value="/customer/registration" />"><span
							class="glyphicon glyphicon-log-user"></span> SignUp</a></li>
					<li><a href="<c:url value="/login" />"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	</nav>


</body>
</html>