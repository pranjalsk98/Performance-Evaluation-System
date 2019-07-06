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
.adminwindowback{
    background: url("adminwindowback.jpg");
    background-size: cover;
    padding: 0px;
}
.adminwindowcol{
    text-align: center;
    padding: 3%;
        border: 1px solid grey;
    color: #080806;
}
}
.adminwindowcol h3{
    padding: 10%;
}
.adminwindowblack{
        background: #0000005e;
    padding: 0px;
}
</style>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("uname")==null){
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
        <a class="nav-link" href="admin-login.jsp" style="font-size: 30px;"> Welcome to PES,<%=session.getAttribute("name") %></a>
      </li>
    </ul>
    <a href="admin-logout.jsp" class="btn btn-warning" role="button">Log Out</a>
  </div>
</nav>
<div class="container-fluid adminwindowback">
	<div class="container-fluid adminwindowblack">
        <div class="row">
			<div class="col-sm-2 adminwindowcol"></div>
			<div class="col-sm-4 adminwindowcol">
				<h3>Give Exam</h3>
				<a href="see-subject-list.jsp?email=<%=session.getAttribute("email") %>" class="btn btn-dark" role="button">Proceed</a>
			</div>
			<div class="col-sm-4 adminwindowcol">
				<h3>See Exam History</h3>
				<a href="del-subject.jsp" class="btn btn-dark" role="button">Proceed</a>
				<div class="col-sm-2 adminwindowcol"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-2 adminwindowcol">
			</div>
			<div class="col-sm-4 adminwindowcol">
				<h3>My Profile</h3>
				<a href="update-question.jsp" class="btn btn-dark" role="button">Proceed</a>
			</div>
			<div class="col-sm-4 adminwindowcol">
				<h3>Prepare for exam</h3>
				<a href="delete-question.jsp" class="btn btn-dark" role="button">Proceed</a>
			</div>
			<div class="col-sm-2 adminwindowcol">
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