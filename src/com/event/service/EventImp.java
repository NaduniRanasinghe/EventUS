package com.event.service;
import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.PreparedStatement;  
//import java.sql.ResultSet;  


import com.event.model.EventModel;
import com.event.util.DBConnection;  


public class EventImp {
	private static Connection connection;
	
	
	
	
	 public String checkInsert(EventModel addEvent)
	    {
	    	String name = addEvent.getName();
	        String uname=addEvent.getUserName(); 
	        String deco=addEvent.getDeco(); 
	       String entertain= addEvent.getEntertain();
	       String phone = addEvent.getContact();
	        String eventType = addEvent.getEventType();
	      
	        
	  
	        
	        try
	        {
	            
	            PreparedStatement pstmt=null; 
	            connection = DBConnection.createConnection();
	            pstmt=connection.prepareStatement("insert into Events.eventus1(eventType,deco,entertain,contact,name,username) values(?,?,?,?,?,?)");
	            
	            pstmt.setString(1, eventType);  
	               pstmt.setString(2, deco);  
	               pstmt.setString(3, entertain); 
	               pstmt.setString(4, phone);
	               pstmt.setString(5, name);
	               pstmt.setString(6, uname);  
	           
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
