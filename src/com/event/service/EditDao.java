package com.event.service;

import com.event.model.AddEmp;
import com.event.util.DBConnection;

import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class EditDao 
{
	private static Connection connection;
	
    public String checkUpdate(AddEmp editEmp)
    {	
    	String nic=editEmp.getNic();
        String fname=editEmp.getFname();
        String lname=editEmp.getLname(); 
      String email = editEmp.getEmail();
       String gender = editEmp.getGender();
     String contact = editEmp.getContact();
        int hidden_id=editEmp.getId();
        
      
        
        try
        {
          
            PreparedStatement pstmt=null; 
            connection = DBConnection.createConnection();
            pstmt=connection.prepareStatement("update Events.employees set nic=?,fname=?,lname=?,email=?,contact=?,gender=?  where id=? "); 

            
            pstmt.setString(1,nic);
            pstmt.setString(2,fname);
            pstmt.setString(3,lname);
            pstmt.setString(4, email);
           pstmt.setString(5, contact);
            pstmt.setString(6, gender);
            pstmt.setInt(7, hidden_id);
            pstmt.executeUpdate(); 
            
            pstmt.close(); 
            
            connection.close();
            
            return "UPDATE SUCCESS"; 
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return "FAIL UPDATE"; 
    }

}