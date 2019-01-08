<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.event.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employees</title>
        <link href="css/main.css" rel="stylesheet" type="text/css">
          <link rel="stylesheet" type="text/css" href="stylesheet.css">
    </head>
    
  <body style="background-color:#0A0A09">
        
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
                    <li><a href="Location.jsp"><font class="fontnav"><b>locations</b></font></a></li>
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
        <td style="width: 175px">
            <div class="nav">
                <ul>
                    <li><a href="AboutUs.jsp"><font class="fontnav"><b>About Us</b></font></a></li>
                </ul>
            </div>
        </td>
        <td style="width: 175px">
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
        
        
           
      
     <br><br>  
          
        <center>    
                <input class="lb" type="button" value="Add New Employee" onclick="window.location.href='AddEmployee.jsp'"
                style="background-color: gold;border-radius: 6px;color: black;font-weight: bold;
            width: 200px;height: 40px;"/>
            
            <input class="lb" type="button" name="back" value="Back" onclick="window.location.href='AdminProfile.jsp'"
             style="background-color: gold; height: 40px; width: 150px; font-weight: bold;color: black; border-radius: 6px"/>
             
             <form action="" method="get">
				<input type ="text" name ="q"  class="search" style="width:250px;border-radius: 1px;height: 30px"/>
				  <input class="sb" type="submit" value="Search" style="background-color: black;border-radius: 6px;color: white;font-weight: bold;
             width:80px;height: 40px;"/>
					</form>
             </center>
    
       
             
          <%

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
ResultSet rs = null;
%>   
            <br><br>

          
  	
            <table align="center" cellpadding="6" cellspacing="6" border="0"> 
                
                <tr >
                    <th><b>ID</b> &nbsp; &nbsp; &nbsp; &nbsp; </th>
                    <th><b>NIC</b> &nbsp; &nbsp; &nbsp; &nbsp;</th>
                    <th><b>First Name</b> &nbsp; &nbsp; &nbsp; &nbsp;</th>
                    <th><b>Last Name</b> &nbsp; &nbsp; &nbsp; &nbsp;</th>
                    <th><b>Email</b> &nbsp; &nbsp; &nbsp; &nbsp;</th>
                    <th><b>Gender</b> &nbsp; &nbsp; &nbsp; &nbsp;</th>
                    <th><b>Contact </b>&nbsp; &nbsp; &nbsp; &nbsp;</th>
                    <th><b>Department</b> &nbsp; &nbsp; &nbsp; &nbsp;</th>
                   
                     
                    <th><b>Edit</b> &nbsp; &nbsp; &nbsp; &nbsp;</th>
                    <th><b>Delete</b></th>
                </tr>
                <%
try{ 
connection = DBConnection.createConnection();
statement=connection.createStatement();
String query=request.getParameter("q");
String sql;
if(query !=null){
	
	 sql ="select * from Events.employees where fname like '%"+query+"%' or lname like'%"+query+"%' or nic like'%"+query+"%' or department like'%"+query+"%'";
}else{

sql ="select * from Events.employees";

}

	

rs = statement.executeQuery(sql);




while(rs.next()){
%>
                
                
                
                <%
                %>
                <tr>
                    <td><%=rs.getInt("id")%></td>
                    <td><%=rs.getString("nic")%></td>
                    <td><%=rs.getString("fname")%></td>
                    <td><%=rs.getString("lname")%></td>
                    <td><%=rs.getString("email") %></td>
                    <td><%=rs.getString("gender") %></td>
                    <td><%=rs.getString("contact") %></td>
                    <td><%=rs.getString("department") %></td>
                 
                    
                    <td><a href="EditEmp.jsp?edit_id=<%=rs.getInt("id")%>">Edit</a></td>
                    <td><a href="DeleteEmployee.jsp?delete_id=<%=rs.getInt("id")%>">Delete</a></td>
                    
               </tr>
               
                <%
                    }
                    
                    statement.close(); //close statement

                    connection.close(); //close connection
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
                %>
            </table>
 
            
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
           
            

 
 	<br><br><br><br>
 	<footer style="background-color: black" >

<table align="center">
<tr>
<td align="center">
    Call us: 
    (+94) 11 2 345 678
    Send an email:
    eventus@gmail.com
    
    </td></tr></table>
   
</footer>	
    </body>
   
</html>