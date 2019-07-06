<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String email=request.getParameter("email");
String password=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","pranjal");
Statement st=co.createStatement();
ResultSet rs=st.executeQuery("select * from admin where email='"+email+"' and password ='"+password+"'");
if(rs.next()){
	session.setAttribute("pass",password);
	session.setAttribute("email",email);
	response.sendRedirect("adminwindow.jsp");
}
else 
{
out.println("ERROR: user not found");
out.println("connecting you to index page");
}
co.close();
%>
</body>
</html>