<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String uname=request.getParameter("uname");
String password = request.getParameter("pass");
String email = request.getParameter("email");

Class.forName("com.mysql.jdbc.Driver");

Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","pranjal");

Statement st = co.createStatement();

ResultSet rs = st.executeQuery("select * from student where uname = '"+uname+"' and password = '"+password+"' ");

if(rs.next())
{
	String name=rs.getString("name"); 
	
	session.setAttribute("name",name);
	
	session.setAttribute("password",password);
	session.setAttribute("uname",uname);
	session.setAttribute("email",email);
		
		response.sendRedirect("studentwindow.jsp");
		
		
	
}
else 
{
out.println("ERROR: user not found");
out.println("connecting you to index page");

%>

<% 
}

co.close();
%>



</body>
</html>