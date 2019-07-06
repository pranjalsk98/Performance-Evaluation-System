<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<meta name="viewport" content="width=device-width,inital-scale=1.0">
	<script src="js/jquery-3.3.1.slim.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<style type="text/css">
.submitbutton{
    background: #2b8000f2;
    border: green;
    padding: 1%;
    border-radius: 15%;}
    </style>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="homepage.jsp"><img src="logo.png" class="logo">PES</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="homepage.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="admin-login.jsp">Admin</a>
      </li>
      <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Student
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="student-login.jsp">Login</a>
          <a class="dropdown-item" href="student-registeration.jsp">Registeration</a>
        </div>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="know-enh.jsp">Knowledge Enhancement</a>
      </li>
 		<li class="nav-item">
        <a class="nav-link" href="aboutus.jsp">About Us</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="contactu.jsp">Contact Us</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
<img src="homepageimage.jpg" class="homeimage">
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-12"> 
      <h2 class="logintop"><i class="fa fa-sign-in" aria-hidden="true"><Strong> Student Log In </strong></i></h2>
      <form action="student-login-handler.jsp" method="post" class="logininput">
      <input type="text" name="uname" placeholder="Username" class="logininputbox"><br>
      <input type="password" name="pass" placeholder="Password" class="logininputbox"><br>
	   <input type="submit" value="Login"><br><br>
      <a href="forget-password.jsp" class="btn btn-danger" role="button">Forget Password</a>
      </form>
		</div>
	</div>
</div>
	<footer>
		<div class="row end">
			<p class="end"><a href="tandc.jsp" class="endtext">Terms and Conditions </a> <a href="aboutus.jsp" class="endtext" > About Us </a> <a href="contactus.jsp"> Contact</a></p>
			<p class="end end1">Copyright <i class="fa fa-copyright" aria-hidden="true">PES 2019</i></p>
		</div>
	</footer>
</body>
</html>