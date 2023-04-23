<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
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
  <a class="navbar-brand" href="#"><img src="https://avatars.githubusercontent.com/u/3165082?s=280&v=4" width="90" height="50" alt="" 
  class="d-inline-block align-middle mr-2"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

	

    <form class="form-inline my-2 my-lg-0">
    
	 <h3 align="right" style="color:white;">Unified Payment Dashboard</h3>
	
    </form>
  
</nav>



<section class="vh-100" style="background-color:white;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="https://www.irishparcels.ie/blog/wp-content/uploads/2022/08/pexels-anna-shvets-4482900-1.jpg"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

                <form action="Login" method="POST">

                  <div align="center">
                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                    <span class="h1 fw-bold mb-0" ><img src="https://www.tpsl-india.in/PGAdmin/Images/techprocess.jpg" width="150" height="30" alt=""></span>
                  </div>
                 <br>
               <h5><p align="center">Login into your account</p></h5>
				<p style="color:red" align="center">${error}</p>
                  <div class="form-outline mb-4">
                    <input type="text" id="form2Example17" name="login" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example17">Login ID</label>
                  </div>

                  <div class="form-outline mb-4">
                    <input type="password" id="form2Example27" name="password" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example27">Password</label>
                  </div>

                  <div class="pt-1 mb-4">
                    <button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
                  </div>

              <div  align="center">
                  <a class="small text-muted" href="#!">Forgot password?</a>
                 
                  <a href="#!" class="small text-muted">Terms of use.</a>
                  <a href="#!" class="small text-muted">Privacy policy</a>
               </div>
              
                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>



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