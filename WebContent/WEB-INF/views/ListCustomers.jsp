<%@page import="com.oop.model.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.oop.service.CustomerServiceImpl"%>
<%@page import="com.oop.service.ICustomerService"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet"
   type = "text/css"
   href = "list.css" />
   <link rel = "stylesheet"
   type = "text/css"
   href = "home.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>list</title>
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
	 margin-top:15px;
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
			<td><center><a href ="afterhome.jsp"><img src="image/logout.jpg" width="100" height="80"/></a><a href ="afterhome.jsp" style="text-decoration:none"><h3 style="color: #e8daef">
			<form method="POST" action="afterhome.jsp" style="color:white; width:60px;"  >Logout</form></h3></a></center></td>
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
	
	
<a href="payment.jsp"><button style="color:black ; background-color:yellow;">+Add Payment</button></a>
	
	  <div align="left">
	  
	  <center>
		<table border="1" cellpadding="12">
		 <caption><h2 style="color:red ; font-size:36px;">List of Customers</h2></caption>
		 
		  <tr>
                <th>Customer ID</th>
                <th>Customer Name</th> 
                <th>Mobile</th>
                <th>Type</th>
                <th>CardNo</th>
                <th>Expiry</th>
                <th>CVC</th>
                <th>Bank</th>
                <th>Action</th>
            </tr>
            <%
            ICustomerService iCustomerService = new CustomerServiceImpl();
			ArrayList<Customer> arrayList = iCustomerService.getCustomers();
			
			for(Customer customer : arrayList){
			%>
			 <tr>
				<td> <%=customer.getCustomerID() %> </td>
				<td> <%=customer.getName() %> </td>
				<td> <%=customer.getMobile() %> </td>
				<td> <%=customer.getType() %> </td>
				<td> <%=customer.getCardNo() %> </td>
				<td> <%=customer.getExpiry() %> </td>
				<td> <%=customer.getCVC() %> </td>
				<td> <%=customer.getBank() %> </td>	
				<td> 
				<form method="POST" action="GetCustomerServlet">
				<input type="hidden" name="customerID" value="<%=customer.getCustomerID()%>"/>
				 <input type="submit" value= "view" class="select-button" /> 
				 </form>
				 </td>	
				</tr>			
			<%	
			   }
            %>     
		</table>
			</center>
		
		</div>
		
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