<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.event.util.*"%>

<%
    if(request.getParameter("delete_id")!=null) 
    {
        int id=Integer.parseInt(request.getParameter("delete_id")); 
        
    	Connection connection = null;
        try
        {
           	connection = DBConnection.createConnection();
        	
            PreparedStatement pstmt=null; 
            
            pstmt=connection.prepareStatement("delete from test.contactus where id=? ");
            pstmt.setInt(1,id);
            pstmt.executeUpdate(); 

            RequestDispatcher rd=request.getRequestDispatcher("comments.jsp"); 
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