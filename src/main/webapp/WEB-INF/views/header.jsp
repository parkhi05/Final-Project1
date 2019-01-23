<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
	
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="./resources/css/finalstyle.css">
<link rel="stylesheet" href="./resources/js/._main.js">
<link rel="stylesheet" href="./resources/js/main.js">
<style type="text/css">
</style>

<style>
footer {
	background-color: #2d2d30;
	color: #f5f5f5;
	padding: 32px;
}

footer a {
	color: #f5f5f5;
}

footer a:hover {
	color: #777;
	text-decoration: none;
}

.open .dropdown-toggle {
	color: #fff;
	background-color: #555 !important;
}

.dropdown-menu li a {
	color: #000 !important;
}

.dropdown-menu li a:hover {
	background-color: white !important;
}

.container-fluid {
	width: 100%;
}

.navbar {
	margin-bottom: 0;
	background-color: #2d2d30;
	border: 0;
	font-size: 11px !important;
	letter-spacing: 4px;
	opacity: 0.8;
}

#myimageset {
	height: 1000px;
}

.logo {
	padding-bottom: 10px;
	letter-spacing: 6px;
	margin-top: 10px;
}

#imageclass {
	margin-bottom: 17px;
}
</style>



</head>
<body>


	<nav class="navbar navbar-inverse navbar-fixed-top"> <!-- Brand/logo -->

	<a class="navbar-brand" href="final.html">
		<div class="logo">
			<img id="imageclass" src="/resources/images/finallogo.png" alt="logo"
				style="width: 40px">
	</a>
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index">TrendyStore.com</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="index">Home</a></li>
				<li><a href="<c:url value="/about" /> ">About Us</a></li>
			 <li><a href="<c:url value="/contact" /> ">Contact Us</a></li>
				
			<li><a href="<c:url value="/allProducts" /> ">All Products</a></li>

			

			</ul>
			<ul class="nav navbar-nav navbar-right">

				<c:if test="${pageContext.request.userPrincipal.name != null}">

					<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>

					<li><a href="<c:url value="/perform_logout" />">Logout</a></li>



					<security:authorize access="hasRole('ROLE_USER')">

						<li><a href="<c:url value="/user/cart" />">User Cart</a></li>

					</security:authorize>



					<security:authorize access="hasRole('ROLE_ADMIN')">

						<li><a href="<c:url value="/admin/adminHome" />">Administrator</a></li>

					</security:authorize>



				</c:if>



				<c:if test="${pageContext.request.userPrincipal.name == null}">

					<li><a href="<c:url value="/login" />">Login</a></li>

					<li><a href="<c:url value="/register" />">Register</a></li>

				</c:if>
			</ul>



		</div>
		<!-- class logo-->
	</div>
	</nav>
	</div>

</body>
</html>