<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
 String id = request.getParameter("id");
 int no = Integer.parseInt(id);
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/usermanagment","root","");
 Statement statement = connection.createStatement();
 statement.executeUpdate("delete from users where id=' "+id+" ' ");
 response.sendRedirect("Users.jsp");
 
 %>

</body>
</html>