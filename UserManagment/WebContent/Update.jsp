<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import = "java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%
String host = "jdbc:mysql://localhost/usermanagment";
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
PreparedStatement preparedStatement = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(host,"root","");

%>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<title>Add User</title>
</head>
<body>
<div class="container" style="margin-top: 60px; margin-bottom: 60px;  border: 1px solid black; ">
<div class="row" style="margin-top: 40px;">
<div class="col-md-9">
<p class="h2">Add new user</p>
</div>
<div class="col-md-1">
<a href="Users.jsp" class="btn btn-warning">Users List</a>
</div>
</div>

  <div class="row" style="margin-top: 40px;">
   
    

    <div class="col-sm">
    <form  action="" method ="post">
    <%
    
    statement = connection.createStatement();
    String id = request.getParameter("id");
    try{
    	 int num = Integer.parseInt(id);
    	 String data = "select * from users where id ='"+num+"'";
    	    resultSet =statement.executeQuery(data);
    	    while(resultSet.next()){
   
 
    

 
    
    
    %>
    <input type="hidden" name="id" value='<%=resultSet.getString(id)%>'/>
    
	<div class="form-group">
    <label for="exampleInputEmail1">Profile Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="ProfileName"  value='<%=resultSet.getString("profilename")%>'/>
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="row">
  	<div class="col-md-6">
  			<div class="form-group">
		    <label for="exampleInputEmail1">First Name</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="FirstName"  value='<%=resultSet.getString("firstname")%>'/>
		    
		  </div>
  	</div>
  	<div class="col-md-6">
  		<div class="form-group">
		    <label for="exampleInputEmail1">Last Name</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="LastName"  value='<%=resultSet.getString("lastname")%>'/>
		    
		  </div>
  	</div>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="Email"  value='<%=resultSet.getString("email")%>'/>
    <small id="emailHelp" class="form-text text-muted">Enter your full name.</small>
  </div>
  <div class="row">
  	<div class="col-md-8">
  			<div class="form-group">
		    <label for="exampleInputEmail1">Address 1</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="AddressOne"  value='<%=resultSet.getString("addressone")%>'/>
		    
		  </div>
  	</div>
  	<div class="col-md-4">
  		<div class="form-group">
		    <label for="exampleInputEmail1">Postal code 1</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="PostalCodeOne"  value='<%=resultSet.getString("postalcodeone")%>'/>
		    
		  </div>
  	</div>
  </div>
    <div class="row">
  	<div class="col-md-8">
  			<div class="form-group">
		    <label for="exampleInputEmail1">Address 2</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="AddressTwo"  value='<%=resultSet.getString("addresstwo")%>'/>
		    
		  </div>
  	</div>
  	<div class="col-md-4">
  		<div class="form-group">
		    <label for="exampleInputEmail1">Postal code 2</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="PostalCodeTwo"  value='<%=resultSet.getString("postalcodetwo")%>'/>
		    
		  </div>
  	</div>
  </div>
    <div class="row">
  	<div class="col-md-6">
  			<div class="form-group">
		    <label for="exampleInputEmail1">Mobile Number</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="MobileNumber"  value='<%=resultSet.getString("mobilenumber")%>'/>
		    
		  </div>
  	</div>
  	<div class="col-md-6">
  		<div class="form-group">
		    <label for="exampleInputEmail1">Home Number</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="HomeNumber"  value='<%=resultSet.getString("homenumber")%>'/>
		    
		  </div>
  	</div>
  </div>
  
     <div class="row">
   		<div class="col-md-4">
		   	<div class="form-group">
		    <label for="exampleInputPassword1">NIC</label>
		    <input type="text" class="form-control" id="exampleInputPassword1" name="Nic"  value='<%=resultSet.getString("nic")%>'/>  
		    </div>
   		</div>
   </div>
   <div class="row">
   		<div class="col-md-2 ">
   		
   		</div>
   </div>
   <%
    }
    }catch(Exception e){
    	e.printStackTrace();
    }
   %>
    
  <button type="submit" class="btn btn-primary"  style="margin-bottom: 40px;">Update</button>

</form>
    </div>
    
  </div>
  

  
</div >

 
</body>
</html>
<%
String ID = request.getParameter("id");
String ProfileName = request.getParameter("ProfileName");
String FirstName = request.getParameter("FirstName");
String LastName = request.getParameter("LastName");
String Email = request.getParameter("Email");
String AddressOne = request.getParameter("AddressOne");
String PostalCodeOne = request.getParameter("PostalCodeOne");
String AddressTwo = request.getParameter("AddressTwo");
String PostalCodeTwo = request.getParameter("PostalCodeTwo");
String MobileNumber = request.getParameter("MobileNumber");
String HomeNumber = request.getParameter("HomeNumber");
String Nic = request.getParameter("Nic");

if(ID!=null && ProfileName!=null && FirstName!=null && LastName!=null && Email!=null && AddressOne!=null && PostalCodeOne!=null && AddressTwo!=null && PostalCodeTwo!=null && MobileNumber!=null && HomeNumber!=null && Nic!=null){
	
	String query = "upadte users set profilename=?,	firstname=?,lastname=?,email=?,	addressone=?,addresstwo=?,postalcodeone=?,postalcodetwo=?,mobilenumber=?,homenumber=?,nic=? where id='"+ID+"' ";
	statement = connection.prepareStatement(query);
	preparedStatement.setString(1,ProfileName);
	preparedStatement.setString(2,FirstName);
	preparedStatement.setString(3,LastName);
	preparedStatement.setString(4,Email);
	preparedStatement.setString(5,AddressOne);
	preparedStatement.setString(6,PostalCodeOne);
	preparedStatement.setString(7,AddressTwo);
	preparedStatement.setString(8,PostalCodeTwo);
	preparedStatement.setString(9,MobileNumber);
	preparedStatement.setString(10,HomeNumber);
	preparedStatement.setString(11,Nic);
	
	preparedStatement.executeUpdate();
	response.sendRedirect("Users.jsp");
	

	
}

%>
