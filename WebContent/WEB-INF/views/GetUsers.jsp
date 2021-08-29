<%@page import="com.oop.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"  type = "text/css" href = "home.css" />
<link rel = "stylesheet"  type = "text/css" href = "Payment.css" />
<meta charset="UTF-8">
<title>SLIIT OOP User Management</title>
<style>
body{
		
	background:url("image/home.jpg");
	background-repeat: no-repeat;
    background-size: cover;

		}
   #footer{
   
	background-color:black;
	opacity:.8;
	margin:20px;
	 margin-top:25px;
	height:50px;
	border-radius:10px;
	color:white;
	
	
}
#footer a{
	text-decoration:none;
	color:white;
}
#footer p{
	color:white;
}

</style>
</head>
<body>
<div id="header">
	
		<table style="width:100%" >
		<tr>
			
			<td><img src="image/logo1.jpg" width="200" height="100" align="left" style="float:left"/></td>
			<td><h1 style="font-size:80px"> Royal Hotel</h1></td>
			<td><center><a href ="afterhome.jsp"><img src="image/logout.jpg" width="100" height="80"/></a><a href ="home.jsp" style="text-decoration:none"><h3 style="color: #e8daef">
			<form method="POST" action="home.jsp" style="color:white; width:60px;">Logout</form></h3></a></center></td>
		</tr>
		</table>
	
	</div>
	
	<div id="nav">	
		
		<table style="width:100%">
		<tr>
			<td><center><a href ="afterhome.jsp"><b> Home </b></a></center></td>
			
			<td><a href ="search.jsp"><b>Room </b></a></td>
			
			<td><a href ="gallery.jsp"><b>Gallery </b></a></td>
			
			
			
			<td><center><a href ="aboutus.jsp"><b> About US </b></a></center></td>
			
			<td><a href ="userprofile.jsp"><b>User Profile </b></a></td>
			
					

		</tr>
		</table>
	</div>




	<%
		User user = (User) request.getAttribute("user");
	%>
<center>
	<form method="POST" action="UpdateUserServletU">
		<table>
			<tr>
				<td>User ID</td>
				<td><input type="text" name="userID" disabled="disabled"
					value="<%=user.getUserID()%>" /></td>
			</tr>
			<tr>
				<td>User Name</td>
				<td><input type="text" name="name"
					value="<%=user.getName()%>" /></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobile"
					value="<%=user.getMobile()%>" /></td>
			</tr>
			
			<tr>
				<td>Email</td>
				<td><input type="text" name="email"
					value="<%=user.getEmail()%>" /></td>
			</tr>			
			<tr>
				<td>NIC</td>
				<td><input type="text" name="nic"
					value="<%=user.getNIC()%>" /></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><input type="text" name="address"
					value="<%=user.getAddress()%>" /></td>
			</tr>
			<tr>
				<td>New Password</td>
				<td><input type="text" name="newPassword"
					value="<%=user.getNewPassword()%>" /></td>
			</tr>
			
			<tr>
				<td>Confirm Password</td>
				<td><input type="text" name="confirmPassword"
					value="<%=user.getConfirmPassword()%>" /></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="hidden" name="userID"
					value="<%=user.getUserID()%>" /> <input type="submit"
					value="Update User" class="update-button"/></td>
			
		
	</form>

	
		
			<td colspan="2">
				<form method="POST" action="DeleteUserServletU" style="width:auto; border-color:black;">
					<input type="hidden" name="userID"
						value="<%=user.getUserID()%>" /> <input type="submit"
						value="Delete User" class="delete-button"/>
				</form>
			</td>
		</tr>
	</table>
	
	</center>
<div id="footer">
		<table style="width:100%">
		<tr>
			<td><center><b>Hotline : </b></center></td>
			
			<td><b>071 6528117 </b></td>
			
			<td><center><b>Fax : </b></center></td>
			
			<td><b>086 6518 662</b></td>
			
			<td><center><b>Email :</b></center></td>
			
			<td><b>royalhotel@gmail.com </b></td>
			
			
  
</table>
	</div>	
	
</body>
</html>