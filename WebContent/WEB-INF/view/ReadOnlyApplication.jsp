<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.rayman.lps.util.SortUtils"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Customer registration form</title>
<style>
.error {
	color: red
}

.right.error {
	font-weight: 10px;
}

.h2 {
	left: 10vw;
	font-family: Verdana ;
	margin-left: 235px;
	font-weight: 600;
}

.details{
margin-left: 650px;
}
.left {
	width: 40%;
	padding: 5px;
	left: 10vw;
	position: absolute;
	margin-left: 100px;
}

body {
	background-image:
		url("https://t4.ftcdn.net/jpg/03/20/85/41/360_F_320854192_D3oAI22yNude4hgcYYPjLzufeFl3RZDU.jpg");
	background-repeat: no-repeat;
	background-size: 1600px 1620px;
}

.right {
	width: 50%;
	padding: 10px;
	transform: translate(-20, 0px);
	position: absolute;
	top: 10;
	right: -10vw;
	margin-right: 5px;
	margin-top: -30px;
}

.left  input {
	margin: 15px;
	width: 200px;
	border: 3px solid black;
	display: inline-block;
	border-radius: 16px;
	height: 18px;
}

.left select {
	margin: 15px;
	width: 200px;
	border: 3px solid black;
	display: inline-block;
	border-radius: 16px;
	height: 24px;
}

.left textarea {
	margin: 45px 45px;
	width: 65vw;
	height: 120px;
	border: 3px solid black;
	border-radius: 23px;
}

.right  input {
	margin: 5px 15px;
	width: 250px;
	border: 3px solid black;
	border-radius: 20px;
	height: 18px;
}

.child-o, .child-l {
	border: 3px solid black;
	padding-left: 20px;
	padding-bottom: 20px;
	padding-top: 25px;
	padding-right: 2px;
	display: inline-block;
}

.emp-right {
	margin-left: 600px;
	transform: translate(0, -390px);
}

.Address {
	margin-left: 90px;
	padding-bottom: -70px;
	margin-top: -10px;
}

.Employment {
	border: 3px solid black;
	width: 190%;
	padding: -10px;
}

.left-1 {
	padding-top: 35px;
	padding-left: 10px;
	padding-bottom: 0px;
}

.button input {
	width: 100px;
	border: 3px solid black;
}

.button1 {
	position: absolute;
	top: 1570px;
	right: 200px;
	border: 3px solid black;
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
	top: 1570px;
	right: 90px;
	border: 3px solid black;
	color: black;
	padding: 10px 25px;
	text-align: center;
	font-size: 15px;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 16px;
}

.button1:hover, .button2:hover {
	background-color: #778899;
	color: white;
}

::placeholder {
	text-color: grey;
	padding: 5px;
}

#loan, #status {
	color: black;
}

