<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<script type="text/javascript">
	window.onload = function() {
		var bigImg = document.createElement("img");
		bigImg.src = getImgSource();
		bigImg.width = "500";
		bigImg.style = "margin-top:20px;";
		var myDiv = document.getElementById('imgDiv');
		myDiv.appendChild(bigImg);
	};

	function getImgSource() {
		var xhttp = new XMLHttpRequest();
		var url = "http://localhost:8080/AdsSystem/Ad";
		xhttp.open("GET", url, false);
		xhttp.send();
		var response = xhttp.responseText;
		var obj = JSON.parse(response);
		console.log(obj.image_url);
		return obj[0].image_url
	}
</script>

</head>
<body>
	<div class="ads ">
		<div id="imgDiv" class="adswindow"></div>
	</div>
</body>
</html>