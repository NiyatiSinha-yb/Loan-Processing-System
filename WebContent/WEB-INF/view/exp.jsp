<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- Special version of Bootstrap that only affects content wrapped in .bootstrap-iso -->
<link rel="stylesheet"
	href="https://formden.com/static/cdn/bootstrap-iso.css" />

<!--Font Awesome (added because you use icons in your prepend/append)-->
<link rel="stylesheet"
	href="https://formden.com/static/cdn/font-awesome/4.4.0/css/font-awesome.min.css" />





<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />



</head>

<style>
body {
	color: #000;
	overflow-x: hidden;
	height: 130%;
	background-image:
		/*  url("https://source.unsplash.com/1515x2990/?money,bank, cash,twenty dollar");
		url("https://thumbs.dreamstime.com/b/vertical-dome-utah-state-capital-building-pale-blue-sky-background-grand-columns-balcony-illuminated-bright-147968946.jpg"); */
		url("https://a.travel-assets.com/findyours-php/viewfinder/images/res70/483000/483736-capitol-hill-utah.jpg"); 
	background-repeat: no-repeat;
	   background-size: 260% 100%   
}

.card {
	background-color: white;
	padding: 40px 40px;
	/* margin-left: 450px; 
	 margin-right: -300px;
	margin-left: 100px;
	margin-top: 60px;
	margin-bottom: 60px; */
	opacity: 95%;
	width: 80%;
	border: none;
	box-shadow: 0 6px 12px 0 rgba(0, 0, 0, 0.2);
	border: none !important;
}

.blue-text {
	color: #00BCD4
}

.form-control-label {
	margin-bottom: 0
}

input, textarea, button {
	padding: 8px 15px;
	border-radius: 5px !important;
	margin: 5px 0px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	font-size: 18px !important;
	font-weight: 300
}

input:focus, textarea:focus {
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none;
	border: 1px solid #00BCD4;
	outline-width: 0;
	font-weight: 400
}
option{
color: black;
}

.btn-block {
	text-transform: uppercase;
	font-size: 15px;
	font-weight: 400;
	height: 43px;
	cursor: pointer
}

.btn-block:hover {
	color: #fff;
}

button:focus {
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none;
	outline-width: 0
}

</style>

