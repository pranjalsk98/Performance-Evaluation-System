
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
String subject=request.getParameter("subject");

String e=(String)session.getAttribute("email_id");

String subject1=request.getParameter("subject1");
String subject2=request.getParameter("subject2");
String subject3=request.getParameter("subject3");
String subject4=request.getParameter("subject4");
String subject5=request.getParameter("subject5");

Class.forName("com.mysql.jdbc.Driver");

Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","pranjal");

Statement st= co.createStatement();
ResultSet rs=st.executeQuery("use portalinfo;");

if(subject.equalsIgnoreCase("1"))
{
	st.executeUpdate("insert into subjectslist values('"+subject1+"')");
	st.executeUpdate("create table "+subject1+"(sno int(10),question varchar(200),option1 varchar(100),option2 varchar(100),option3 varchar(100),option4 varchar(100),correctoption varchar(100),primary key(sno))");
	response.sendRedirect("after-add-subject-handler.jsp");
}
else if(subject.equalsIgnoreCase("2"))
{
	st.executeUpdate("insert into subjectslist values('"+subject1+"')");
	st.executeUpdate("create table "+subject1+"(sno int(10),question varchar(200),option1 varchar(100),option2 varchar(100),option3 varchar(100),option4 varchar(100),correctoption varchar(100),primary key(sno))");
	st.executeUpdate("insert into subjectslist values('"+subject2+"')");
	st.executeUpdate("create table "+subject2+"(sno int(10),question varchar(200),option1 varchar(100),option2 varchar(100),option3 varchar(100),option4 varchar(100),correctoption varchar(100),primary key(sno))");
	response.sendRedirect("after-add-subject-handler.jsp");
}
else if(subject.equalsIgnoreCase("3"))
{
	st.executeUpdate("insert into subjectslist values('"+subject1+"')");
	st.executeUpdate("create table "+subject1+"(sno int(10),question varchar(200),option1 varchar(100),option2 varchar(100),option3 varchar(100),option4 varchar(100),correctoption varchar(100),primary key(sno))");
	st.executeUpdate("insert into subjectslist values('"+subject2+"')");
	st.executeUpdate("create table "+subject2+"(sno int(10),question varchar(200),option1 varchar(100),option2 varchar(100),option3 varchar(100),option4 varchar(100),correctoption varchar(100),primary key(sno))");
	st.executeUpdate("insert into subjectslist values('"+subject3+"')");
	st.executeUpdate("create table "+subject3+"(sno int(10),question varchar(200),option1 varchar(100),option2 varchar(100),option3 varchar(100),option4 varchar(100),correctoption varchar(100),primary key(sno))");
	response.sendRedirect("after-add-subject-handler.jsp");
}
else if(subject.equalsIgnoreCase("4"))
{
	st.executeUpdate("insert into subjectslist values('"+subject1+"')");
	st.executeUpdate("create table "+subject1+"(sno int(10),question varchar(200),option1 varchar(100),option2 varchar(100),option3 varchar(100),option4 varchar(100),correctoption varchar(100),primary key(sno))");
	st.executeUpdate("insert into subjectslist values('"+subject2+"')");
	st.executeUpdate("create table "+subject2+"(sno int(10),question varchar(200),option1 varchar(100),option2 varchar(100),option3 varchar(100),option4 varchar(100),correctoption varchar(100),primary key(sno))");
	st.executeUpdate("insert into subjectslist values('"+subject3+"')");
	st.executeUpdate("create table "+subject3+"(sno int(10),question varchar(200),option1 varchar(100),option2 varchar(100),option3 varchar(100),option4 varchar(100),correctoption varchar(100),primary key(sno))");
	st.executeUpdate("insert into subjectslist values('"+subject4+"')");
	st.executeUpdate("create table "+subject4+"(sno int(10),question varchar(200),option1 varchar(100),option2 varchar(100),option3 varchar(100),option4 varchar(100),correctoption varchar(100),primary key(sno))");
	response.sendRedirect("after-add-subject-handler.jsp");
}
else if(subject.equalsIgnoreCase("5"))
{
	st.executeUpdate("insert into subjectslist values('"+subject1+"')");
	st.executeUpdate("create table "+subject1+"(sno int(10),question varchar(200),option1 varchar(100),option2 varchar(100),option3 varchar(100),option4 varchar(100),correctoption varchar(100),primary key(sno))");
	st.executeUpdate("insert into subjectslist values('"+subject2+"')");
	st.executeUpdate("create table "+subject2+"(sno int(10),question varchar(200),option1 varchar(100),option2 varchar(100),option3 varchar(100),option4 varchar(100),correctoption varchar(100),primary key(sno))");
	st.executeUpdate("insert into subjectslist values('"+subject3+"')");
	st.executeUpdate("create table "+subject3+"(sno int(10),question varchar(200),option1 varchar(100),option2 varchar(100),option3 varchar(100),option4 varchar(100),correctoption varchar(100),primary key(sno))");
	st.executeUpdate("insert into subjectslist values('"+subject4+"')");
	st.executeUpdate("create table "+subject4+"(sno int(10),question varchar(200),option1 varchar(100),option2 varchar(100),option3 varchar(100),option4 varchar(100),correctoption varchar(100),primary key(sno))");
	st.executeUpdate("insert into subjectslist values('"+subject5+"')");
	st.executeUpdate("create table "+subject5+"(sno int(10),question varchar(200),option1 varchar(100),option2 varchar(100),option3 varchar(100),option4 varchar(100),correctoption varchar(100),primary key(sno))");
	response.sendRedirect("after-add-subject-handler.jsp");
}
else
{
	out.println("SORRY AN ERROR OCCURED SUBJECTS CANT BE ADDED");
	}
%>

</body>
</html>