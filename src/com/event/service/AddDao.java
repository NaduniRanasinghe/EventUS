package com.event.service;
import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.event.model.AddEmp;
import com.event.util.*;


public class AddDao 
{
	private static Connection connection;
	
    public String checkInsert(AddEmp addEmp)
    {
    	String nic = addEmp.getNic();
        String fname=addEmp.getFname(); 
        String lname=addEmp.getLname(); 
       String appDate= addEmp.getAppDate();
       String phone = addEmp.getContact();
        String gender = addEmp.getGender();
        String position=addEmp.getPosition();    
        String email = addEmp.getEmail();
        
        
    
        
        try
        {
          
        	connection = DBConnection.createConnection();
            PreparedStatement pstmt=null; 
            
            pstmt=connection.prepareStatement("insert into Events.employees(nic,fname,lname,appDate,email,contact,gender,department) values(?,?,?,?,?,?,?,?)"); 
            
            pstmt.setString(1,nic);
            pstmt.setString(2,fname);
            pstmt.setString(3,lname);
            pstmt.setString(4, appDate);
            pstmt.setString(5, email);
           pstmt.setString(6, phone);
          pstmt.setString(7, gender);
            pstmt.setString(8, position); 
           
           
           
            
            pstmt.executeUpdate(); 
            
            pstmt.close(); 
            
            connection.close(); 
            
            return "INSERT SUCCESS"; 
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return "FAIL INSERT";
    }
    
}