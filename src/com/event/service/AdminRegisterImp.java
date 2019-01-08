package com.event.service;
 
import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;


import com.event.model.RegisterModel;
import com.event.util.*;

 
public class AdminRegisterImp {
	
	private static Connection connection;
	public AdminRegisterImp() {
		
	}
 public String registerUser(RegisterModel register)
 {
 String fullName = register.getFullName();
 String email = register.getEmail();
 String userName = register.getUserName();
 String password = register.getPassword();
 

 PreparedStatement preparedStatement = null;
 
 try
 {
	 connection = DBConnection.createConnection();
	 
	 
	 
 String query = "insert into admin(id,fullname,email,Aduname,Adpwd) values (NULL,?,?,?,?)"; 
 preparedStatement = connection.prepareStatement(query); 
 preparedStatement.setString(1, fullName);
 preparedStatement.setString(2, email);
 preparedStatement.setString(3, userName);
 preparedStatement.setString(4, password);
 
 int i= preparedStatement.executeUpdate();
 
 if (i!=0)  
 return "SUCCESS"; 
 }
 catch(SQLException e)
 {
 e.printStackTrace();
 }
 
return "Oops.. Something went wrong there..!";  
 }


}