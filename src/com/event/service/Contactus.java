package com.event.service;

import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.PreparedStatement;
import com.event.model.*;
import com.event.util.DBConnection;
public class Contactus {

	private static Connection connection;
	
	public String addQuery(ContactusModel c1) {
		
		
        String name=c1.getName();
        String email= c1.getEmail();
        String contact = c1.getContact();
       String query = c1.getQuery();
     
        
      /*  String url="jdbc:mysql://localhost:3306/Events"; 
        String username="root"; 
        String password="Cookie@96"; */
        
        try
        {
          /*  Class.forName("com.mysql.jdbc.Driver"); 
            Connection con=DriverManager.getConnection(url,username,password); */
            
            PreparedStatement pstmt=null; 
            connection = DBConnection.createConnection();
            pstmt=connection.prepareStatement("insert into Events.contactus(name,email,contact,query) values(?,?,?,?)"); 
            
            pstmt.setString(1,name);
            pstmt.setString(2,email);
            pstmt.setString(3,contact);
            pstmt.setString(4, query);
           
        
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
