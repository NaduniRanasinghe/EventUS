<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>
<head>
	<meta charset="ISO-8859-1">
    <title>EventUS.com</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>

<body>

<table class="header" style="width: 100%">
    <tr>
        <td style="width: 200px">
             <a href="index.jsp"> <img src="logo.jpg" width=100></a>
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
            <input class="lb" type="button" value="Log Out" onclick="window.location.href='index.jsp'" style="background-color: gold;border-radius: 6px;color: black;font-weight: bold;
            width: 80px;height: 40px;">

        </td>

    </tr>
    <tr>
        <td colspan="9"><hr style="height: 3px"></td>
    </tr>


</table>

<div class="slider">
    <figure>

        <div class="slide">
           <img src="Wedding-Events.gif">
            
        </div>
        <div class="slide">
            <img src="Worthdreaming.jpg">
        </div>
        <div class="slide">
            <img src="Corporate-Events.gif">
        </div>
        <div class="slide">
          <img src="Personal-Events.gif">
        </div>
    </figure>

</div>


<br><br>

    <table>
        <tr>
            <td class="hometd">
                <font class="home6head">WEDDINGS</font>  <br><br>
                <font class="home6para">Powerful Layout with Responsive functionality
                    that can be adapted to any screen size. Resize browser to view.</font>
            </td>

            <td class="hometdspace">

            </td>

            <td class="hometd">
                <font class="home6head">BIRTHDAYS</font> <br><br>
                <font class="home6para">A comprehensive marketing and promotional plan is 
                important to the success of any event...</font>
            </td>

            <td class="hometdspace">

            </td>

            <td class="hometd">
                <font class="home6head">CONFERENCES</font> <br><br>
                <font class="home6para">A comprehensive marketing and promotional plan is 
                important to the success of any event...</font>
            </td>
        </tr>
        <tr style="height: 30px"></tr>

        <tr>
            <td class="hometd">
                <font class="home6head">Anniversay Celebrations</font> <br><br>
                <font class="home6para">We consult organizations on all aspects of their event to 
                help take them to the next level</font>
            </td>
            <td class="hometdspace">

            </td>

            <td class="hometd">
                <font class="home6head">Meetings</font> <br><br>
                <font class="home6para">A comprehensive marketing and promotional plan is 
                important to the success of any event..</font>
            </td>

            <td class="hometdspace">

            </td>

            <td class="hometd">
                <font class="home6head">Personal Events</font> <br><br>
                <font class="home6para">A comprehensive marketing and promotional plan is 
                important to the success of any event..</font>
            </td>
        </tr>

    </table>





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