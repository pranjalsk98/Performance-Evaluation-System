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
    <script type="text/javascript">
      function validate(){
        var n=document.forms["form"]["number"].value;
        var pass=document.forms["form"]["password"].value;
        var pass2=document.forms["form"]["password2"].value;
        var uname=document.forms["form"]["uname"].value;
        if(n<1000000000||n>9999999999){
          alert("Number must be 10 digits");
          return false;
        }
        if(pass.length()<5||pass.length()>10){
          alert("Password must be between 5 to 10 characters");
          return false;
        }
        if(pass!=pass2){
          alert("Password must be same");
          return false;
        }
        else{
          confirm("Are you sure you want to submit?");
          return true;
        }
      }
    </script>
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
      <h2 class="logintop"><i class="fa fa-sign-in" aria-hidden="true"><Strong> Sign Up </strong></i></h2>
      <form action="signuphandler.jsp" name="form" method="post" class="logininput" onsubmit="validate()">
          <input type="text" name="name" placeholder="Name" class="logininputbox"><br>
          <input type="email" name="email" placeholder="Email" class="logininputbox"><br>
          <input type="text" name="uname" placeholder="Username" class="logininputbox"><br>
          <input type="number" name="number" placeholder="Number" class="logininputbox"><br>
          <input type="text" name="password" placeholder="Password" class="logininputbox"><br>
          <input type="text" name="password2" placeholder="Confirm Password" id="pwd2" class="logininputbox"><br>
          <span>Date of Birth :</SPAN>
                <BR>
                <select name ="DOBmonth">
                <option>Month</option>
                <option VALUE="JANUARY">JANUARY</option>
                <option VALUE="FEBRUARY">FEBRUARY</option>
                <option VALUE="MARCH">MARCH</option>
                <option VALUE="APRIL">APRIL</option>
                <option VALUE="MAY">MAY</option>
                <option VALUE="JUNE">JUNE</option>
                <option VALUE="JULY">JULY</option>
                <option VALUE="AUGUST">AUGUST</option>
                <option VALUE="SEPTEMBER">SEPTEMBER</option>
                <option VALUE="OCTOBER">OCTOBER</option>
                <option VALUE="NOVEMBER">NOVEMBER</option>
                <option VALUE="DECEMBER">DECEMBER</option>
                </SELECT>
                <select name ="DOBday">
                <option>Day</option>
                <option VALUE="1">1</option>
                <option VALUE="2">2</option>
                <option VALUE="3">3</option>
                <option VALUE="4">4</option>
                <option VALUE="5">5</option>
                <option VALUE="6">6</option>
                <option VALUE="7">7</option>
                <option VALUE="8">8</option>
                <option VALUE="9">9</option>
                <option VALUE="10">10</option>
                <option VALUE="11">11</option>
                <option VALUE="12">12</option>
                <option VALUE="13">13</option>
                <option VALUE="14">14</option>
                <option VALUE="15">15</option>
                <option VALUE="16">16</option>
                <option VALUE="17">17</option>
                <option VALUE="18">18</option>
                <option VALUE="19">19</option>
                <option VALUE="20">20</option>
                <option VALUE="21">21</option>
                <option VALUE="22">22</option>
                <option VALUE="23">23</option>
                <option VALUE="24">24</option>
                <option VALUE="25">25</option>
                <option VALUE="26">26</option>
                <option VALUE="27">27</option>
                <option VALUE="28">28</option>
                <option VALUE="29">29</option>
                <option VALUE="30">30</option>
                <option VALUE="31">31</option>
                </SELECT>
                <select name ="DOByear">
                <option>Year</option>
                <option VALUE="1985">1985</option>
                <option VALUE="1986">1986</option>
                <option VALUE="1987">1987</option>
                <option VALUE="1988">1988</option>
                <option VALUE="1989">1989</option>
                <option VALUE="1990">1990</option>
                <option VALUE="1991">1991</option>
                <option VALUE="1992">1992</option>
                <option VALUE="1993">1993</option>
                <option VALUE="1994">1994</option>
                <option VALUE="1995">1995</option>
                <option VALUE="1996">1996</option>
                <option VALUE="1997">1997</option>
                <option VALUE="1998">1998</option>
                <option VALUE="1999">1999</option>
                <option VALUE="2001">2001</option>
                <option VALUE="2002">2002</option>
                <option VALUE="2003">2003</option>
                <option VALUE="2004">2004</option>
                <option VALUE="2005">2005</option>
                <option VALUE="2006">2006</option>
                </SELECT><br>
          <span>Gender:</span><br>
          <INPUT type ="radio" name="gender" value="male">MALE
          <INPUT type ="radio" name="gender" value="female">FEMALE
          <INPUT type ="radio" name="gender" value="other">OTHER<br><br>
          <input type="submit" name="submit" value="Submit">
          <input type="reset" name="reset" value="Reset">
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