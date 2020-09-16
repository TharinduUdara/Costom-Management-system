package com.usermanagement.users;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UsersServlet")
public class UsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	private UsersDao usersDao = new UsersDao();
  
    public UsersServlet() {
        super();
       
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String ProfileName = request.getParameter("ProfileName");
    	String FirstName = request.getParameter("FirstName");
    	String LastName = request.getParameter("LastName");
    	String Email = request.getParameter("Email");
    	String AddressOne = request.getParameter("AddressOne");
    	String AddressTwo = request.getParameter("AddressTwo");
    	String PostalCodeOne = request.getParameter("PostalCodeOne");
    	String PostalCodeTwo = request.getParameter("PostalCodeTwo");
    	String MobileNumber = request.getParameter("MobileNumber");
    	String HomeNumber = request.getParameter("HomeNumber");
    	String Nic = request.getParameter("Nic");
    	String Gender = request.getParameter("Gender");
    	
    	UsersBean usersBean = new UsersBean();
    	usersBean.setProfieName(ProfileName);
    	usersBean.setFirstName(FirstName);
    	usersBean.setLastName(LastName);
    	usersBean.setEmail(Email);
    	usersBean.setAddressOne(AddressOne);
    	usersBean.setAddressTwo(AddressTwo);
    	usersBean.setPostalCodeOne(PostalCodeOne);
    	usersBean.setPostalCodeTwo(PostalCodeTwo);
    	usersBean.setMobileNumber(MobileNumber);
    	usersBean.setHomeNumber(HomeNumber);
    	usersBean.setNic(Nic);
    	usersBean.setGender(Gender);
    	
    	try {
    		
    		usersDao.UserManagement(usersBean);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    	response.sendRedirect("Users.jsp");
    	
 	
		
	}

}
