<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Product</title>
</head>
<body>
<style>
h1
{
margin-top:55px;
}

</style>
	<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Detail</h1>

            <p class="lead">Here is the detail information of the product:</p>
        </div>

        <div class="container" ng-app = "cartApp">
            <div class="row">
                <div class="col-md-5">
                
				<img class="img-fluid" height="400px"
					width="240px"
					src="<c:url value="/resources/image/${product.productID}.png"/>" />

				  </div>
                <div class="col-md-5">
                
                
			
				 <h1>Product ID</h1>
				<p>${product.productID}</p>
			
	
				<h1>Product Name</h1>
				<p>${product.productName}</p>
	
		
				<h1>Product Price</h1>
				<p>${product.productPrice}</p>
		
		
				<h1>Product Description</h1>
				<p>${product.productDesc}<p>
			

					<h1>Quantity</h1>
					<input type="text" name="qty">
				
		
					
						<a href="viewProduct" class="btb btn-info">Continue Shopping</a>

        <br/>
        
       <%--   <c:set var = "role" scope="page" value="${param.role}" />
                    <c:set var = "url" scope="page" value="/product/allProducts" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if> --%>
                    
                     <p ng-controller="cartCtrl">
                        <a href="<c:url value = "${url}" />" class="btn btn-default">Back</a>
                        <a href="#" class="btn btn-warning btn-large" ng-click="addToCart('${product.productID}')"><span class="glyphicon glyphicon-shopping-cart"></span> Order Now</a>
                        <a href="<spring:url value="/cart" />" class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span> View Cart</a>
                    </p>

                </div>
            </div>
        </div>

<script src="<c:url value="/resources/js/controller.js" /> "></script>
        
</div>


</body>
</html>