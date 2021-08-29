 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
   type = "text/css"
   href = "User.css" />

<meta charset="UTF-8">
<title>User Page</title>
<link rel = "stylesheet"
   type = "text/css"
   href = "home.css" />
   <link rel = "stylesheet"
   type = "text/css"
   href = "Payment.css" />

 <style>
 body{
	background:url("image/home.jpg");
	background-repeat: no-repeat;
    background-size: cover;
    }
  </style>
<div id="header">
	
		<table style="width:100%" >
		<tr>
			<td><img src="image/logo1.jpg" width="200" height="100" align="left" style="float:left"/></td>
			<td><h1 style="font-size:80px"> Royal Hotel</h1></td>
			<td><center><a href ="afterhome.jsp"><img src="image/login.jpg" width="100" height="80"/></a><a href ="afterhome.jsp" style="text-decoration:none"><h3 style="color: #e8daef">Log In</h3></a></center></td>
			
		</tr>
		</table>
	
	</div>
	
	<div id="nav">	
		
		<table style="width:100%">
		<tr>
			<td><center><a href ="afterhome.html"><b> Home </b></a></center></td>
			
			<td><a href ="search.jsp"><b>Room </b></a></td>
			
			<td><a href ="gallery.jsp"><b>Gallery </b></a></td>
			
			<td><center><a href ="aboutus.jsp"><b> About US </b></a></center></td>
			
			
			<td><a href ="userprofile.jsp"><b>User Profile</b></a></td>
			

		</tr>
		</table>
	</div>
	
	<br/>
	
<center>
	<h2 class="h2" style="font-size:36px"><b>Register Here</b></h2>

	   <h3 style="font-size:24px; color:black;"><b>Let us know who are you.</b></h3>
	  </center> 
	<br>
	<br>
<center>
	<form method="POST" action="AddUserServletU">
		<table>

			<tr>
				<td>User Name</td>
				<td><input type="text" name="name" required/></td>
			</tr>
			
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobile" required /></td>
			</tr>
			
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" required /></td>
			</tr>
			
			<tr>
				<td>NIC</td>
				<td><input type="text" name="nic" required /></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><input type="text" name="address"  required/></td>
			</tr>
			
			<tr>
				<td>New Password</td>
				<td><input type="text" name="newPassword" required /></td>
			</tr>
			<tr>
				<td>Confirm Password</td>
				<td><input type="text" name="confirmPassword" required /></td>
			</tr>
			
			<tr>
			<form method="POST" action ="ListUserServletU" >
			<td colspan="2"><input type="submit" value="Check Register Details" class="add-button" /></td>
			</form>
				<td colspan="2"><input type="reset" value="Reset" class="reset-button" /></td>
				</tr>
				
				
				</table>
			
			
		
	</form>

	
</center>

</body>
</html>