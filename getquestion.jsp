<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%@ page import="java.util.*" %>
    <%@page import="java.util.Date"%>
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
.questionpaper{
    border: 2px solid black;
    margin-top: 5%;
    margin-bottom: 5%;}
</style>
<script type="text/javascript">
function submitexam(){
	confirm("Are you sure you want to submit?");
}
</script>
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
 <div class="col-sm-2"></div>
			<div class="col-sm-8 addsubjectsbox questionpaper">
				<p>
<%
String sub=request.getParameter("subject");
session.setAttribute("subject",sub);

Class.forName("com.mysql.jdbc.Driver");

Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","pranjal");

Statement st = co.createStatement();

ResultSet rs=st.executeQuery("select * from "+sub);
%> 
<form action="questionhandler.jsp" method="post" onsubmit="submitexam()">
<%
while(rs.next()){
	
%>
<div class="row">
						
						<div class="col-sm-12 question" style="font-size: 40px;">
							Q<%=rs.getInt("sno") %>. <%=rs.getString("question") %>?
						</div>
						
					</div>
					<div class="row">
						
						<div class="col-sm-6 option" style="font-size: 25px;">
							1. <%=rs.getString("option1") %>
						</div>
						<div class="col-sm-6 option" style="font-size: 25px;">
							2. <%=rs.getString("option2") %>
						</div>
						
					</div>
					<div class="row">
						
						<div class="col-sm-6 option" style="font-size: 25px;">
							3. <%=rs.getString("option3") %>
						</div>
						<div class="col-sm-6 option" style="font-size: 25px;">
							4. <%=rs.getString("option4") %>
						</div>
					</div>
					<div class="row">
						
						<div class="col-sm-12 option" style="font-size: 25px;">
						<br>
							<input type="radio" name="answer<%=rs.getInt("sno") %>" value="option1">Option 1
							<input type="radio" name="answer<%=rs.getInt("sno") %>" value="option2">Option 2
							<input type="radio" name="answer<%=rs.getInt("sno") %>" value="option3">Option 3
							<input type="radio" name="answer<%=rs.getInt("sno") %>" value="option4">Option 4
						</div>
					</div>
								 <%
			 }
%>
			<input type="submit" value="Submit">
			</form>
 			<%
			 co.close();
			 %>
				</p>
			</div>
			 <div class="col-sm-2"></div>

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