<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>   
<title>MyShopping Site</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
   
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="./resources/css/finalstyle.css">
<link rel="stylesheet" href="./resources/js/._main.js">
<link rel="stylesheet" href="./resources/js/main.js">
 <style type = "text/css">


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

.container-fluid
{
    width:100%;

}
.navbar {
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.8;

}
#myimageset
{
height:1000px;

}
.logo
{
padding-bottom:10px;
letter-spacing: 6px;
margin-top:10px;

}
#imageclass
{
 margin-bottom:17px;
}

  </style>

	</head>
 
  <body>


 
  
  <!-- carousel -->
  


 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
<div class="container-fluid">
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
	
        <img id = "myimageset" src="./resources/image/img6.jpg" alt="pic3" width="100%" height="100%">
      </div>

      <div class="item">
        <img id = "myimageset" src="./resources/image/img5.jpg" alt="pic2"  width="100%">
      </div>
    
      <div class="item">
        <img id = "myimageset"src="./resources/image/img7.jpg" alt="pic 1"  width="100%"  height="100%">
      </div>
	 
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

<hr></hr>
<div class="container">			
 <div class="col-sm-3 text-left"> 										 

      <img src="./resources/image/gown.jpg" class="rounded" height= "225px" width="225px" alt= "Indian">
      
    </div>

    <div class="col-sm-3 text-left"> 	
      <img src="./resources/image/top.jpg" class="rounded" height= "225px" width="225px"alt="Top">
    
        
    </div>

   <div class="col-sm-3 text-left"> 	
      <img src="./resources/image/jeans.jpg" class="rounded" height= "225px" width="225px" alt="Jeans">
  
    
  </div>
  
  <div class="col-sm-3 text-left"> 	
      <img src="./resources/image/saree.jpg"height= "225px" width="225px" alt="Indian">
  </div>
    
  </div> <!--container inner -->
  
  
  <hr>
  

  <div class="container">
   <div class="images">	 
       <div class="col-md-4"> 
        
	  
  <img src="./resources/image/new.jpg" class="img-circle" alt="New Arrival" width="200" height="150"> 
  <p align="center-left"><a href="#">New Arrivals</p>

   </div>
  
   <div class="col-md-4">     
  <img src="./resources/image/top10.jpg" class="img-circle" alt="Cinque Terre" width="200" height="150"> 
  <p><a href="# ">Top 10</p>
  </div>
  
   <div class="col-md-4">     
  <img src="./resources/image/sale.jpg" class="img-circle" alt="Cinque Terre" width="200" height="150"> 
  <p><a href="#">Top Sale</p>
  </div>
  
  </div> <!--images -->
  </div> <!--container width="304" height="236" -->

  <hr><hr>
		   
		      <!-- footer -->
			  <footer class="text-left">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title=" Drag to Top Page">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <div class= "col-sm-5">
  <p>&copy all rights reserved <a href="index" data-toggle="tooltip" title="Visit Online Shopping Site">Online Shopping Home Page</a></p> 
</div>
<div class="col-sm-3">
<p><a href= "privacy">Privacy</p></a>
  
  </div>
  <div class="col-sm-4">
<p text-align="center"><a href="termandcond">Terms and conditions</p></a>
  
  </div>
  
  </footer>
   </div>

    </div>
	

</div>

  </div>

<script>
$(document).ready(function(){
    // Initialize Tooltip
    $('[data-toggle="tooltip"]').tooltip(); 
})
</script>


</body>


</html>
  
  
  