<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import = "java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<title>Shopping Cart</title>
</head>
<body>
<div class="container">
<p class="h2">Users Management</p>


<div class="row" style="margin-top: 40px; ">

 <div class="col-md-6" style="margin-bottom: 40px;">
<form action="" class="form-inline">
 			<input type="text" class="form-control" name="search" placeholder="Search here..." />
 			<input type="submit" class="btn btn-primary" value="Search"/>
 		</form>
 </div>
 <div class="col-md-4"></div>
  <div class="col-md-2"><a href='AddUsers.jsp' class="btn btn-primary"> Add User </a></div>
</div>
  <div class="row">
   
    <div class="col-md-12">
     <table class="table table-striped">
 	<thead>
			<tr>
				<th>Profile Name</th>
				<th>Full Name</th>
				<th>E mail</th>
				<th>Address</th>
				<th>NIC </th>
			</tr>
		</thead>
		<tbody>
			<%
				String host = "jdbc:mysql://localhost/usermanagment";
				Connection connection = null;
				Statement statement = null;
				ResultSet resultSet = null;
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection(host,"root","");
				statement = connection.createStatement();
				String query = request.getParameter("search");
				String data;
				if(query != null){
					 data = " select * from users where  profilename like '%"+query+"%' or firstname like '%"+query+"%' or lastname like  '%"+query+"%' or email like  '%"+query+"%' or nic like  '%"+query+"%'" ;
				}
				else{
					 data = " select * from users";
				}
				try
				{
					resultSet = statement.executeQuery(data);
				}
				catch(Exception e ){
					e.printStackTrace();
				}
				
			
					
					try
					{
						while(resultSet.next()){
				
							%><tr>
				<td><%=resultSet.getString("profilename") %></td>
					<td><%=resultSet.getString("firstname") %> <%=resultSet.getString("lastname") %></td>
					<td><%=resultSet.getString("email") %></td>
					<td><%=resultSet.getString("addressone") %></td>
					<td><%=resultSet.getString("nic") %></td>
					<td class ="text-center">
					
							<a href='Update.jsp?ID<%=resultSet.getString("id") %>' class="btn btn-primary"> Update </a>
							<a href='delete.jsp?id=<%=resultSet.getString("id") %>' class="btn btn-danger"> Clear </a>
					</td>
					<td class ="text-center">
							
					</td>
				</tr><% }%>
				<% }
					catch(Exception e ){
						e.printStackTrace();
					}%>
		</tbody>
	</table>
    </div>
 
  </div>
</div>
 
</body>
</html>