<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.event.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Events</title>
        <link href="css/main.css" rel="stylesheet" type="text/css">
          <link rel="stylesheet" type="text/css" href="stylesheet.css">
    </head>
    
    <body>
      
<%
    if(request.getParameter("delete_id")!=null) 
    {
        int id=Integer.parseInt(request.getParameter("delete_id")); 
      Connection connection = null; 
        
        try
        {
           connection = DBConnection.createConnection();
            PreparedStatement pstmt=null; 
            PreparedStatement pstmt1=null; 
            
            pstmt=connection.prepareStatement("delete from Events.eventus1 where eventId=? ");
            pstmt.setInt(1,id);
            pstmt1=connection.prepareStatement("delete from Events.eventloc where locId=? ");
            pstmt1.setInt(1,id);
            
            pstmt.executeUpdate(); 
            pstmt1.executeUpdate(); 
            RequestDispatcher rd=request.getRequestDispatcher("ViewEvents.jsp"); 
            rd.forward(request, response); 
            
            pstmt.close(); 
            
            connection.close();   
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }
%>