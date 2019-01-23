<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="true"%>
<%@include file="header.jsp"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
			<br><br>
				<h1 align="center" >Administrator page</h1>

				<p class="lead" align="center">Welcome to the administrator page!</p>
			</div>

			<%-- <c:if test="${pageContext.request.userPrincipal.name != null}"> --%>
				<h2>
					Welcome: Admin | <a href="<c:url value="/perform_logout" />">Logout</a>
				</h2>

				<security:authorize access="hasRole('ROLE_ADMIN')">

					<h3>

						<a href="<c:url value="/allProducts"/>" class="btn btn-info">Product Inventory</a>
	

					</h3>

					<p>Click Here to Add, Modify and View the Products!</p>

					<br />
					<br />

					<h3>
						<a href="<c:url value="/admin/customer" /> " class="btn btn-info">Customer
							Management</a>
					</h3>

					<p>Click Here to view the customer information!</p>
				</security:authorize>
			<%-- </c:if> --%>
</body>
</html>