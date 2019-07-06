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
int sno = Integer.parseInt(request.getParameter("sno"));
String sub=request.getParameter("sub");

Class.forName("com.mysql.jdbc.Driver");

Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","pranjal");

Statement st = co.createStatement();

st.executeUpdate("delete from "+sub+" where sno='"+sno+"'");
response.sendRedirect("after-delete-question-handler.jsp");

co.close();
%>
</body>
</html>