<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   
    <%@ include file="header.jsp"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Product</title>
</head>
<body>
<div class="container">
<div class="page-header">
		<hr><hr>
			<h1 align="center">Update Products</h1>
			<h2 align="center"><strong>Welcome, Enter The Product Details</strong></h2>
		</div>

		<div align="center">

			<table border="1" width="90%">
				<form:form action="${pageContext.request.contextPath}/admin//updateProduct"
					method="post" commandName="product" enctype="multipart/form-data">

					<div class="form-group">


						<label for="name">Product Name</label> <form:input
							path="ProductName" id="name" class="form-control" />
					</div>
					<div class="form-group">
						<label for="id">Product ID</label> <form:input path="productID"
							id="id" class="form-control" readonly="true"/>
					</div>
					<div class="form-group">
						<label for="price">Product Price</label> <form:input
							path="ProductPrice" id="price" class="form-control" />
					</div>
					<div class="form-group">
						<label for="desc">Product Description</label>
						<form:textarea path="productDesc" id="desc" class="form-control" />
					</div>
					
					<div class="form-group">
						<label for="qty">Product Quantity</label>
						<form:textarea path="productQty" id="qty" class="form-control" />
					</div>
					
						<div class="form-group">
							<label for="productImage">Upload File</label> <form:input type="file"
								class="form-control-file" id="productImage" path="productImage" />
						</div>
						<td align="center"><input type="submit" value="updateProduct"
						class="btn btn-info" /></td>

				</form:form>
				
				
			</table>
			
		</div>



</div>

</body>
</html>