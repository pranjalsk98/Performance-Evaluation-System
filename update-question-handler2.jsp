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
String newval=request.getParameter("newval");
String sno=request.getParameter("sno");

Class.forName("com.mysql.jdbc.Driver");

Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","pranjal");

Statement st = co.createStatement();

if(req.equalsIgnoreCase("q")){
	st.executeUpdate("update "+sub+"set question= '"+newval+"' where sno="+sno);
}
if(req.equalsIgnoreCase("c")){
	st.executeUpdate("update "+sub+"set correctoption= '"+newval+"' where sno="+sno);
}
if(req.equalsIgnoreCase("1")){
	st.executeUpdate("update "+sub+"set option1= '"+newval+"' where sno="+sno);
}
if(req.equalsIgnoreCase("2")){
	st.executeUpdate("update "+sub+"set option2= '"+newval+"' where sno="+sno);
}
if(req.equalsIgnoreCase("3")){
	st.executeUpdate("update "+sub+"set option3= '"+newval+"' where sno="+sno);
}
if(req.equalsIgnoreCase("4")){
	st.executeUpdate("update "+sub+"set option4= '"+newval+"' where sno="+sno);
}
response.sendRedirect("after-update-question-handler.jsp");

co.close();
%>
</body>
</html>