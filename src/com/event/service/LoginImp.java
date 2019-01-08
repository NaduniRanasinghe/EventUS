package com.event.service;
 
import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.ResultSet;
 import java.sql.SQLException;
 import java.sql.Statement;
 import com.event.model.LoginModel;
 import com.event.util.*;

 public class LoginImp {
	 private static Connection connection;
	 
 public String authenticateUser(LoginModel login)
 {
 
String userName = login.getUserName(); 
 String password = login.getPassword();


 Statement statement = null;
 ResultSet resultSet = null;
 
 
String userNameDB = "";
 String passwordDB = "";
String adminUser="";
String adminPwd ="";
 
try
 {
	 connection = DBConnection.createConnection();
	
 statement = connection.createStatement(); 
 resultSet = statement.executeQuery("select  Events.admin.*, Events.users.* from Events.admin,Events.users");

 
 while(resultSet.next()) 
 {
  userNameDB = resultSet.getString("uname"); 
  passwordDB = resultSet.getString("pwd");
  adminUser = resultSet.getString("Aduname");
  adminPwd = resultSet.getString("Adpwd");
  
   if(userName.equals(userNameDB) && password.equals(passwordDB))
   {
      return "SUCCESS"; 
   }
   if(userName.equals(adminUser) && password.equals(adminPwd))
   {
      return "SUCCESSFULL"; 
   }
 }
 
 }
 catch(SQLException e)
 {
 e.printStackTrace();
 
 }
 return "Invalid user credentials"; 
 }
 }
 
 