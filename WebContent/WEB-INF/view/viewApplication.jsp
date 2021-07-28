<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>

<head>

<title>View Application</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">

</head>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 60%;
margin-left: auto;
  margin-right: auto;
}
a:link {
  color: black;
  background-color: transparent;
  text-decoration: none;
}
#customers td, #customers th {
  border: 2px solid #ddd;
  padding: 8px;
  text-align: center;
  color: black;
}
#button1 {
	position: absolute;
	border: 2px solid gray;
	right: 400px;
  color: white;
  padding: 10px 25px;
  text-align: center;
  font-size: 15px;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 16px;
}
#button2 {
	position: absolute;
	border: 2px solid gray;
	right: 300px;
  color: white;
  padding: 10px 25px;
  text-align: center;
  font-size: 15px;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 16px;
}

#customers tr:nth-child(even){background-color: #F8F8FF;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #778899;
  color: white;
  text-align: center;
}
</style>
</head>
<body>


<table border="1" id="customers">
<tr>
<th>Application ID</th>
<th>First Name</th>
<th>Email Address</th>
<th>Submitted Date</th>
</tr>
<c:forEach var="tempCustomer" items="${customer}">
<c:url var="updateLink" value="/customer/showFormForUpdate">
<c:param name="ID" value="${tempCustomer.ID}"/>
</c:url>
<tr>
<td><a href="${updateLink}">${tempCustomer.ID}</a></td>
<td>${tempCustomer.firstName}</td>
<td>${tempCustomer.emailAddress}</td>
<td>${tempCustomer.submitted_Date}</td>
</tr>
</c:forEach>
</table>
<br>
<form:form  method="post">

<button class="inline-flex text-white bg-gray-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
  formaction="/lpswithhibernate/customer/showForm" id="button1"><b>Add a customer</b></button>
<button class="inline-flex text-white bg-gray-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
 formaction="/lpswithhibernate/" id="button2"><b>Back</b></button>
 

<!-- <button class="button1"  formaction="/lpswithhibernate">Back</button>
<button class="button2" formaction="/lpswithhibernate/customer/showForm">Add a customer</button> -->
</form:form>
</body>
</html>