<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.event.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comments</title>
        <link href="css/main.css" rel="stylesheet" type="text/css">
          <link rel="stylesheet" type="text/css" href="stylesheet.css">
    </head>
    
    <body>
        
        <table class="header" style="width: 100%">
    <tr>
        <td style="width: 200px">
             <a href="index.html"> <img src="logo.jpg" width=100></a>
        </td>

        <td style="width: 100px">
            <div class="nav">
                <ul>
                    <li><a href="index.jsp"><font class="fontnav"><b>Home</b></font></a></li>
                </ul>
            </div>
        </td>
        <td style="width: 175px">
            <div class="nav">
                <ul>
                    <li><a href="Location.jsp"><font class="fontnav"><b>location</b></font></a></li>
                </ul>
            </div>
        </td>
        <td style="width: 175px">
            <div class="nav">
                <ul>
                    <li><a href="Location.jsp"><font class="fontnav"><b>Events</b></font></a></li>
                </ul>
            </div>
        </td>
        <td style="width: 135px">
            <div class="nav">
                <ul>
                    <li><a href="AboutUs.jsp"><font class="fontnav"><b>About Us</b></font></a></li>
                </ul>
            </div>
        </td>
        <td style="width: 135px">
            <div class="nav">
                <ul>
                    <li><a href="contactus.jsp"><font class="fontnav"><b>Contact Us</b></font></a></li>
                </ul>
            </div>
        </td>

        <td style="width: 350px">
            <input type="text" name ="Search.." class="search" style="width:250px;border-radius: 1px;height: 30px">
           
        </td>
        <td style="width: 250px">
         <input class="sb" type="submit" value="Search" style="background-color: black;border-radius: 6px;color: white;font-weight: bold;
             width:80px;height: 40px;">

        </td>
        <td style="width: 80px">
            <input class="lb" type="button" value="Logout" onclick="window.location.href='index.jsp'" style="background-color: gold;border-radius: 6px;color: black;font-weight: bold;
            width: 80px;height: 40px;">

        </td>

    </tr>
    <tr>
        <td colspan="9"><hr style="height: 3px"></td>
    </tr>


</table>

        
        <div class="main"> 
          
  	<h2 align="center"><font><strong>Comments</strong></font></h2>
  	<br>
  	<center><input class="lb" type="button" name="back" value="Back" onclick="window.location.href='AdminProfile.jsp'" 
  	  style="background-color: gold; height: 40px; width: 150px; font-weight: bold;color: black; border-radius: 6px"> </center>
  	  
           <table align="center" cellpadding="7" cellspacing="7" border="0"> 
                
               <tr>
                <th><b>ID</b></th>
                    <th><b>Name</b>&nbsp; &nbsp; &nbsp; &nbsp;</th>
                    <th><b>Email</b>&nbsp; &nbsp; &nbsp; &nbsp;</th>
                    <th><b>Contact</b>&nbsp; &nbsp; &nbsp; &nbsp;</th>
                    <th><b>Comment</b>&nbsp; &nbsp; &nbsp; &nbsp;</th>
                   
                    <th><b>Delete</b>&nbsp; &nbsp; &nbsp; &nbsp;</th>
                </tr>
                <%
                   Connection connection = null;
                  
                try
                {
                   
                     connection = DBConnection.createConnection();
                  
                    PreparedStatement pstmt=null; 
                  
                    pstmt=connection.prepareStatement("select * from Events.contactus"); 
                    ResultSet rs=pstmt.executeQuery(); 
                    
                    while(rs.next())
                    {
                %>
               <tr>
                    <td><%=rs.getInt("id")%></td>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("email")%></td>
                    <td><%=rs.getString("contact")%></td>
                    <td><%=rs.getString("query")%></td>
                    
                  
                    <td><a href="DeleteComment.jsp?delete_id=<%=rs.getInt("id")%>">Delete</a></td>
                    
               </tr>
                <%
                    }
                    
                    pstmt.close(); 

                    connection.close(); 
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
                %>
            </table>
  
            <center>
                <h3 style="color:green;">
                <%
                    if(request.getAttribute("InsertSuccessMsg")!=null)
                    {
                        out.println(request.getAttribute("InsertSuccessMsg")); 
                    }
                %>
                
                <%
                    if(request.getAttribute("UpdateSuccessMsg")!=null)
                    {
                        out.println(request.getAttribute("UpdateSuccessMsg"));
                    }
                %>
                </h3>
            </center>
            
 </div>
            
    </body>
   
</html>