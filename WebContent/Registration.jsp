<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<script> 
function validate()
{ 
 var fullname = document.form.fullname.value;
 var email = document.form.email.value;
 var username = document.form.username.value; 
 var password = document.form.password.value;
 var conpassword= document.form.conpassword.value;
 
 if (fullname==null || fullname=="")
 { 
 alert("Full Name can't be blank"); 
 return false; 
 }
 else if (email==null || email=="")
 { 
 alert("Email can't be blank"); 
 return false; 
 }
 else if (username==null || username=="")
 { 
 alert("Username can't be blank"); 
 return false; 
 }
 else if(password.length<6)
 { 
 alert("Password must be at least 6 characters long."); 
 return false; 
 } 
 else if (password!=conpassword)
 { 
 alert("Confirm Password should match with the Password"); 
 return false; 
 } 
 } 
</script> 
</head>

<body style="background-color:#1C2833">
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
                    <li><a href="Login.jsp"><font class="fontnav"><b>locations</b></font></a></li>
                </ul>
            </div>
        </td>
        <td style="width: 175px">
            <div class="nav">
                <ul>
                    <li><a href="Login.jsp"><font class="fontnav"><b>Events</b></font></a></li>
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
            <input class="lb" type="button" value="Login" onclick="window.location.href='Login.jsp'" style="background-color: gold;border-radius: 6px;color: black;font-weight: bold;
            width: 80px;height: 40px;">

        </td>

    </tr>
    <tr>
        <td colspan="9"><hr style="height: 3px"></td>
    </tr>


</table>
<hr style="height: 3px">
<br/><br/><br/>
<center>
<font  size='+1' style="font-family: Ebrima;color:white">
                    Welcome, EventUS Member! Once you have filled out the following information,
                    you can complete your registration.<br>
                    The information you provide will not be used in any other way,
                    so feel secure as you fill in your information.</font></center>

<div class="form">
<form name="form" action="RegisterServlet" method="post" onsubmit="return validate()">
<table align="center"style="background-color:#1C2833">

 <tr>
 <td>Full Name</td>
 <td><input type="text" name="fullname" style="height:30px; width: 300px;border-radius: 15px"/></td>
 </tr><tr></tr>
 <tr>
 <td>Email</td>
 <td><input type="text" name="email" style="height:30px; width: 300px;border-radius: 15px" /></td>
 </tr><tr></tr>
 <tr>
 <td>User name</td>
 <td><input type="text" name="username" style="height:30px; width: 300px;border-radius: 15px"/></td>
 </tr><tr></tr>
 <tr>
 <td>Password</td>
 <td><input type="password" name="password" style="height:30px; width: 300px;border-radius: 15px"/></td>
 </tr><tr></tr>
 <tr>
 <td>Confirm Password</td>
 <td><input type="password" name="conpassword" style="height:30px; width: 300px;border-radius: 15px"/></td>
 </tr><tr></tr>
 <tr>
 <td>
 <%=(request.getAttribute("errMessage") == null) ? ""
 : request.getAttribute("errMessage")%></td>
 </tr>
 <tr>
 <td></td>
 <td><input type="submit" value="Register" style="background-color: gold; height: 30px; width: 150px;border-radius: 15px"></input><input
 type="reset" value="Reset" style="background-color: gold; height: 30px; width: 150px;border-radius: 15px"></input></td>
 </tr>
</table>
</form>
</div>





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