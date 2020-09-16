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
    <form  action="<%=request.getContextPath()%>/UsersServlet" method ="post">
	<div class="form-group">
    <label for="exampleInputEmail1">Profile Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="ProfileName">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="row">
  	<div class="col-md-6">
  			<div class="form-group">
		    <label for="exampleInputEmail1">First Name</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="FirstName">
		    
		  </div>
  	</div>
  	<div class="col-md-6">
  		<div class="form-group">
		    <label for="exampleInputEmail1">Last Name</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="LastName">
		    
		  </div>
  	</div>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="Email">
    <small id="emailHelp" class="form-text text-muted">Enter your full name.</small>
  </div>
  <div class="row">
  	<div class="col-md-8">
  			<div class="form-group">
		    <label for="exampleInputEmail1">Address 1</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="AddressOne">
		    
		  </div>
  	</div>
  	<div class="col-md-4">
  		<div class="form-group">
		    <label for="exampleInputEmail1">Postal code 1</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="PostalCodeOne">
		    
		  </div>
  	</div>
  </div>
    <div class="row">
  	<div class="col-md-8">
  			<div class="form-group">
		    <label for="exampleInputEmail1">Address 2</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="AddressTwo">
		    
		  </div>
  	</div>
  	<div class="col-md-4">
  		<div class="form-group">
		    <label for="exampleInputEmail1">Postal code 2</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="PostalCodeTwo">
		    
		  </div>
  	</div>
  </div>
    <div class="row">
  	<div class="col-md-6">
  			<div class="form-group">
		    <label for="exampleInputEmail1">Mobile Number</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="MobileNumber">
		    
		  </div>
  	</div>
  	<div class="col-md-6">
  		<div class="form-group">
		    <label for="exampleInputEmail1">Home Number</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" name="HomeNumber">
		    
		  </div>
  	</div>
  </div>
  
     <div class="row">
   		<div class="col-md-4">
		   	<div class="form-group">
		    <label for="exampleInputPassword1">NIC</label>
		    <input type="text" class="form-control" id="exampleInputPassword1" name="Nic">  
		    </div>
   		</div>
   </div>
   <div class="row">
   		<div class="col-md-2 ">
   			<div class="form-group">
			    <label for="exampleFormControlSelect1">Gender</label>
			    <select class="form-control" id="exampleFormControlSelect1" name="Gender">
			      <option value="Male">Male</option>
			      <option value="Female">Female</option>
			      <option value="Other">Other</option>
			    </select>
  </div>
   		</div>
   </div>
    
  <button type="submit" class="btn btn-primary"  style="margin-bottom: 40px;">Submit</button>

</form>
    </div>
    
  </div>
  

  
</div >


</body>
</html>