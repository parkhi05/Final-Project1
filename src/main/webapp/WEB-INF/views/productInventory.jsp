<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Inventory</title>

</head>
<body>
<div class="container-wrapper">
  <div class="container">
      <div class="page-header">
          <h1><strong>Product Inventory Page</strong></h1>
              <p class="lead">This is the product inventory page</p>
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
                         
				</table>
				
          <a href="<spring:url value="/admin/addProducts" />" class="btn btn-primary">Add Product</a>
			</div>
		</div>
	</div>

</body>
</html>