.left select {
	color: grey;
}
</style>
</head>
<body>
	<div class="container">
		<form:form class="form-vertical" method="get" modelAttribute="customer">
		<%-- <c:forEach var="tempCustomer" items="${customer}">
			<table>
			<tr>${tempCustomer.ID}</tr>
			</table>
		</c:forEach> --%>
		<hr>
		<div class="details">
		<h4>Applicant ID:-${customer.ID}</h4>
		<h4>FirstName:-${customer.firstName}</h4>
		<h4>Loan Amount:-${customer.loanAmount}</h4>
		</div>
		<hr>
			<h2 class="h2">Here is Your Application!</h2>
			<br>
			<div class="row">
				<div class="left">
					<table style="margin-top: -130px;">
						<tr>
							<td><span><b>First name</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="text"
										path="firstName" name="firstName" placeholder="First Name" readOnly="true" /></td>
							<td><form:errors path="firstName" cssClass="error">
								</form:errors></td>
						</tr>
						<br>
						<tr>
							<td><span><b>Middle name</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="text"
										path="middleName" name="middleName" placeholder="Middle Name" readOnly="true" /></td>
							<td><form:errors path="middleName" cssClass="error">
								</form:errors></td>
						</tr>
						<br>
						<tr>
							<td><span><b>Last name</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="text"
										path="lastName" name="lastName" placeholder="Last Name" readOnly="true" /></td>
							<td><form:errors path="lastName" cssClass="error">
								</form:errors></td>
							<br>
						<tr>
							<td><span><b>Date of Birth</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="date"
										style="padding: 1px;" name="dateOfBirth" path="dateOfBirth" readOnly="true" /></td>
							<td><form:errors path="dateOfBirth" cssClass="error">
								</form:errors></td>
							<br>
						<tr>
							<td><span><b>Marital Status</b></span></td>
							<td><span>&nbsp;&nbsp;<form:select
										name="maritalStatus" path="maritalStatus" id="status"
										style="width: 210px; border: 3px solid black; height: 25px;">
										<option value="" disabled selected hidden readOnly="true"><span>&nbsp;Option</option>
										<option value="Single">Single</option>
										<option value="Married">Married</option>
										<option value="Separated">Separated</option>
										<option value="Divorced">Divorced</option>
										<option value="Widow">Widow</option>
										<form:errors path="maritalStatus" cssClass="error">
										</form:errors>
									</form:select> <br></td>
						<tr>
							<td><span><b>SSN Number</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="number"
										name="ssnNumber" path="ssnNumber" placeholder="SSN Number" readOnly="true" /></td>
							<td><form:errors path="ssnNumber" cssClass="error">
								</form:errors></td>
							<br>
						<tr>
							<td><span><b>Loan Amount</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="number"
										name="loanAmount" path="loanAmount" placeholder="Loan Amount" readOnly="true"/></td>
							<td><form:errors path="loanAmount" cssClass="error">
								</form:errors></td>
							<br>
						<tr>
							<td><span><b>Loan Purpose</b></span></td>
							<td><span>&nbsp;&nbsp;<form:select name="loanPurpose"
										path="loanPurpose" id="loan" placeholder="Option"
										style="width: 210px; border: 3px solid black; height: 25px;" readOnly="true">
										<form:errors path="loanPurpose" cssClass="error">
										</form:errors>
										<option value="" disabled selected hidden><span>&nbsp;Option</option>
										<option value="Debt">Debt</option>
										<option value="Home Loan">Home Loan</option>
										<option value="Educational Loan">Education Loan</option>
										<option value="Personal Loan">Personal Loan</option>
									</form:select></td>
						</tr>

					</table>
					<table>
						<tr>
							<td><span
								style="transform: translate(0px, 30px); position: absolute; margin-top: -70px;">
									<b>Description</b>
							</span></td>
							<td><span>&nbsp;&nbsp; <form:textarea
										name="description"
										style="width:250%;transform:translate(10,5px);margin-left: 120px;"
										path="description"
										placeholder="Describe the reason why you are applying for the loan..." readOnly="true"/></td>
							<td><form:errors path="description" cssClass="error">
								</form:errors></td>
						</tr>
					</table>
					<span><b>Employment Details</b></span> <br> <br>
					<div class="Employment">
						<div class="left-1">
							<table>
								<tr>
									<td><span><b>Employer Name</b></span></td>
									<td><span>&nbsp;&nbsp;<form:input type="text"
												name="employerName" path="employerName" placeholder="Name" readOnly="true" /></td>
									<td><form:errors path="employerName" cssClass="error">
										</form:errors></td>
								</tr>
								<tr>
									<td><span><b>Annual Salary (in $)</b></span></td>
									<td><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input
												type="number" path="annualSalary" name="annualSalary"
												placeholder="Annual Salary" readOnly="true" /></td>
									<td><form:errors path="annualSalary" cssClass="error">
										</form:errors></td>
								</tr>
							</table>
							<span><b>Address</b></span>
							<div class="Address">
								<table>
									<tr>
										<td><span><b>Address Line 1</b></span></td>
										<td><span>&nbsp;&nbsp;<form:input type="text"
													name="empAddress1" path="empAddress1"
													placeholder="Address Line 1" readOnly="true"/></td>

										<td><form:errors path="empAddress1" cssClass="error">
											</form:errors></td>
									</tr>
									<tr>
										<td><span><b>Address Line 2</b></span></td>
										<td><span>&nbsp;&nbsp;<form:input type="text"
													name="empAddress2" path="empAddress2"
													placeholder="Address Line 2" readOnly="true" /></td>

										<td><form:errors path="empAddress2" cssClass="error">
											</form:errors></td>
									</tr>
									<tr>
										<td><span><b>City</b></span></td>
										<td><span>&nbsp;&nbsp;<form:input type="text"
													name="empCity" path="empCity" placeholder="City" readOnly="true" /></td>

										<td><form:errors path="empCity" cssClass="error">
											</form:errors></td>
									</tr>
									<tr>
										<td><span><b>State</b></span></td>
										<td><span>&nbsp;&nbsp;<form:input type="text"
													name="empState" path="empState" placeholder="State" readOnly="true" /></td>

										<td><form:errors path="empState" cssClass="error">
											</form:errors></td>
									</tr>
									<tr>
										<td><span><b>Postal Code</b></span></td>
										<td><span>&nbsp;&nbsp;<form:input type="number"
													name="empPostal" path="empPostal" placeholder="12345" readOnly="true" /></td>

										<td><form:errors path="empPostal" cssClass="error">
											</form:errors></td>
									</tr>
								</table>
							</div>
						</div>

						<div class="emp-right">
							<span><b>Experience</b></span><span>&nbsp;&nbsp; <form:input
									type="number" style="width: 80px;" path="experienceYear"
									name="experienceYear" placeholder="Year" readOnly="true" /> <form:errors
									path="experienceYear" cssClass="error">
								</form:errors> <form:input type="number" style="width: 80px;"
									name="experienceMonth" path="experienceMonth"
									placeholder="Month" readOnly="true" /> <form:errors path="experienceMonth"
									cssClass="error">
								</form:errors> <br> <span><b>Designation</b></span><span>&nbsp;&nbsp;<form:input
										name="designation" type="text" path="designation"
										placeholder="Designation" readOnly="true" /> <form:errors path="designation"
										cssClass="error">
									</form:errors>
						</div>
					</div>

				</div>
			</div>

			
			<button class="button1" value="Submit">
				<b>Submit</b>
			</button>
			<button class="button2" value="Cancel" formaction="viewForm"
				modelAttribute="customer">
				<b>Cancel</b>
			</button>

			<div class="right">
				<b>Address</b><br>
				<div class="child-o">
					<table>
						<tr>
							<td><span><b>Address Line 1</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="text"
										name="address1" path="address1" placeholder="Address Line 1" readOnly="true" /></td>
							<td><form:errors path="address1" cssClass="error">
								</form:errors></td>
						</tr>
						<tr>
							<td><span><b>Address Line 2</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="text"
										name="address2" path="address2" placeholder="Address Line 2" readOnly="true" /></td>
							<td><form:errors path="address2" cssClass="error">
								</form:errors></td>
						</tr>
						<tr>
							<td><span><b>City</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="text"
										name="city" path="city" placeholder="city" readOnly="true" /></td>
							<td><form:errors path="city" cssClass="error"></form:errors></td>
						</tr>
						<tr>
							<td><span><b>State</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="text"
										name="state" path="state" placeholder="state" readOnly="true" /></td>
							<td><form:errors path="state" cssClass="error"></form:errors></td>
						</tr>
						<tr>
							<td><span><b>Postal Code</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="number"
										name="postalCode" path="postalCode" placeholder="12345" readOnly="true" /></td>
							<td><form:errors path="postalCode" cssClass="error"></form:errors></td>
						</tr>
					</table>
				</div>
				<br> <br>
				<b> Contact Information</b><br>
				<div class="child-l">
					<table>
						<tr>
							<td><span><b>Home Phone</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="number"
										name="homePhone" path="homePhone" placeholder="123456" readOnly="true" /></td>
							<td><form:errors path="homePhone" cssClass="error">
								</form:errors></td>
						</tr>
						<tr>
							<td><span><b>Office Phone</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="number"
										name="officePhone" path="officePhone" placeholder="123456" readOnly="true" /></td>
							<td><form:errors path="officePhone" cssClass="error">
								</form:errors></td>
						</tr>
						<tr>
							<td><span><b>Mobile</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="number"
										name="mobile" path="mobile" placeholder="123456" readOnly="true" /></td>
							<td><form:errors path="mobile" cssClass="error">
								</form:errors></td>
						</tr>
						<tr>
							<td><span><b>Email Address</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="text"
										path="emailAddress" name="emailAddress"
										placeholder="test@test.com" readOnly="true"/></td>
							<td><form:errors path="emailAddress" cssClass="error">
								</form:errors></td>
						</tr>
					</table>
				</div>
			</div>
			
		</form:form>
	</div>

</body>
</html>