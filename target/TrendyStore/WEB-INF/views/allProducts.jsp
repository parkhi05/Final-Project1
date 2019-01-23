<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title> All Products</title>
</head>

<body>


	<hr>
	<hr>
	<div class="container">
	<h2 align="center">Displaying All Products</h2>
	</div>
	

		<div class="container-fluid">
			<div style="overflow-x: auto;">
			  <table class="table table-hover">
					<thead>
						<tr>
							<th>Product ID</th>

							<th>Product Name</th>
							<th>Product Price</th>
							<th>Product Desc</th>
							<th>Product Image</th>
							<th>Product Quantity</th>
							<th>More Info </th>
							</th>
						</tr>

					</thead>
					 <tbody>
  

					<c:forEach var="product" items="${allProducts}">
						<tr>
						   
							<td>${product.productID}</td>
							<td>${product.productName}</td>
							<td>${product.productPrice}</td>
							 <td>${product.productDesc} </td>
						    <td>
						    
						    <img class="img-fluid" height="40px" width="40px" 
						    src="<c:url value="/resources/image/${product.productID}.png"/>"/>
						    
						    </td>
						    <td>${product.productQty}
						    </td> 
						   <td>
						   <a href="<c:url value='/viewProduct/${product.productID}' />"><span  class="glyphicon glyphicon-info-sign"></span></a>
			               </td>
			                 
			               <td>
			               <a href="<c:url value='/admin/updateProduct/${product.productID}' />"><span  class="glyphicon glyphicon-pencil"></span></a>
			               </td>
			                <td>
			               <a href="<c:url value='/admin/deleteProduct/${product.productID}' />"><span  class="glyphicon glyphicon-remove"></span></a>
			               </td>
	</tr>
					</c:forEach>
                      </td>
                         <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/addProduct" />
                    </c:if>
				</table>
				

			</div>
		</div>
	</div>


</body>

</html>