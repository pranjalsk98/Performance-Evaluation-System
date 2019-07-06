<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%@ page import="java.util.*" %>
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
.subjectlisttable td{
    font-size: 40px;
    padding: 0 40% 0 40%;
}
.subjectlisttable{
    text-align: center;
}
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

<% 
String z=request.getParameter("y");

String sub=request.getParameter("sub");

session.setAttribute("subject",z);

session.setAttribute("subject1",sub);
%>
				<h1>Please add question for <%=sub%> here</h1>
					<form action="add-question-handler.jsp?sub=<%=sub %>" method="post">

						<span>SERIAL NUMBER</span>
						<input type="text" name="sno" style="height:50px;width:50px"><br><br>
						<span>QUESTION </span>
						<input type="text" name="question" style="height:50px;width:100%" ><br><br>
						<span>OPTION 1</span>
						<input type="text" name="option1.1" style="height:50px;width:50%"><br><br>
						<span>OPTION 2</span>
						<input type="text" name="option1.2" style="height:50px;width:50%"><br><br>
						<span>OPTION 3</span>
						<input type="text" name="option1.3" style="height:50px;width:50%"><br><br>
						<span>OPTION 4</span>
						<input type="text" name="option1.4" style="height:50px;width:50%"><br><br>
						<span>CORRECT OPTION</span>
						<input type="text" name="1correctoption" style="height:50px;width:50%"><br><br>
					    <input type="submit" value="Submit"><br><br>
				    </form>
						
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