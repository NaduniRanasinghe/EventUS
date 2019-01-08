<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Admin Profile</title>
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
                    <li><a href="Home.jsp"><font class="fontnav"><b>Home</b></font></a></li>
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

<br><br><br>
<table style="width: 100%" border="0">
    <tr>
        <td rowspan="6" style="width: 300px">

        </td>
        <td class="intermaintd">
            <center>
                <a href="Location.jsp" style="text-decoration: none"><font class="intermainfont">Create a new event</font> <br></a>
       </center>
        </td>

        <td rowspan="6" style="width: 500px">

        </td>



        <td  rowspan="6" width="1px" style="background-color: white">

        </td>

        <td rowspan="6" style="width: 50px">

        </td>
        <td rowspan="6">
            <img src="admin.png">
            <br>
          
          
        </td>

        <td rowspan="6" style="width: 50px">

        </td>
        </tr>
   
    <tr>
        <td  class="intermaintd">
            <center>
                <font class="intermainfont"><a href="ViewEvents.jsp"  style="text-decoration: none"><font class="intermainfont"> Events </a>
                </font>
            </center>
        </td>

    </tr>
    <tr>
        <td class="intermaintd">
            <center>
                <font class="intermainfont"> <a href="Employees.jsp"  style="text-decoration: none"><font class="intermainfont">Employees</a>
                </font></center>
        </td>
    </tr>
    <tr>
        <td class="intermaintd">
            <center>
                <font class="intermainfont"> <a href="ViewUsers.jsp"  style="text-decoration: none"><font class="intermainfont"> Users</a>
                </font></center>
        </td>
    </tr>
     <tr>
        <td class="intermaintd">
            <center>
                <font class="intermainfont"> <a href="comments.jsp"  style="text-decoration: none"><font class="intermainfont"> User Comments</a>
                </font></center>
        </td>
    </tr>
     <tr>
        <td class="intermaintd">
            <center>
                <font class="intermainfont"> <a href="AdminRegister.jsp"  style="text-decoration: none"><font class="intermainfont"> Add New Admin</a>
                </font></center>
        </td>
    </tr>
   
   

</table>
	<br><br><br><br>
 	<footer style="background-color: white" >

<table align="center">
<tr>
<td align="center"><font-color="black">
    Call us: 
    (+94) 11 2 345 678
    Send an email:
    eventus@gmail.com
    
  </font-color>  </td></tr></table>
   
</footer>	
</body>
</html>
