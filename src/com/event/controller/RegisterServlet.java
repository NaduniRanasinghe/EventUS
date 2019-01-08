package com.event.controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.event.model.RegisterModel;
import com.event.service.RegisterImp;
 
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 public RegisterServlet() {
 }
 
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
 String fullName = request.getParameter("fullname");
 String email = request.getParameter("email");
 String userName = request.getParameter("username");
 String password = request.getParameter("password");
 
 RegisterModel register = new RegisterModel();
 
 register.setFullName(fullName);
 register.setEmail(email);
 register.setUserName(userName);
 register.setPassword(password); 
 
 RegisterImp registerDao = new RegisterImp();
 
 
 String userRegistered = registerDao.registerUser(register);
 
 if(userRegistered.equals("SUCCESS"))  
 {
 request.getRequestDispatcher("/UserAccount.jsp").forward(request, response);
 }
 else  
 {
 request.setAttribute("errMessage", userRegistered);
 request.getRequestDispatcher("/Registration.jsp").forward(request, response);
 }
try {
 
	 
RequestDispatcher rs = request.getRequestDispatcher("eventForm.jsp");  
rs.forward(request, response);  
} catch (Exception e) {  
e.printStackTrace();  

 }
}
}