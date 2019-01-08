package com.event.controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.event.model.RegisterModel;
import com.event.service.AdminRegisterImp;
 
public class AdminRegister extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
 public AdminRegister() {
 }
 
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
 String fullName = request.getParameter("fullname");
 String email = request.getParameter("email");
 String userName = request.getParameter("username");
 String password = request.getParameter("password");
 
 RegisterModel admin = new RegisterModel();
 
 admin.setFullName(fullName);
 admin.setEmail(email);
 admin.setUserName(userName);
 admin.setPassword(password); 
 
 AdminRegisterImp adminDao = new AdminRegisterImp();
 
 
 String userRegistered = adminDao.registerUser(admin);
 
 if(userRegistered.equals("SUCCESS"))  
 {
 request.getRequestDispatcher("/AdminProfile.jsp").forward(request, response);
 }
 else  
 {
 request.setAttribute("errMessage", userRegistered);
 request.getRequestDispatcher("/AdminRegister.jsp").forward(request, response);
 }
try {
 
	 
RequestDispatcher rs = request.getRequestDispatcher("eventForm.jsp");  
rs.forward(request, response);  
} catch (Exception e) {  
e.printStackTrace();  

 }
}
}