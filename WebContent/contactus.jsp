<html>

<head>

    <title>Contact Us</title>
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

<center><h1 class="book"><u>Contact Us</u></h1></center>

<form method="post" name="myform" id="myform" action="contactuscontroller">
<table border="0" align ="center" style=>




 <tr><td colspan="2"><font class="fromFont">Name</font></td></tr><tr><td><input name="name" type="text" placeholder="enter name" style="height: 30px;
                width: 400px"/><br><br></td></tr>
         <tr><td colspan="2"><font class="fromFont">Contact Number:</font></td></tr><tr><td><input name="contact" type="text" placeholder="enter Phone number:"style="height: 30px;
                width: 400px"/><br><br></td></tr>
           <tr><td colspan="2"><font class="fromFont">Email</font></td></tr><tr><td><input name="email" type="text" placeholder="enter mail id"style="height: 30px;
                width: 400px"/><br><br></td></tr>
           <tr><td colspan="2"><font class="fromFont">Query</font></td></tr><tr><td><textarea name="query" style="width:600px;height:80px;border:1px solid #999999; margin-top: 0px; "></textarea><br><br></td></tr>
           
<tr><td><input type="submit" value="submit" name ="submit" style="background-color: black;border-radius: 6px;color: white;font-weight: bold;
             width:80px;height: 40px;" class="sb" ></td></tr>

</table>
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


</form>
</body>



</html>