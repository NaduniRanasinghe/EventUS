<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.event.model.EventModel"%>  
<%@page import="com.event.util.*"%>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  
    <title>Create an Event</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>

<body class="bg">
   



<hr style="height: 3px">




<center><h1 class="book"><u>Create an Event</u></h1></center>

<center>
<form action="EventServlet" method = "post">
    <table border="0" align ="center" style=>

        <tr  >
          <td colspan="2">
                <font class="fromFont">Username</font>
            </td></tr>
            <tr>
             <td>
            <input type="text" name="uname"  style="height: 30px;
                width: 400px">
                </td></tr>
        	<tr>
            <td colspan="2">
                <font class="fromFont">Name</font>
                  <td style="width: 80px">
         

        </td>
            </td>
            </tr>
            <tr>
            <td>
            <input type="text" name="name"  style="height: 30px;
                width: 400px" >
                </td>

        </tr>
       

        <tr>
            <td>
                <br><br>
                <font class="fromFont">Contact  </font>
            </td>
            </tr>
             <tr>
            <td>
                 <input type="text" name="contact"  style="height: 30px;
                width: 400px">
            </td>
            </tr>
            <tr>
            <td>
                <br><br>
                <font class="fromFont" >Email &nbsp; Address </font>
            </td>
        </tr>
      
            <tr>
            <td>
                <input type="email" name="email"  style="height: 30px;width: 400px">
            </td>
        </tr>
<tr>
    <td>
                  <font class="fromFont">Event Type &nbsp; &nbsp;</font>
             
                    <input type ="radio" name ="eventType" value= "bday"> birthday
                    <input type ="radio" name ="eventType" value= "wedding">wedding 
                     <input type ="radio" name ="eventType" value= "party"> party 
             
          
                </td>
                </tr>
     
        <tr>
        <td>
         <br><br>
                <font class="fromFont">Decorations &nbsp; &nbsp;<br/></font>
                
                
                    <input type="radio" name="deco" value="flowers"> Flowers only <br/>
                      <input type="radio" name="deco" value="balloons"> Balloons only <br/>
                      <input type="radio" name="deco" value="flowersBalloons"> Flowers and Balloons only <br/>
                      <input type="radio" name="deco" value="nod"> No Decorations <br/>
                   
               
                </td>
               </tr>
               <tr>
                 <td>
                 <br/><br/>
                  <font class="fromFont">Entertainment &nbsp; &nbsp;</font>
             
                    <input type ="radio" name ="entertain" value= "DJ"> DJ only 
                    <input type ="radio" name ="entertain" value= "band">Music Band only  
                     <input type ="radio" name ="entertain" value= "no"> No Entertainment 
             
          
                </td>
                </tr>
                
           
          
           <tr>
        
            <td>
            
                <br><br>
                <font class="fromFont">Booked &nbsp; With &nbsp; Us &nbsp; Before?&nbsp; &nbsp;</font>
          

                    <input type="radio" name="check" value="YES"><b>YES</b> &nbsp; &nbsp;
                    <input type="radio" name="check" value="NO"><b>NO</b>
                   <%

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
ResultSet rs = null;

try{ 
	
connection = DBConnection.createConnection();
statement=connection.createStatement();

String sql;

sql ="select * from Events.eventloc order by locId desc limit 1";


rs = statement.executeQuery(sql);
while(rs.next()){
%> 
           
        
            </td>
        </tr>
    </table>
 <br><br> <br><br> 



 <table>
<tr>
  <td>   <input type="submit" name="btn_add" value="Add" style="background-color: gold; height: 30px; width: 150px;border-radius: 15px"></td>
       
   <td>  <input class="lb" type="button" value="Back" onclick="window.location.href='DeleteChosenLoc.jsp?delete_id=<%=rs.getInt("LocId")%>'"
  style="background-color: gold; height: 30px; width: 150px;border-radius: 15px">
            </td>
       
    
   </tr>
    </table>
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
</form>
 <%
                    if(request.getAttribute("InsertSuccessMsg")!=null)
                    {
                        out.println(request.getAttribute("InsertSuccessMsg")); //get record insert success message from AddController.java
                    }
                %>
                
                <%
                    if(request.getAttribute("UpdateSuccessMsg")!=null)
                    {
                        out.println(request.getAttribute("UpdateSuccessMsg")); //get record update success message from EditController.java
                    }
                %>
</center>
<table>
    <tr>
        <td rowspan="9" ><hr style="width: 1470px" color="darkblue">

        </td>
    </tr>
</table>




</body>
</html>