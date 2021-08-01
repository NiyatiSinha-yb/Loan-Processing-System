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
.formerror{
	color:red;
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
      <form:form class="form-card" method="post" action="processForm" name="sForm" modelAttribute="customer">
		<div class="card">
			<h5 class="text-center mb-4">
				<b><i>Loan Applicant Entry Form</i></b>
			</h5>
		<%-- 	<form class="form-card" method="post" action="processForm" name="sForm" modelAttribute="customer" onsubmit="return validateForm()"> --%>
				
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
							<div class="form-group" id="fnameID">
								<label class="control-label " for="name"> First Name </label> <input
									class="form-control" name="fname" path="firstName"
									placeholder="Enter your first name" type="text"/>
									<form:errors path="firstName" cssClass="formerror"></form:errors>
									
									
							</div>
						
							<div class="form-group" id="mnameID">
								<label class="control-label " for="name"> Middle Name </label> <input
									class="form-control" name="mname" path="middleName"
									placeholder="Enter your first name" type="text" />
									
							</div>
								 
							<div class="form-group" id="lnameID">
								<label class="control-label " for="name"> Last Name </label> <input
									class="form-control" name="lname" path="lastName"
									placeholder="Enter your first name" type="text" />
									
							</div>
							
								<div class="form-group ">
									<label class="control-label" for="date"> Date </label>
									<div class="input-group">
										<div class="input-group-addon">
											<i class="fa fa-calendar"> </i>
										</div>
										<input class="form-control" id="date" name="date" path="dateOfBirth"
											placeholder="DD-MM-YYYY" />
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
							
								<div class="form-group">
									<label class="control-label" for="select" > Maritial
										Status </label> <select class="select form-control" id="mStatus" path="maritalStatus"
										name="select"  style="font-size:18px; color:gray">
										<option value="" disabled selected hidden>Open this select menu</option>
										<option value="Single">Single</option>
										<option value="Married">Married</option>
										<option value="Seperated">Seperated</option>
										<option value="Divorced">Divorced</option>
										<option value="Widow">Widow</option>
										
									</select>
								</div>

						
							
								<div class="form-group " id="ssnNumber">
									<label class="control-label " for="number"> SSN Number
									</label> <input class="form-control"  name="number" path="ssnNumber"
										placeholder="SSN Number" type="number"  />
										
								</div>

								<br> <br>
								<div class=blue-text>
									<h4>
										<i> Loan details </i>
									</h4>
								</div>
									<div class="form-group" id="LoanAmtID">
									<label class="control-label" for="number1"> Loan
										Amount </label> <input class="form-control" name="LoanAmt" path="loanAmount" placeholder="Loan Amount in $" type="number" />
								</div>
							<div class="form-group ">
									<label class="control-label " for="select"> Loan
										purpose </label> <select class="select form-control" id="LoanP" path="loanPurpose"
										name="select" style="font-size:18px; color:gray"  >
										<option value="" disabled selected hidden>Open this select menu</option>
										<option value="Debt">Debt</option>
										<option value="Home Loan">Home Loan</option>
										<option value="Educational Loan">Educational Loan</option>
										<option value="Personal Loan">Personal Loan</option>
									</select>
									
								</div>
								
								<div class="form-group " id="DescriptionID">
									<label class="control-label " for="message">
										Description </label>
									<textarea class="form-control" cols="40" id="desc" path="description"
										name="Description" placeholder="Loan Application Reason" rows="10"></textarea>
								</div>

								<br> <br>
								<div class=blue-text>
									<h4>
										<i> Contact details </i>
									</h4>
								</div>

								<div class="form-group " id="homePhoneID">
									<label class="control-label " for="number2"> Home Phone
									</label> <input class="form-control" id="hPhone" name="homePhone" path="homePhone"
										placeholder="Enter your 10 digit residential contact number"
										type="number" />
								</div>
								<div class="form-group "  id="OfficePhoneID">
									<label class="control-label " for="number3"> Office
										Phone </label> <input class="form-control" name="OfficePhone" path="officePhone"
										placeholder="Enter your 10 digit office contact number"
										type="number" />
								</div>
								<div class="form-group " id="MobileID" >
									<label class="control-label " for="number4"> Mobile </label> <input
										class="form-control" name="Mobile" path="mobile"
										placeholder="Enter your 10 digit personal contact number" 
										type="number" />
										
								</div>
								<div class="form-group" id="EmailAddressID">
									<label class="control-label Field" for="email">
										Email Address <span class="asteriskField"> * </span>
									</label> <input class="form-control"  name="EmailAddress" path="emailAddress"
										placeholder="username@domain" type="email" />
								</div>
								
								<br> <br>
								<div class=blue-text>
									<h4>
										<i> Address details </i>
									</h4>
								</div>
								
								<div class="form-group " id="Address1ID">
									<label class="control-label " for="text"> Address Line
										1 </label> <input class="form-control" name="Address1" path="address1"
										placeholder="House Number" type="text" />
								</div>
								<div class="form-group " id="Address2ID">
									<label class="control-label " for="text2"> Address Line
										2 </label> <input class="form-control" id="text2" name="text2" path="address2"
										placeholder="Street, Colony" type="text" />
								</div>
							
								<div class="form-group " id="CityID">
									<label class="control-label " for="subject"> City </label> <input
										class="form-control" name="City" path="city"
										placeholder="City" type="text" />
								</div>
								<div class="form-group " id="StateID">
									<label class="control-label " for="subject1"> State </label> <input
										class="form-control" name="State" path="state"
										placeholder="State" type="text" />
								</div>
								<div class="form-group" id="PostalCodeID">
									<label class="control-label " for="number5"> Postal
										Code </label> <input class="form-control" name="PostalCode" path="postalCode"
										placeholder="Enter your 5 digit postal code" type="number" />
								</div>
			
								<br> <br>
								<div class=blue-text>
									<h4>
										<i> Employment details </i>
									</h4>
								</div>
								

								
									<div class="form-group " id="EmployerNameID">
										<label class="control-label " for="name2"> Employer
											Name </label> <input class="form-control"  name="EmployerName" path="employerName"
											placeholder="Enter your current employer name" type="text" />
									</div>
									<div class="form-group" id="AnnualSalaryID">
										<label class="control-label " for="number"> Annual
											Salary </label> <input class="form-control" name="AnnualSalary" path="annualSalary"
											placeholder="Enter your annual salary for the current year"
											type="number" />
									</div>
									<div class="form-group " id="DesignationID">
										<label class="control-label " for="subject">
											Designation </label> <input class="form-control"
											name="Designation" path="designation" placeholder="Enter your designation"
											type="text" />
									</div>
								<!-- 	<div class="form-group ">
										<label class="control-label " for="number5"> Experience
											Code </label>
											<span> <input class="form-control" id="number5" name="number5"
											placeholder="In Years"
											type="number" />
											<input class="form-control" id="number5" name="number5"
											placeholder="In Months"
											type="number" />
											</span>
									</div>
								 -->	
								<div class="emp-right">
							<span><b>Experience</b></span><span>&nbsp;&nbsp; <form:input
									type="number" style="width: 80px;" path="experienceYear"
									name="experienceYear" placeholder="Year" /> <form:errors
									path="experienceYear" cssClass="error">
								</form:errors> <form:input type="number" style="width: 80px;"
									name="experienceMonth" path="experienceMonth"
									placeholder="Month" /> <form:errors path="experienceMonth"
									cssClass="error">
							</form:errors>
								</div>
									<div class=blue-text>
										<h5>
											<i> Office Address </i>
										</h5>
									</div>
									<div class="form-group " id="EmpAddress1ID">
									<label class="control-label " for="text"> Address Line
										1 </label> <input class="form-control" name="EmpAddress1" path="empAddress1"
										placeholder="House Number" type="text" />
								</div>
								<div class="form-group " id="EmpAddress2ID">
									<label class="control-label " for="text2"> Address Line
										2 </label> <input class="form-control" name="EmpAddress2" path="empAddress2"
										placeholder="Street, Colony" type="text" />
								</div>
							
								<div class="form-group " id="EmpCityID">
									<label class="control-label " for="subject"> City </label> <input
										class="form-control" name="EmpCity" path="empCity"
										placeholder="City" type="text" />
								</div>
								<div class="form-group " id="empStateID">
									<label class="control-label " for="subject1"> State </label> <input
										class="form-control" name="empState" path="empState"
										placeholder="State" type="text" />
								</div>
								<div class="form-group" id="empPostalID">
									<label class="control-label " for="number5"> Postal
										Code </label> <input class="form-control" name="empPostal"  path="empPostal"
										placeholder="Enter your 5 digit postal code" type="number" />
								</div>
									
									<div class="flex justify-center">
							<button
								class="inline-flex text-white bg-blue-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
								formaction="processForm"><p style ="color:white; padding-top: 5px;">Submit</p></button>
								<span>&nbsp;</span>
							<button
								class="ml-4 inline-flex text-red bg-blue-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
								formaction="viewForm"><p style ="color:white; padding-top: 5px;">Refresh Form</p></button>
							<span>&nbsp;</span>
							<button
								class="ml-4 inline-flex text-white bg-blue-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
								formaction="/"><p style ="color:white; padding-top: 5px;">Home</p></button>
						
						</div> 

							
						</div>
						
					</div>
					</div> 
						</div>
						
					
					</form:form>
				</div>
				<br>
				<br>
				</body>
				<script>
				function clearErrors(){

				    errors = document.getElementsByClassName('formerror');
				    for(let item of errors)
				    {
				        item.innerHTML = "";
				    }

				}
				function seterror(id,error){
					/*  var element= document.getElementById(id); */
				 	/* console.log(element.getElementsByClassName('form-control')); */
				 	var element= document.getElementById(id);
					element.getElementsByClassName('formerror')[0].innerHTML = error;
				}
				
				function validateForm(){
					
					var formValidated= true;
					clearErrors();
					/* 	-----------------------------------------First Name---------------------------------- */		
					//form name //fname is name
					 var fname=document.forms['sForm']["fname"].value;
					if(fname.length<2){
						//id //msg
						seterror("fnameID", "Not a valid name");
						formValidated= false;
					} 
					
					/* 	-----------------------------------------Last Name---------------------------------- */		
					
					//form name //fname is name
					var lname=document.forms['sForm']["lname"].value;
					if(lname.length<2){
						//id //msg
						seterror("lnameID", "Not a valid name");
						formValidated= false;
					}  
					
					/* 	------------------------------------------LoanAmt--------------------------------- */		
					
					//form name //fname is name
					var LoanAmt=document.forms['sForm']["LoanAmt"].value;
					 if(LoanAmt<10){
						//id //msg
						seterror("LoanAmtID", "Minimum Loan that can be taken is $10");
						formValidated= false;
					} 
					/* if(typeof(LoanAmt)!=number){
						//id //msg
						seterror("LoanAmtID", "Loan Amount Must be Numeric");
						formValidated= false;
					}  */
					
/* 	-----------------------------------------Home Phone---------------------------------- */		
					
					//form name //fname is name
					var homePhone=document.forms['sForm']["homePhone"].value;
					if(homePhone.length!=10){
						//id //msg
						seterror("homePhoneID", "Phone Number must be of 10 digits");
						formValidated= false;
					}  
					
/* 	-----------------------------------------Office Phone---------------------------------- */		
					
					//form name //fname is name
					var OfficePhone=document.forms['sForm']["OfficePhone"].value;
					if(OfficePhone.length!=10){
						//id //msg
						seterror("OfficePhoneID", "Phone Number must be of 10 digits");
						formValidated= false;
					}  
					
/* 	-----------------------------------------Mobile---------------------------------- */		
					
					//form name //fname is name
					var Mobile=document.forms['sForm']["Mobile"].value;
					if(Mobile.length!=10){
						//id //msg
						seterror("MobileID", "Phone Number must be of 10 digits");
						formValidated= false;
					}  
					
/* 	-----------------------------------------Address1---------------------------------- */		
					
					//form name //fname is name
					var Address1=document.forms['sForm']["Address1"].value;
					if(Address1.length>255){
						//id //msg
						seterror("Address1ID", "Length should be less than 255 characters");
						formValidated= false;
					} 
					
/* 	-----------------------------------------City---------------------------------- */		
					
					//form name //fname is name
					var City=document.forms['sForm']["City"].value;
					if(City.length>255){
						//id //msg
						seterror("CityID", "Length should be less than 255 characters");
						formValidated= false;
					}
					
/* 	-----------------------------------------State---------------------------------- */		
					
					//form name //fname is name
					var State=document.forms['sForm']["State"].value;
					if(State.length>255){
						//id //msg
						seterror("StateID", "Length should be less than 255 characters");
						formValidated= false;
					}
					
/* 	-----------------------------------------Postal Code---------------------------------- */		
					
				 	//form name //fname is name
					var PostalCode=document.forms['sForm']["PostalCode"].value;
					if(PostalCode.length!=5){
						//id //msg
						seterror("PostalCodeID", "Must be exactly 5 digit");
						formValidated= false;
					}
			
				
				/* 	----------------------------------EmployerName----------------------------------------- */		
				
				//form name //fname is name
				var EmployerName=document.forms['sForm']["EmployerName"].value;
				if(EmployerName.length>255){
					//id //msg
					seterror("EmployerNameID", "Length should be less than 255 characters");
					formValidated= false;
				}
				 
/* 	------------------------------------AnnualSalary-------------------------------------- */		
				
				///form name //fname is name
				var AnnualSalary=document.forms['sForm']["AnnualSalary"].value;
				if(AnnualSalary<10000){
					//id //msg
					seterror("AnnualSalaryID", "Must be above $10,000");
					formValidated= false;
				} 
				
				/* 	-----------------------------------------Address1---------------------------------- */		
				
				//form name //fname is name
				var EmpAddress1=document.forms['sForm']["EmpAddress1"].value;
				if(EmpAddress1.length>255){
					//id //msg
					seterror("EmpAddress1ID", "Length should be less than 255 characters");
					formValidated= false;
				} 
				
/* 	-----------------------------------------City---------------------------------- */		
				
				//form name //fname is name
				var EmpCity=document.forms['sForm']["EmpCity"].value;
				if(EmpCity.length>255){
					//id //msg
					seterror("EmpCityID", "Length should be less than 255 characters");
					formValidated= false;
				}
				
/* 	-----------------------------------------State---------------------------------- */		
				
				//form name //fname is name
				var empState=document.forms['sForm']["empState"].value;
				if(empState.length>255){
					//id //msg
					seterror("empStateID", "Length should be less than 255 characters");
					formValidated= false;
				}
				
/* 	-----------------------------------------Postal Code---------------------------------- */		
				
			 	//form name //fname is name
				var empPostal=document.forms['sForm']["empPostal"].value;
				if(empPostal.length!=5){
					//id //msg
					seterror("empPostalID", "Must be exactly 5 digit");
					formValidated= false;
				}
				
				
				
				console.log(formValidated);
				return formValidated;
			}
				
				</script>
</html>