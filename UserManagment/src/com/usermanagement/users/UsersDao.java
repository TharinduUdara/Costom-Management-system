package com.usermanagement.users;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UsersDao {
	
	public int UserManagement (UsersBean usersBean) throws ClassNotFoundException {
		
		int result = 0;
		Class.forName("com.mysql.jdbc.Driver");
		
		try {
			
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/usermanagment","root","");
			PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO users" + "(profilename,firstname,lastname,email"
					+ ",addressone,addresstwo,postalcodeone,postalcodetwo,mobilenumber,homenumber,nic,gender)VALUES" + "(?,?,?,?,?,?,?,?,?,?,?,?);");
			preparedStatement.setString(1, usersBean.getProfieName());
			preparedStatement.setString(2, usersBean.getFirstName());
			preparedStatement.setString(3, usersBean.getLastName());
			preparedStatement.setString(4, usersBean.getEmail());
			preparedStatement.setString(5, usersBean.getAddressOne());
			preparedStatement.setString(6, usersBean.getAddressTwo());
			preparedStatement.setString(7, usersBean.getPostalCodeOne());
			preparedStatement.setString(8, usersBean.getPostalCodeTwo());
			preparedStatement.setString(9, usersBean.getMobileNumber());
			preparedStatement.setString(10, usersBean.getHomeNumber());
			preparedStatement.setString(11, usersBean.getNic());
			preparedStatement.setString(12, usersBean.getGender());
			
			result = preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return result;
		
	}

}
