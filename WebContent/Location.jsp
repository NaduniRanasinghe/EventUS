<%@page import="com.event.model.ChooseLocationModel"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="stylesheet.css">
 <link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
 <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
  
</head>

<body style="background-color:#fbfcbf;">

<table class="header" background = "color:black" style="width: 100%">
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
                    <li><a href="Login.jsp"><font class="fontnav"><b>Services</b></font></a></li>
                </ul>
            </div>
        </td>
        <td style="width: 175px">
            <div class="nav">
                <ul>
                    <li><a href="Login.jsp"><font class="fontnav"><b>Contact Us</b></font></a></li>
                </ul>
            </div>
        </td>
        <td style="width: 135px">
            <div class="nav">
                <ul>
                    <li><a href="aboutus.php"><font class="fontnav"><b>Events</b></font></a></li>
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
            <input class="lb" type="button" value="Log Out" onclick="window.location.href='index.jsp'" 
            style="background-color: gold;border-radius: 6px;color: black;font-weight: bold;
            width: 80px;height: 40px;">

        </td>

    </tr>
    <tr>
        <td colspan="9"><hr style="height: 3px"></td>
    </tr>


</table>

<div align="center">
	<h1>Select a location before create the event</h1>
</div><br>
<form action="ChooseLocationServlet" method="post"><center>
<table >
<tr> 
<td><center><font class="fromFont">
Date: <input type="text" id="datepicker" required="required" name="date">
Number of participants:</font><input type="text" name="quantity" /> </center> </td></tr>
<tr>
<td><center>
<table><tr>
<th><br/><br/><br/><br/><font class="fromFont">Reception Halls &nbsp; &nbsp;<br/></font></th></tr><tr>
	 			      <td><input type="radio" name="halls" value="Grand City"> <font class="headFont">Grand City Colombo </font><br/><img src="C:\Users\Naduni\Desktop\EventPlan\EventPlanEventUS\WebContent\hall.jpg"> <br/></td>
                      <td><input type="radio" name="halls" value="Ginger grand"><font class="headFont"> Ginger grand Galle </font><br/><img src="C:\Users\Naduni\Desktop\EventPlan\EventPlanEventUS\WebContent\hall1.jpg"></td>
                      <td><input type="radio" name="halls" value="Paradise"><font class="headFont"> Paradise Colombo</font><br/><img src="C:\Users\Naduni\Desktop\EventPlan\EventPlanEventUS\WebContent\hall2.jpg"></td>
                      <td><input type="radio" name="halls" value="Heaven"><font class="headFont">Heaven Kandy </font><br/><img src="C:\Users\Naduni\Desktop\EventPlan\EventPlanEventUS\WebContent\hall.jpg"></td></tr></table></center>
  </td>
  </tr> 
<tr>
<td><center>
<table><tr>
<th><br/><br/><font class="fromFont">Open Areas for outdoor functions &nbsp; &nbsp;<br/></font></th></tr><tr>
	 			      <td><input type="radio" name="halls" value="Grand City"><font class="headFont"> Grand City Colombo </font><br/><img src="C:\Users\Naduni\Desktop\EventPlan\EventPlanEventUS\WebContent\hall.jpg"> <br/></td>
                      <td><input type="radio" name="halls" value="Ginger grand"> <font class="headFont">Ginger grand Galle</font> <br/><img src="C:\Users\Naduni\Desktop\EventPlan\EventPlanEventUS\WebContent\hall1.jpg"></td>
                      <td><input type="radio" name="halls" value="Paradise"><font class="headFont"> Paradise Colombo</font><br/><img src="C:\Users\Naduni\Desktop\EventPlan\EventPlanEventUS\WebContent\hall2.jpg"></td>
                      <td><input type="radio" name="halls" value="Heaven"><font class="headFont">Heaven Kandy </font><br/><img src="C:\Users\Naduni\Desktop\EventPlan\EventPlanEventUS\WebContent\hall.jpg"></td></tr></table></center>
  </td>
  </tr> 
<tr>
<td><center>
<table><tr>
<th><br/><br/><font class="fromFont">Grounds &nbsp; &nbsp;<br/></font></th></tr><tr>
	 			      <td><input type="radio" name="halls" value="Grand City"><font class="headFont"> Grand City Colombo</font> <br/><img src="C:\Users\Naduni\Desktop\EventPlan\EventPlanEventUS\WebContent\hall.jpg"> <br/></td>
                      <td><input type="radio" name="halls" value="Ginger grand"><font class="headFont"> Ginger grand Galle </font><br/><img src="C:\Users\Naduni\Desktop\EventPlan\EventPlanEventUS\WebContent\hall1.jpg"></td>
                      <td><input type="radio" name="halls" value="Paradise"> <font class="headFont">Paradise Colombo</font><br/><img src="C:\Users\Naduni\Desktop\EventPlan\EventPlanEventUS\WebContent\hall2.jpg"></td>
                      <td><input type="radio" name="halls" value="Heaven"><font class="headFont">Heaven Kandy </font><br/><img src="C:\Users\Naduni\Desktop\EventPlan\EventPlanEventUS\WebContent\hall.jpg"></td></tr></table></center>
  </td>
  </tr> 
<tr>
<td><center>
<table><tr>
<th><br/><br/><font class="fromFont">Conference Halls &nbsp; &nbsp;<br/></font></th></tr><tr>
	 			      <td><input type="radio" name="halls" value="Grand City"> <font class="headFont">Grand City Colombo</font> <br/><img src="C:\Users\Naduni\Desktop\EventPlan\EventPlanEventUS\WebContent\hall.jpg"> <br/></td>
                      <td><input type="radio" name="halls" value="Ginger grand"><font class="headFont"> Ginger grand Galle </font><br/><img src="C:\Users\Naduni\Desktop\EventPlan\EventPlanEventUS\WebContent\hall1.jpg"></td>
                      <td><input type="radio" name="halls" value="Paradise"><font class="headFont"> Paradise Colombo</font><br/><img src="C:\Users\Naduni\Desktop\EventPlan\EventPlanEventUS\WebContent\hall2.jpg"></td>
                      <td><input type="radio" name="halls" value="Heaven"><font class="headFont">Heaven Kandy</font> <br/><img src="C:\Users\Naduni\Desktop\EventPlan\EventPlanEventUS\WebContent\hall.jpg"></td></tr></table></center>
  </td>
  </tr> <tr></tr><tr></tr>
  <tr><td><center> <input type="submit" name="btn_add" value="Add" style="background-color: gold; height: 30px; width: 150px;border-radius: 15px">
</center></td></tr>
</table>
</center>
 
</form>
</body>
</html>