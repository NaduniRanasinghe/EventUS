<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.event.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Employee</title>
        <link href="css/main.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        	<link rel="stylesheet" href="/resources/demos/style.css">
			<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

			<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  			<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  			
        <script type="text/javascript"> 
        function validate()
        {
            var fname_pattern= /^[a-z A-Z]+$/; 
            var lname_pattern= /^[a-z A-Z]+$/; 
   
            var fname = document.getElementById("fname"); 
            var olname = document.getElementById("lname"); 
              
            if(!fname_pattern.test(fname.value) || fname.value=='') 
            {
                alert("Enter Name Alphabet Only....!"); 
                fname.focus();
                fname.style.background = '#f08080';
                return false;                    
            }
            if(!lname_pattern.test(owner.value) || lname.value=='')
            {
                alert("Enter Owner Alphabet Only....!"); 
                lname.focus();
                lname.style.background = '#f08080'; 
                return false;                    
            }
        }
       </script> 
 <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
       
    </head>
     <body style="background-image:url(clients.jpg)">
         <table class="header" style="width: 100%">
    <tr>
        <td style="width: 200px">
             <a href="index.jsp"> <img src="C:\Users\Naduni\Desktop\new\EPS\logo.png" width=100></a>
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
                    <li><a href="Login.jsp"><font class="fontnav"><b>Choose a location</b></font></a></li>
                </ul>
            </div>
        </td>
        <td style="width: 175px">
            <div class="nav">
                <ul>
                    <li><a href="Login.jsp"><font class="fontnav"><b>Create new event</b></font></a></li>
                </ul>
            </div>
        </td>
        <td style="width: 135px">
            <div class="nav">
                <ul>
                    <li><a href="AboutUs.jsp"><font class="fontnav"><b>About Us</b></font></a></li>
                </ul>
            </div>
        </td>
        <td style="width: 135px">
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
            <input class="lb" type="button" value="Log Out" onclick="window.location.href='Login.jsp'" style="background-color: gold;border-radius: 6px;color: black;font-weight: bold;
            width: 80px;height: 40px;">

        </td>

    </tr>
    <tr>
        <td colspan="9"><hr style="height: 3px"></td>
    </tr>


</table>
     
        <div class="form">
            <center>
             <h1>Update Employee Details</h1> <br><br>
            </center>
  
        <form method="post" action="EditController" onsubmit="return validate();">
                
              <table align="center">        
            <%
            if(request.getParameter("edit_id")!=null) 
            {
                int id=Integer.parseInt(request.getParameter("edit_id")); 
                
                Connection connection = null;
                
                try
                {
                   
                    connection = DBConnection.createConnection();
                    PreparedStatement pstmt=null; 
                    
                    pstmt=connection.prepareStatement("select * from Events.employees where id=?"); 
                    pstmt.setInt(1,id);
                    ResultSet rs=pstmt.executeQuery(); 
                    
                    while(rs.next())
                    {
            %>   
            	<tr>
                    <td>NIC</td>
                    <td><input type="text" name="nic" id="nic" value="<%=rs.getString("nic")%>" style="height:30px; width: 300px;border-radius: 15px"></td>
                </tr>
            
            
             
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="fname" id="fname" value="<%=rs.getString("fname")%>" style="height:30px; width: 300px;border-radius: 15px"></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lname" id="lname" value="<%=rs.getString("lname")%>" style="height:30px; width: 300px;border-radius: 15px"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email" id="email" value="<%=rs.getString("email")%>" style="height:30px; width: 300px;border-radius: 15px"></td>
                </tr>
                  <tr>
                    <td>Gender</td>
                    <td> <input type="radio" name="gender" value="male"><font class="headFont"> Female<br></font> 
                    <input type="radio" name="gender" value="female"><font class="headFont">Male<br><br></font></td>
                </tr> 
                 <tr>
                    <td>Phone Number</td>
                    <td><input type="text" name="phone" id="phone" value="<%=rs.getString("contact")%>" style="height:30px; width: 300px;border-radius: 15px"><br><br></td>
                </tr>
    			 
                <tr>
                    <td><input type="submit" name="btn_edit" value="Update"  class="lb" 
                    style="background-color: gold; height: 40px; width: 150px; font-weight: bold;color: black; border-radius: 6px"></td> 
                    <td><input class="lb" type="button" name="back" value="Back" onclick="window.location.href='AdminProfile.jsp'" 
                style="background-color: gold; height: 40px; width: 150px; font-weight: bold;color: black; border-radius: 6px"></td>
                </tr>
                <tr><td>
                    <input type="hidden" name="hidden_id" value="<%=rs.getInt("id")%>"></td></tr></table>
            <%
                    }
                    
                    pstmt.close(); 
                    connection.close(); 
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
            }
            %>
            
             
           
                <h3 style="color:red;">
                    <%
                        if(request.getAttribute("UpdateErrorMsg")!=null)
                        {
                            out.print(request.getAttribute("UpdateErrorMsg")); 
                        }
                    %>
                </h3>
             
        
    
        </form>
  
 </div>

    </body>
</html>