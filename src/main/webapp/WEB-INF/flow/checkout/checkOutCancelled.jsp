<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/page/navbar.jsp"%>
<%@ page isELIgnored="false"%>
<div class="container-wrapper">
	<div class="container" style="margin-bottom: 180px;">
		<section>
			<div class="jumbotron">
				<div class="container" >
				<br>
				<br>
				<br>
					<h1 class="alert alert-danger">Checkout cancelled!</h1>
					<p>Your checkout process is cancelled! You may continue shopping.</p>
				</div>
			</div>
		</section>

		<section class="container">
			<p>
				<center><a href="<c:url value="/getAllProducts" />" class="btn btn-default">Go to Products page</a></center>
			</p>
			<br>
			<br>
			<br>
		</section>
	</div>
	<div id="footer">
		<jsp:include page="/WEB-INF/page/footer.jsp"></jsp:include>
	</div>
</div>