<body>
	<br>
	<br>
	<div class="container">

		<div class="card">
			<h5 class="text-center mb-4">
				<b><i>Loan Applicant Entry Form</i></b>
			</h5>
			<form class="form-card" method="post" action="processForm" modelAttribute="customer" <%-- onsubmit="event.preventDefault() --%>">
				
				<!-- HTML Form (wrapped in a .bootstrap-iso div) -->
				<div class="bootstrap-iso">
					<div class="container-fluid">
						<div class="row">
						
							<br>
							<div class=blue-text>

								<h4>
									<i> Identification details </i>
								</h4>
							</div>
							<div class="form-group ">
								<label class="control-label " for="name"> First Name </label> <input
									class="form-control" id="name" name="name"
									placeholder="Enter your first name" type="text" required/>
									
							</div>
							<div class="form-group ">
								<label class="control-label " for="name1"> Middle Name </label>
								<input class="form-control" id="name1" name="name1"
									placeholder="Enter your middle name" type="text" />
							</div>
							<div class="form-group ">
								<label class="control-label " for="name2"> Last Name </label> <input
									class="form-control" id="name2" name="name2"
									placeholder="Enter your last name" type="text" required/>
							</div>
							
								<div class="form-group ">
									<label class="control-label " for="date"> Date </label>
									<div class="input-group">
										<div class="input-group-addon">
											<i class="fa fa-calendar"> </i>
										</div>
										<input class="form-control" id="date" name="date"
											placeholder="DD-MM-YYYY" required/>
									</div>
								</div>
						
						</div>
					</div>
				</div>
			



				<!--  jQuery -->
				<script type="text/javascript"
					src="https://code.jquery.com/jquery-1.11.3.min.js"></script>


				<script type="text/javascript"
					src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

				<script>
										$(document)
												.ready(
														function() {
															var date_input = $('input[name="date"]'); //our date input has the name "date"
															var container = $('.bootstrap-iso form').length > 0 ? $(
																	'.bootstrap-iso form')
																	.parent()
																	: "body";
															var options = {
																format : 'dd-mm-yyyy',
																container : container,
																todayHighlight : true,
																autoclose : true,
															};
															date_input
																	.datepicker(options);
														})
									</script>




				<div class="bootstrap-iso">
					<div class="container-fluid">
						<div class="row">
							<!-- <div class="col-md-6 col-sm-6 col-xs-12"> -->
							<div class=blue-text>
								<br> <br>
								<h4>
									<i> Personal details </i>
								</h4>
							</div>
							
								<div class="form-group ">
									<label class="control-label " for="select" > Maritial
										Status </label> <select class="select form-control" id="select"
										name="select"  style="font-size:18px; color:gray">
										<option value="" disabled selected hidden>Open this select menu</option>
										<option value="Single">Single</option>
										<option value="Married">Married</option>
										<option value="Seperated">Seperated</option>
										<option value="Divorced">Divorced</option>
										<option value="Widow">Widow</option>
										
									</select>
								</div>

						
							
								<div class="form-group ">
									<label class="control-label " for="number"> SSN Number
									</label> <input class="form-control" id="number" path="ssnNumber" name="number" 
										placeholder="SSN Number" type="number" required />
										<form:errors path="ssnNumber"></form:errors>
								</div>

								<br> <br>
								<div class=blue-text>
									<h4>
										<i> Loan details </i>
									</h4>
								</div>
								<div class="form-group ">
									<label class="control-label " for="number1"> Loan
										Amount </label> <input class="form-control" id="number1"
										name="number1" placeholder="Loan Amount in $" type="number" required/>
								</div>
								<div class="form-group ">
									<label class="control-label " for="select"> Loan
										purpose </label> <select class="select form-control" id="select"
										name="select" style="font-size:18px; color:gray" required >
										<option value="" disabled selected hidden>Open this select menu</option>
										<option value="Debt">Debt</option>
										<option value="Home Loan">Home Loan</option>
										<option value="Educational Loan">Educational Loan</option>
										<option value="Personal Loan">Personal Loan</option>
									</select>
								</div>
								<div class="form-group ">
									<label class="control-label " for="message">
										Description </label>
									<textarea class="form-control" cols="40" id="message"
										name="message" placeholder="Loan Application Reason" rows="10"></textarea>
								</div>

								<br> <br>
								<div class=blue-text>
									<h4>
										<i> Contact details </i>
									</h4>
								</div>

								<div class="form-group ">
									<label class="control-label " for="number2"> Home Phone
									</label> <input class="form-control" id="number2" name="number2"
										placeholder="Enter your 10 digit residential contact number"
										type="number" required/>
								</div>
								<div class="form-group ">
									<label class="control-label " for="number3"> Office
										Phone </label> <input class="form-control" id="number3" name="number3"
										placeholder="Enter your 10 digit office contact number"
										type="number" required/>
								</div>
								<div class="form-group ">
									<label class="control-label " for="number4"> Mobile </label> <input
										class="form-control" id="number4" name="number4"
										placeholder="Enter your 10 digit personal contact number"
										type="number" required/>
										
								</div>
								<div class="form-group ">
									<label class="control-label requiredField" for="email">
										Email Address <span class="asteriskField"> * </span>
									</label> <input class="form-control" id="email" name="email"
										placeholder="username@domain" type="text" required/>
								</div>
								<br> <br>
								<div class=blue-text>
									<h4>
										<i> Address details </i>
									</h4>
								</div>
								<div class="form-group ">
									<label class="control-label " for="text"> Address Line
										1 </label> <input class="form-control" id="text" name="text"
										placeholder="House Number" type="text" required/>
								</div>
								<div class="form-group ">
									<label class="control-label " for="text2"> Address Line
										2 </label> <input class="form-control" id="text2" name="text2"
										placeholder="Street, Colony" type="text" />
								</div>
								<div class="form-group ">
									<label class="control-label " for="subject"> City </label> <input
										class="form-control" id="subject" name="subject"
										placeholder="City" type="text" required/>
								</div>
								<div class="form-group ">
									<label class="control-label " for="subject1"> State </label> <input
										class="form-control" id="subject1" name="subject1"
										placeholder="State" type="text" required/>
								</div>
								<div class="form-group ">
									<label class="control-label " for="number5"> Postal
										Code </label> <input class="form-control" id="number5" name="number5"
										placeholder="Enter your 5 digit postal code" type="number" required/>
								</div>
								<br> <br>
								<div class=blue-text>
									<h4>
										<i> Employment details </i>
									</h4>
								</div>
								

								
									<div class="form-group ">
										<label class="control-label " for="name2"> Employer
											Name </label> <input class="form-control" id="name2" name="name2"
											placeholder="Enter your current employer name" type="text" required/>
									</div>
									<div class="form-group ">
										<label class="control-label " for="number"> Annual
											Salary </label> <input class="form-control" id="number" name="number"
											placeholder="Enter your annual salary for the current year"
											type="number" required/>
									</div>
									<div class="form-group ">
										<label class="control-label " for="subject">
											Designation </label> <input class="form-control" id="subject"
											name="subject" placeholder="Enter your designation"
											type="text" required/>
									</div>
									<div class="form-group ">
										<label class="control-label " for="number5"> Experience
											Code </label>
											<span> <input class="form-control" id="number5" name="number5"
											placeholder="In Years"
											type="number" required/>
											<input class="form-control" id="number5" name="number5"
											placeholder="In Months"
											type="number" required/>
											</span>
									</div>
									

									<div class=blue-text>
										<h5>
											<i> Office Address </i>
										</h5>
									</div>
									<div class="form-group ">
										<label class="control-label " for="text"> Address Line
											1 </label> <input class="form-control" id="text" name="text"
											placeholder="Building Name" type="text" required/>
									</div>
									<div class="form-group ">
										<label class="control-label " for="text2"> Address
											Line 2 </label> <input class="form-control" id="text2" name="text2"
											placeholder="Street" type="text" />
									</div>
									<div class="form-group ">
										<label class="control-label " for="subject"> City </label> <input
											class="form-control" id="subject" name="subject"
											placeholder="City" type="text" required/>
									</div>
									<div class="form-group ">
										<label class="control-label " for="subject1"> State </label> <input
											class="form-control" id="subject1" name="subject1"
											placeholder="State" type="text" required/>
									</div>
									<div class="form-group ">
										<label class="control-label " for="number5"> Postal
											Code </label> <input class="form-control" id="number5" name="number5"
											placeholder="Enter your 5 digit office postal code"
											type="number" required/>
									</div>
									
									<div class="flex justify-center">
							<button
								class="inline-flex text-white bg-blue-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
								formaction="customer/showForm"><p style ="color:white; padding-top: 5px;">Submit</p></button>
								<span>&nbsp;</span>
							<button
								class="ml-4 inline-flex text-red bg-blue-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
								formaction="customer/viewForm"><p style ="color:white; padding-top: 5px;">Refresh Form</p></button>
							<span>&nbsp;</span>
							<button
								class="ml-4 inline-flex text-white bg-blue-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
								formaction="/"><p style ="color:white; padding-top: 5px;">Home</p></button>
						
						</div>
					</div>
					</div>
						</div>
						</form>
					</div>
				</div>
				<br>
				<br>
				<script>
				</script>
				



	
	<!-- <script>
			function validate(val) {
				v1 = document.getElementById("fname");
				v2 = document.getElementById("lname");
				v3 = document.getElementById("email");
				v4 = document.getElementById("mob");
				v5 = document.getElementById("job");
				v6 = document.getElementById("ans");

				flag1 = true;
				flag2 = true;
				flag3 = true;
				flag4 = true;
				flag5 = true;
				flag6 = true;

				if (val >= 1 || val == 0) {
					if (v1.value == "") {
						v1.style.borderColor = "red";
						flag1 = false;
					} else {
						v1.style.borderColor = "green";
						flag1 = true;
					}
				}

				if (val >= 2 || val == 0) {
					if (v2.value == "") {
						v2.style.borderColor = "red";
						flag2 = false;
					} else {
						v2.style.borderColor = "green";
						flag2 = true;
					}
				}
				if (val >= 3 || val == 0) {
					if (v3.value == "") {
						v3.style.borderColor = "red";
						flag3 = false;
					} else {
						v3.style.borderColor = "green";
						flag3 = true;
					}
				}
				if (val >= 4 || val == 0) {
					if (v4.value == "") {
						v4.style.borderColor = "red";
						flag4 = false;
					} else {
						v4.style.borderColor = "green";
						flag4 = true;
					}
				}
				if (val >= 5 || val == 0) {
					if (v5.value == "") {
						v5.style.borderColor = "red";
						flag5 = false;
					} else {
						v5.style.borderColor = "green";
						flag5 = true;
					}
				}
				if (val >= 6 || val == 0) {
					if (v6.value == "") {
						v6.style.borderColor = "red";
						flag6 = false;
					} else {
						v6.style.borderColor = "green";
						flag6 = true;
					}
				}

				flag = flag1 && flag2 && flag3 && flag4 && flag5 && flag6;

				return flag;
			}
		</script> -->
</body>