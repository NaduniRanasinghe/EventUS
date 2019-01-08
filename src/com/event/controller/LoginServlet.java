package com.event.controller;
 import java.io.IOException;
 import javax.servlet.ServletException;
 import javax.servlet.http.HttpServlet;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;
 
import com.event.model.LoginModel;
 import com.event.service.LoginImp;
 
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
public LoginServlet() {
 }
 
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 

 
String userName = request.getParameter("username");
 String password = request.getParameter("password");
 
LoginModel loginBean = new LoginModel(); 
 
loginBean.setUserName(userName); 
 loginBean.setPassword(password);
 
LoginImp loginDao = new LoginImp(); 
 
String userValidate = loginDao.authenticateUser(loginBean); 
 
if(userValidate.equals("SUCCESS")) 
 {
 request.setAttribute("userName", userName); 
 request.getRequestDispatcher("/UserAccount.jsp").forward(request, response);
 }
else if(userValidate.equals("SUCCESSFULL")) 
{
request.setAttribute("userName", userName); 
request.getRequestDispatcher("/AdminProfile.jsp").forward(request, response);
}


 else 
 {
 request.setAttribute("errMessage", userValidate); 
 request.getRequestDispatcher("/Login.jsp").forward(request, response);
 }
 }
 
}