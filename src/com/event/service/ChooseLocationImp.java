package com.event.service;
import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.PreparedStatement;  
//import java.sql.ResultSet;  
//import java.util.ArrayList;  
//import java.util.List;  
import com.event.model.ChooseLocationModel;
import com.event.util.DBConnection;



public class ChooseLocationImp {
		
	private static Connection connection;
	
	 public String checkInsert(ChooseLocationModel addLoc)
	
    {
    	String loc = addLoc.getLocName();
        int size=addLoc.getLocQuantity(); 
        String date=addLoc.getDate();
      
        
        
      /*  String url="jdbc:mysql://localhost:3306/Events"; 
        String username="root"; 
        String password="Cookie@96"; */
        
        try
        {
           /* Class.forName("com.mysql.jdbc.Driver"); 
            Connection con=DriverManager.getConnection(url,username,password); */
            
            PreparedStatement pstmt=null; 
            connection = DBConnection.createConnection();
            pstmt=connection.prepareStatement("insert into Events.eventloc(locName,Quantity,eventDate) values(?,?,?)"); 
            
            pstmt.setString(1, loc);  
               pstmt.setInt(2, size);  
               pstmt.setString(3, date); 
              
        
           
         
            
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