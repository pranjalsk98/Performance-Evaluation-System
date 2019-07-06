<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Welcome Admin</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<meta name="viewport" content="width=device-width,inital-scale=1.0">
	<script src="js/jquery-3.3.1.slim.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<style type="text/css">
.addsubjectsbox{
    text-align:center;
    color: white;
    padding: 5% 15% 5% 15%;
}
.addsubjectsbox a{
    color: white;
    text-decoration: none;
}
.addsubjectsbox a:hover{
    color: white;
    text-decoration: none;
    background: yellow;
}
.adminwindowback{
    background: url("adminwindowback.jpg");
    background-size: cover;
    padding: 0px;
}
.adminwindowblack{
        background: #0000005e;
    padding: 0px;
}
.submitbutton{
    background: #2b8000f2;
    border: green;
    padding: 1%;
    border-radius: 15%;}
</style>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("email")==null){
	response.sendRedirect("homepage.jsp");
}
%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.jsp"><img src="logo.png" class="logo">PES</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="admin-login.jsp" style="font-size: 30px;"> Welcome to PES,Admin</a>
      </li>
    </ul>
    <a href="admin-logout.jsp" class="btn btn-warning" role="button">Log Out</a>
  </div>
</nav>
<div class="container-fluid adminwindowback">
	<div class="container-fluid adminwindowblack">
		<div class="row">
			<div class="col-sm-12 addsubjectsbox">
				<p>
					<h1>Add Subjects</h1>
<%
String sub=request.getParameter("x");

if(sub.equalsIgnoreCase("1"))
{
%>
					<form action="add-subject-handler.jsp?subject=1" method="post">
						<span>Subject 1</span>
						<input type="text" name="subject1"><br><br>
						<input type="submit" value="Submit" class="submitbutton"><br><br>
						<a href="add-subject.jsp" class="btn btn-warning" role="button">Back</a>
					</form>
<%
}
else if(sub.equalsIgnoreCase("2"))
{
%>
					<form action="add-subject-handler.jsp?subject=2" method="post">
						<span>Subject 1</span>
						<input type="text" name="subject1"><br><br>
						<span>Subject 2</span>
						<input type="text" name="subject2"><br><br>
						<input type="submit" value="Submit" class="submitbutton"><br><br>
						<a href="add-subject.jsp" class="btn btn-warning" role="button">Back</a>
					</form>
					<%
}
else if(sub.equalsIgnoreCase("3"))
{
%>
					<form action="add-subject-handler.jsp?subject=3" method="post">
						<span>Subject 1</span>
						<input type="text" name="subject1"><br><br>
						<span>Subject 2</span>
						<input type="text" name="subject2"><br><br>
						<span>Subject 3</span>
						<input type="text" name="subject3"><br><br>
						<input type="submit" value="Submit" class="submitbutton"><br><br>
						<a href="add-subject.jsp" class="btn btn-warning" role="button">Back</a>
					</form>
<% 
}
else if(sub.equalsIgnoreCase("4"))
{
%>
					<form action="add-subject-handler.jsp?subject=4" method="post">
						<span>Subject 1</span>
						<input type="text" name="subject1"><br><br>
						<span>Subject 2</span>
						<input type="text" name="subject2"><br><br>
						<span>Subject 3</span>
						<input type="text" name="subject3"><br><br>
						<span>Subject 4</span>
						<input type="text" name="subject4"><br><br>
						<input type="submit" value="Submit" class="submitbutton"><br><br>
						<a href="add-subject.jsp" class="btn btn-warning" role="button">Back</a>
					</form>
					<% 
}
else if(sub.equalsIgnoreCase("5"))
{
%>
					<form action="add-subject-handler.jsp?subject=5" method="post">
						<span>Subject 1</span>
						<input type="text" name="subject1"><br><br>
						<span>Subject 2</span>
						<input type="text" name="subject2"><br><br>
						<span>Subject 3</span>
						<input type="text" name="subject3"><br><br>
						<span>Subject 4</span>
						<input type="text" name="subject4"><br><br>
						<span>Subject 5</span>
						<input type="text" name="subject5"><br><br>
						<input type="submit" value="Submit" class="submitbutton"><br><br>
						<a href="add-subject.jsp" class="btn btn-warning" role="button">Back</a>
					</form>
					<%
}
else 
{
%>
can't find any thing
<%} %>
				</p>
			</div>
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