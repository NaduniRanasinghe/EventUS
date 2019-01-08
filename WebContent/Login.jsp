<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
<script> 
function validate()
{ 
 var username = document.form.username.value; 
 var password = document.form.password.value;
 
 if (username==null || username=="")
 { 
 alert("Username cannot be blank"); 
 return false; 
 }
 else if(password==null || password=="")
 { 
 alert("Password cannot be blank"); 
 return false; 
 } 
}
</script> 
</head>
<body style="background-color:#AEB6BF">
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
       

    </tr>
    <tr>
        <td colspan="9"><hr style="height: 3px"></td>
    </tr>


</table>
<br/><br/>
<center>

    <table border="0">
        <tr>
            <td>
                <table border="0">
                    <tr>
                        <td>
 				 <img src="C:\Users\Naduni\Desktop\new\Event\WebContent\event3.jpg" width="400">
                        </td>
                    <tr>
                        <td><br><br><font class="headfont" color="black">
                                To become an EventUS Member</font>
                            <br><br>
                            <a href="Registration.jsp" style="text-decoration: none;font-family: Ebrima;font-size: 15px">Sign Up</a>
                            <br><br><br>
                            <font style="font-family: Ebrima;font-size: 16px;" color="black"> With EventUS you can <br>
                                make your dream event a reality...
                                <br>
                               
                                <br></font>
                        </td>

                    </tr>
                    
                </table>
            </td>


            <td  rowspan="6" width="30px">

            </td>

            <td  rowspan="6" width="1px" style="background-color: black">

            </td>

            <td  rowspan="6" width="30px">

            </td>

            <td>
                <div  style="background-color: #d8eaea;border-radius: 10px;padding: 20px;">
                
	<form name="form" action="LoginServlet" method="post" onsubmit="return validate()">

<table align="center">
 <tr>
     <td >
         
            <center> <h2><font style="font-family: Ebrima">EventUS Account Login</font></h2></center>
        
     </td>
 </tr>
 <tr>
       <td>
          
          <font style="font-family:Ebrima;font-size: 20px;color: #377D7A"> Enter your EventUS User name
            and password to log in.</font>
       </td>
 </tr>
 <tr>
 <td>User name
 <br/><input type="text" name="username" style="width: 380px;height: 40px;" /></td>
 </tr>
 <tr>
 <td>Password
 <br/><input type="password" name="password" style="width: 380px;height: 40px;" /></td>
 </tr>
 <tr> 
 <td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? ""
 : request.getAttribute("errMessage")%></span></td>
 </tr>
 <tr>
 
 <td><input type="submit" value="Login" 
 style="background-color:#85C1E9;border-radius: 6px;color: black;font-weight: bold; width: 80px;height: 40px;"/ >
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <input type="reset" value="Reset" 
  style="background-color: #85C1E9;border-radius: 6px;color: black;font-weight: bold; width: 80px;height: 40px;"/></td>
 </tr>
</table>
</form>
</div>
</td>
</tr>
</table>
</center>
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