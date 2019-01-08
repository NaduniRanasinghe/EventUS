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
 <title>Users</title>  
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
<h2 align="center"><font><strong>Users</strong></font></h2>



<center>    <br><br>
                <input class="lb" type="button" value="Add User" onclick="window.location.href='Registration.jsp'"
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

<table align="center" cellpadding="7" cellspacing="7" border="0">
<tr>

<td><b>User Id</b></td>
<td><b>Full Name</b></td>
<td><b>User Name</b></td>
<td><b>Email</b></td>
<td><b>Password</b></td>

<td><b>Delete</b></td>
</tr>
<%
try{ 

connection = DBConnection.createConnection();
statement=connection.createStatement();
String query=request.getParameter("q");
String sql;
if(query !=null){
	
	 sql ="select * from Events.users where username like '%"+query+"%' or fullname like'%"+query+"%'";
}else{

sql ="select * from Events.users";

}

	

resultSet = statement.executeQuery(sql);




while(resultSet.next()){
%>

<tr>

<td><%=resultSet.getInt("id") %></td>
<td><%=resultSet.getString("fullname") %></td>
<td><%=resultSet.getString("uname") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("pwd") %></td>

<td><a href="DeleteUser.jsp?delete_id=<%=resultSet.getInt("id")%>">Delete</a></td>
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