<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Employee</title>
        
            <link rel="stylesheet" type="text/css" href="stylesheet.css">
        	<link href="css/main.css" rel="stylesheet" type="text/css">
         	<link rel="stylesheet" href="/resources/demos/style.css">
			<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

			<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  			<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
 <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
        <script type="text/javascript"> 
        function validate()
        {
            var fname_pattern= /^[a-z A-Z]+$/; 
            var lname_pattern= /^[a-z A-Z]+$/; 
   
            var name = document.getElementById("fname"); 
            var lname = document.getElementById("lname"); 
              
            if(!fname_pattern.test(fname.value) || fname.value=='') 
            {
              alert("Enter Name Alphabet Only....!"); 
              fname.focus();
              fname.style.background = '#f08080'; 
              return false;                    
            }
            if(!lname_pattern.test(lname.value) || lname.value=='') 
            {
              alert("Enter Owner Alphabet Only....!"); 
              lname.focus();
              lname.style.background = '#f08080';
              return false;                    
            }
        }
 </script> 

    </head>
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
                    <li><a href="location.jsp"><font class="fontnav"><b>Events</b></font></a></li>
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
            <input class="lb" type="button" value="Log Out" onclick="window.location.href='index.jsp'" 
            style="background-color: gold;border-radius: 6px;color: black;font-weight: bold;
            width: 80px;height: 40px;">

        </td>

    </tr>
    <tr>
        <td colspan="9"><hr style="height: 3px"></td>
    </tr>


</table>
    <body style="background-image:url(clients.jpg)">
      
            <center><h1 class="book"><u>Add New Employee</u></h1></center>
           <div class="form"> 
        <form method="post" action="AddController" onsubmit="return validate();">
                
            <table align="center">         
                
                
                <tr>
                    <td>NIC</td>
                    <td><input type="text" name="nic" id="nic" style="height:30px; width: 300px;border-radius: 15px"><br></td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="fname" id="fname" style="height:30px; width: 300px;border-radius: 15px"><br></td>
                </tr>
    
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lname" id="lname" style="height:30px; width: 300px;border-radius: 15px"><br></td>
                </tr> 
                 <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" id="email" style="height:30px; width: 300px;border-radius: 15px"><br></td>
                </tr> 
                 <tr>
                    <td>Department</td>
                    <td><input type="radio" name="department" value="ent"><font class="headFont"> Entertainment <br></font>
                    <input type="radio" name="department" value="deco"><font class="headFont"> Decorations<br></font> 
                    <input type="radio" name="department" value="marketing"><font class="headFont">Marketing<br></font><br><br>
                   </td>
                </tr> 
                
                  <tr>
                    <td>Gender</td>
                    <td> <input type="radio" name="gender" value="male"><font class="headFont"> Male<br></font> 
                    <input type="radio" name="gender" value="female"><font class="headFont">Female<br></font><br></td>
                </tr> 
                 <tr>
                    <td>Phone Number</td>
                    <td><input type="text" name="phone" id="phone" style="height:30px; width: 300px;border-radius: 15px"><br></td>
                </tr> 
                
                <tr><td>Appointment Date</td>
                <td><input type="text" id="datepicker" name="appDate" id="appDate"style="height:30px; width: 300px;border-radius: 15px"><br><br></tr>
                
                <tr align="center">
                    <td align="center"><input type="submit" name="btn_add" value="Add" style="background-color: gold; height: 30px; width: 150px;border-radius: 15px"></td> 
                    <td align="center"><input type="button" name="back" value="Back" onclick="window.location.href='AdminProfile.jsp'" style="background-color: gold; height: 30px; width: 150px;border-radius: 15px"></td>
                </tr>
    
            </table>
               <br><br><br> <br>
            <center>
                <h3 style="color:red;">
                <%
                    if(request.getAttribute("InsertErrorMsg")!=null)
                    {
                        out.println(request.getAttribute("InsertErrorMsg")); 
                    }
                %>
                </h3>
             
                
            </center>
    
        </form>
        
    
  </div>
 
  
       
    </body>
</html>