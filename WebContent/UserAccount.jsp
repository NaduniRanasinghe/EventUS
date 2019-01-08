<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>User Profile</title>
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
                <a href="Location.jsp" style="text-decoration: none"><font class="intermainfont">Create a new event</font> </a>
       </center>
        </td>

        <td rowspan="6" style="width: 500px">

        </td>



        <td  rowspan="6" width="1px" style="background-color: black">

        </td>

        <td rowspan="6" style="width: 50px">

        </td>
        <td rowspan="6">
            <img src="admin.png">
            <br>
            <input type="button" onclick="window.location.href='editProfile.jsp';" class="loginbut" name="editProfile"
                   value="Edit Profile" style="width: 200px">
            <br><br>
            
        </td>

        <td rowspan="6" style="width: 50px">

        </td>
    </tr>
    <tr>
        <td  class="intermaintd">
            <center>
                <font class="intermainfont"><a href="Event.jsp"> View Events </a>
                </font>
            </center>
        </td>

    </tr>
   
    
   
   

</table>

</body>
</html>