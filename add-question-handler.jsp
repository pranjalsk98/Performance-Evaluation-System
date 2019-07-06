<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body background="backbackground.jpg" opacity=0.3>

<%


Class.forName("com.mysql.jdbc.Driver");

Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","pranjal");

Statement st = co.createStatement();
String sub=request.getParameter("sub");
String sno = request.getParameter("sno");
String que = request.getParameter("question");
String opt11 = request.getParameter("option1.1");
String opt12 = request.getParameter("option1.2");
String opt13 = request.getParameter("option1.3");
String opt14 = request.getParameter("option1.4");
String coropt1 = request.getParameter("1correctoption");

st.executeUpdate("insert into "+sub+" values('"+sno+"','"+que+"','"+opt11+"','"+opt12+"','"+opt13+"','"+opt14+"','"+coropt1+"')");	
response.sendRedirect("after-add-question-handler.jsp");

co.close();
%>


</body>
</html>