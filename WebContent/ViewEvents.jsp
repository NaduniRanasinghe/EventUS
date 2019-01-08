<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import ="java.sql.PreparedStatement"%>
<%@page import ="com.event.util.*"%>

 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
   pageEncoding="ISO-8859-1"%>  
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
 <title>Events</title>  
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
                    <li><a href="Location.jsp"><font class="fontnav"><b>Locations</b></font></a></li>
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
 
 
<%

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
ResultSet rs = null;
%>
<h2 align="center"><font><strong>Events</strong></font></h2>



<center>    <br><br>
                <input class="lb" type="button" value="Create New Event" onclick="window.location.href='Location.jsp'"
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

<br><br>

<table align="center" cellpadding="6" cellspacing="6" border="0">
<tr>

<td><b>Event Number</b></td>
<td><b>Username</b></td>
<td><b>Name</b></td>
<td><b>Event Type</b></td>
<td><b>Location</b></td>
<td><b>Decoration</b></td>
<td><b>Entertainment</b></td>
<td><b>Quantity</b></td>
<td><b>Contact</b></td>
<td><b>Date</b></td>
<td><b>Delete</b></td>
</tr>
<%
try{ 
connection = DBConnection.createConnection();
statement=connection.createStatement();
String query=request.getParameter("q");
String sql;
if(query !=null){
	
sql ="select e.eventId,e.name, e.deco,e.eventType,e.entertain,e.username,l.locName,l.Quantity,l.eventDate, e.contact from Events.eventus1 e inner join Events.eventloc l on e.eventId = l.locId where e.username like '%"+query+"%' or e.eventType like'%"+query+"%'or e.name like'%"+query+"%'";
}else{

sql ="select e.eventId,e.name,e.deco,e.eventType,e.entertain,e.username,l.locName,l.Quantity,l.eventDate,e.contact from Events.eventus1 e inner join Events.eventloc l on e.eventId = l.locId ";

}

	

resultSet = statement.executeQuery(sql);




while(resultSet.next()){
%>

<tr>

<td><%=resultSet.getInt("eventId") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("eventType") %></td>
<td><%=resultSet.getString("locName") %></td>
<td><%=resultSet.getString("deco") %></td>
<td><%=resultSet.getString("entertain") %></td>
<td><%=resultSet.getInt("Quantity") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("eventDate") %></td>



<td><a href="DeleteEvent.jsp?delete_id=<%=resultSet.getInt("eventId")%>">Delete</a></td>
</tr>


<% 
}

} catch (Exception e) {
e.printStackTrace();
}

	

%>
</table>



</body>
</html>