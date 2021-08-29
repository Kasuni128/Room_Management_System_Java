<%@page import="com.oop.model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.oop.service.UserServiceImpl"%>
<%@page import="com.oop.service.IUserService"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "list.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SLIIT OOP User Management</title>
<link rel = "stylesheet"
   type = "text/css"
   href = "home.css" />
   
   
   
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


.add-button{
margin-top:25px;
color:red;
font-size:58px;

} 

.list-button{
border-radius:100px;
background:green;
}  

table th{
	
		background:red;
		opacity:0.6;
		color:white;
		 font-size: 20px;
	
}
table h2{
	
	color:red;
}

table{
	
	background:black;
	color:white;
}
</style></head>
<body>
<div id="header">
	
		<table style="width:100%" >
		<tr>
			
			<td><img src="image/logo1.jpg" width="200" height="100" align="left" style="float:left"/></td>
			<td><h1 style="font-size:80px"> Royal Hotel</h1></td>
			<td><center><a href ="afterhome.jsp"><img src="image/logout.jpg" width="100" height="80"/></a><a href ="afterhome.jsp" style="text-decoration:none"><h3 style="color: #e8daef">
			<form method="POST" action="afterhome.jsp">Logout</form></h3></a></center></td>
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
	<center>
	<form method="POST" action="home.jsp">
	<table>
	<tr>
	<td >
		<input type="submit" value="Register Now" class="list-button"/>
</td>
	</tr>
	
	</table>
		</form>
		</center>
		
		<center>
		 
		<table  style="width:100%">
	
		
	 
	  <table border="1" cellpadding="12">
		
		 <h2 class="h2" style="color:black"><b>My Profile</b></h2>
		
		
		  <tr>
                <th>User ID</th>
                <th>User Name</th>
                <th>Mobile</th>
                <th>Email</th>
                <th>NIC</th>
                <th>Address</th>
                <th>New Password</th>
                <th>Confirm Password</th>
                <th>Action</th>
            </tr>
            <%
            IUserService iUserService = new UserServiceImpl();
			ArrayList<User> arrayList = iUserService.getUsers();
			
			for(User user : arrayList){
			%>
			 <tr>
				<td> <%=user.getUserID() %> </td>
				<td> <%=user.getName() %> </td>
				<td> <%=user.getMobile() %> </td>
				<td> <%=user.getEmail() %> </td>
				<td> <%=user.getNIC() %> </td>
				<td> <%=user.getAddress() %> </td>
				<td> <%=user.getNewPassword() %> </td>
				<td> <%=user.getConfirmPassword() %> </td>	
				<td> 
				<form method="POST" action="GetUserServletU">
				<input type="hidden" name="userID" value="<%=user.getUserID()%>"/>
				 <input type="submit" value= "Select User" class="select-button" /> 
				 </form>
				 </td>	
				</tr>			
			<%	
			   }
            %>     
		</table>
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