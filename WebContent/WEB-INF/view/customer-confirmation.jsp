<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
<title>Customer Confirmation</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">

<style>
.button1 {
	position: absolute;
	top: 200px;
	right: 550px;
	border: 2px solid gray;
  color: black;
  padding: 10px 25px;
  text-align: center;
  font-size: 15px;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 16px;
}
.button2 {
	position: absolute;
	top: 200px;
	right: 340px;
	border: 2px solid gray;
  color: black;
  padding: 10px 25px;
  text-align: center;
  font-size: 15px;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 16px;
}
.right
{
width: 90%;
	padding: 10px;
	transform: translate(-20, 0px);
	position: absolute;
	top: 10;
	right: -10vw;
	margin-right: 30px;
	margin-top: -10px;
}
</style>
</head>

<body>

<!-- The customer is confirmed: ${customer.firstName } ${customer.lastName}
<br><br>

Postal Code: ${customer.postalCode}-->

 <%@ page import="java.sql.*" %>
 <%@ page import="java.util.Date" %>
 <%@ page import="java.text.DateFormat" %>
  <%@ page import="java.text.SimpleDateFormat" %>
 
 
 <form:form method="get" >
 <div class="right"> 
			<font size="6" font face="Verdana"><br>Application Submitted Successfully</font> 
				<br> 
				<font face="Verdana"><p>
				<br>
					CONGRATULATIONS !!! Your application is submitted successfully. Our automated system will determine if you application is<br>
					accepted or not.<br><br>
					<div class="flex justify-center">
							<button
								class="inline-flex text-white bg-gray-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
								formaction="/lpswithhibernate/">Home</button>
							<button
								class="ml-4 inline-flex text-white bg-gray-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
								formaction="/lpswithhibernate/customer/viewForm">View All Applications</button>
						</div>
					<!-- <button class="button1" value="Submit" formaction="/lpswithhibernate/">Home</button>
   <button class="button2" value="View" formaction="/lpswithhibernate/customer/viewForm">View Applications</button> -->
				</p> </font>

		</div>
		</form:form>
</body>
</html>