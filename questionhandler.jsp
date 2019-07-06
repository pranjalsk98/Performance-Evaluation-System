<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String subject= request.getParameter("subject");

Class.forName("com.mysql.jdbc.Driver");

Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","pranjal");

Statement st = co.createStatement();

ResultSet rs=st.executeQuery("select * from "+subject);
int count=0;
while(rs.next()){
	count=count+1;
}
String[] arr=new String[count];
ResultSet rd=st.executeQuery("select * from "+subject);
while(rd.next()){
	String str="answer"+rd.getInt("sno");
	arr[rd.getInt("sno")-1]= request.getParameter(str);
}
ResultSet ra=st.executeQuery("select * from "+subject);
int marks=0;
while(ra.next()){
	String ans=arr[ra.getInt("sno")-1];
	String op=ra.getString(ans);
	String ca=ra.getString("correctoption");
	if(ca.equalsIgnoreCase(op)){
		marks=marks+1;
	}
}
co.close();
session.setAttribute("subject",subject);
session.setAttribute("marks",marks);
session.setAttribute("count",count);
response.sendRedirect("exam-message.jsp");

%>
</body>
</html>

