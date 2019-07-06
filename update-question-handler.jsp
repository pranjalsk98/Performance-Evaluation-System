<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("email")==null){
	response.sendRedirect("homepage.jsp");
}
%>
<%
String sub=request.getParameter("sub");
String req=request.getParameter("req");
String sno=request.getParameter("sno");

Class.forName("com.mysql.jdbc.Driver");

Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","pranjal");

Statement st = co.createStatement();
if(req.equalsIgnoreCase("q")){
%>
 <form action="update-question-handler2.jsp?sub=<%=sub %>&req=<%=req %>" method="post">
 <h3>Enter New Question:</h3>
 <input type="text" name="newval">
 <input type="submit" value="Submit">
 </form>
<%
}
else if(req.equalsIgnoreCase("c")){
%>
<form action="update-question-handler2.jsp?sub=<%=sub %>&req=<%=req %>" method="post">
 <h3>Enter New correct option:</h3>
 <input type="text" name="newval">
 <input type="submit" value="Submit">
 </form>
 <%
}
else if(req.equalsIgnoreCase("1")){
%>
<form action="update-question-handler2.jsp?sub=<%=sub %>&req=<%=req %>" method="post">
 <h3>Enter New option:</h3>
 <input type="text" name="newval">
 <input type="submit" value="Submit">
 </form>
  <%
}
else if(req.equalsIgnoreCase("2")){
%>
<form action="update-question-handler2.jsp?sub=<%=sub %>&req=<%=req %>" method="post">
 <h3>Enter New option:</h3>
 <input type="text" name="newval">
 <input type="submit" value="Submit">
 </form>
  <%
}
else if(req.equalsIgnoreCase("3")){
%>
<form action="update-question-handler2.jsp?sub=<%=sub %>&req=<%=req %>" method="post">
 <h3>Enter New option:</h3>
 <input type="text" name="newval">
 <input type="submit" value="Submit">
 </form>
  <%
}
else if(req.equalsIgnoreCase("4")){
%>
<form action="update-question-handler2.jsp?sub=<%=sub %>&req=<%=req %>" method="post">
 <h3>Enter New option:</h3>
 <input type="text" name="newval">
 <input type="submit" value="Submit">
 </form>
<%
}
else{
	out.println("Wrong choice");
}
co.close();
%>
</body>
</html>