<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>  
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">

    <title>Welcome to Worldline</title>
	
	
	
  </head>
 <body class="d-flex flex-column min-vh-100">
  <nav class="navbar navbar-light navbar-expand-lg" style="background-color:  #47beaa;">
  <a class="navbar-brand" href="#"><img src="https://www.tpsl-india.in/PGAdmin/Images/techprocess.jpg" width="150" height="30" alt="" 
  class="d-inline-block align-middle mr-2"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
     
	        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Merchant Master
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Merchant Configuration</a>
          <a class="dropdown-item" href="#">Auto Routing Submerchant</a> 
           <a class="dropdown-item" href="#">Auto Routing Bank</a>
        </div>
      </li>
	  
	  
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Report Module
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		  <a class="dropdown-item" href="#">Query Processor</a>
          <a class="dropdown-item" href="#">Merchant Txn Status Report</a>
          <a class="dropdown-item" href="#">Merchant Txn Report</a>
           <a class="dropdown-item" href="#">Merchant Refund Report</a>
        </div>
      </li>
	  
	        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Operation Activity
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Refund Download</a>
          <a class="dropdown-item" href="#">Bulk Refund Upload</a>
           <a class="dropdown-item" href="OfflineRefund">Offline Refund</a>
        </div>
      </li>
	  
      
    </ul>
	
	
	

    <form class="form-inline my-2 my-lg-0">
    
	<a class="btn btn-light" href="/Logout" role="button" style="color:#47beaa;"><i class="bi bi-power"></i>Logout</a>
	
    </form>
  </div>
</nav>
&nbsp;
<br>

<h5 align="center" style="color:#47beaa;">Offline Refund</h5>
<br>
<p style="color:red" align="center">${error}</p>
<div class="h-100 d-flex align-items-center justify-content-center">

<br>
<form class="form-inline align-items-center" action="OfflineRefund" method="POST">
  
  <label class="sr-only" for="inlineFormInputName2">Merchant Code</label>
  <input type="text" class="form-control mb-2 mr-sm-2" name="merchant_code" id="merchant_code" placeholder="Enter Merchant Code" required>

  <label class="sr-only" for="inlineFormInputGroupUsername2">Transaction ID</label>
  <input type="text" class="form-control mb-2 mr-sm-2" name="transaction_id" id="transaction_id" placeholder="Enter Transaction ID" required>

  <label class="sr-only" for="inlineFormInputGroupUsername2">Refund Amount</label>
  <input type="text" class="form-control mb-2 mr-sm-2" name="refund_amount" id="refund_amount" placeholder="Enter Refund Amount" required>

  <button type="submit" class="btn btn-primary mb-2">Submit</button>

</form>

    

</div>

<!--<form:select path="OfflineRefundFormBean" items="${departmentList}" itemValue="merchant_code" itemLabel="transaction_id" class="form-select" aria-label=".form-select-lg example"/></td> -->
        


  <footer class="text-white text-center text-lg-start bg-dark fixed-bottom">
   
    <!-- Copyright -->
    <div class="text-center p-3" style="background-color:  #47beaa;">
      © 2023 Copyright:
      <a class="text-white" href="https://worldline.com/en/home.html">Worldline.com</a>
    </div>
    <!-- Copyright -->
  </footer>

<!-- End of .container -->


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>