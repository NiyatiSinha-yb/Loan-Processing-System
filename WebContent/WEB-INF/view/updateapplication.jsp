<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Update Application</title>

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

<!--  jQuery -->
				<script type="text/javascript"
					src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

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

.formerror {
	color: red;
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

option {
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
			<form:form class="form-card" name="uForm" method="post"
				action="processForm2" modelAttribute="customer"
				onsubmit="return validateForm()">
				<!-- HTML Form (wrapped in a .bootstrap-iso div) -->
				<form:hidden path="ID" />
				<!-- HTML Form (wrapped in a .bootstrap-iso div) -->
				<div class="bootstrap-iso">
					<div class="container-fluid">
						<div class="row">

							<br>
							<div class="blue-text">

								<h4>
									<i> Identification details </i>
								</h4>
							</div>
							<div class="form-group" id="fnameID">
								<label class="control-label " for="name"> First Name </label>
								<form:input class="form-control" name="firstName"
									path="firstName" placeholder="Enter your first name"
									type="text" required="true" />
								<span class="formerror"> </span>

							</div>

							<div class="form-group" id="mnameID">
								<label class="control-label " for="name"> Middle Name </label>
								<form:input class="form-control" name="middleName"
									path="middleName" placeholder="Enter your middle name"
									type="text" />
								<span class="formerror"> </span>

							</div>

							<div class="form-group" id="lnameID">
								<label class="control-label " for="name"> Last Name </label>
								<form:input class="form-control" name="lastName" path="lastName"
									placeholder="Enter your last name" type="text" required="true" />
								<span class="formerror"> </span>

							</div>

							<div class="form-group" id="dobID">
								<label class="control-label" for="date"> Date </label>
								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-calendar"> </i>
									</div>
									<form:input class="form-control" name="dateOfBirth"
										path="dateOfBirth" type="date" placeholder="DD-MM-YYYY"
										required="true" />
									<span class="formerror"> </span>
								</div>
							</div>

						</div>
					</div>
				</div>




				




				<div class="bootstrap-iso">
					<div class="container-fluid">
						<div class="row">
							<!-- <div class="col-md-6 col-sm-6 col-xs-12"> -->
							<div class="blue-text">
								<br> <br>
								<h4>
									<i> Personal details </i>
								</h4>
							</div>

							<div class="form-group">
								<label class="control-label" for="select"> Marital
									Status </label>
								<form:select class="form-control" path="maritalStatus" id="select"
									name="maritalStatus" style="font-size:18px; color:gray"
									required="true">
									<option value="" disabled selected hidden="true">Open
										this select menu</option>
									<option value="Single">Single</option>
									<option value="Married">Married</option>
									<option value="Seperated">Separated</option>
									<option value="Divorced">Divorced</option>
									<option value="Widow">Widow</option>

								</form:select>

							</div>



							<div class="form-group " id="ssnNumberID">
								<label class="control-label " for="number"> SSN Number </label>
								<form:input class="form-control" name="ssnNumber"
									path="ssnNumber" placeholder="SSN Number" type="number"
									required="true" />
								<span class="formerror"> </span>

							</div>
                       </div>
                       </div>
                       </div>
                       
                           <div class="bootstrap-iso">
					<div class="container-fluid">
						<div class="row">
							
							<div class="blue-text">
								<h4>
									<i> Loan details </i>
								</h4>
							</div>
							<div class="form-group" id="LoanAmtID">
								<label class="control-label" for="number1"> Loan Amount
								</label>
								<form:input class="form-control" name="loanAmount"
									path="loanAmount" placeholder="Loan Amount in $" type="number"
									required="true" />
								<span class="formerror"> </span>
							</div>
							<div class="form-group ">
								<label class="control-label " for="select"> Loan purpose
								</label>
								<form:select class="form-control" path="loanPurpose" id="select"
									name="loanPurpose" style="font-size:18px; color:gray"
									required="true">
									<option value="" disabled selected hidden="true">Open this
										select menu</option>
									<option value="Debt">Debt</option>
									<option value="Home Loan">Home Loan</option>
									<option value="Educational Loan">Educational Loan</option>
									<option value="Personal Loan">Personal Loan</option>
								</form:select>

							</div>

							<div class="form-group " id="DescriptionID">
								<label class="control-label " for="message"> Description
								</label>
								<form:textarea class="form-control" cols="40" 
									path="description" name="description"
									placeholder="Loan Application Reason" rows="10"></form:textarea>
								<span class="formerror"> </span>
							</div>
                          </div>
                          </div>
                          </div>
                          
                          <div class="bootstrap-iso">
					<div class="container-fluid">
						<div class="row">
							<div class="blue-text">
								<h4>
									<i> Contact details </i>
								</h4>
							</div>

							<div class="form-group " id="homePhoneID">
								<label class="control-label " for="number2"> Home Phone
								</label> <form:input class="form-control" name="homePhone"
									path="homePhone"
									placeholder="Enter your 10 digit residential contact number"
									type="number" /><span class="formerror"> </span>
							</div>
							<div class="form-group " id="OfficePhoneID">
								<label class="control-label " for="number3"> Office
									Phone </label> <form:input class="form-control" name="officePhone"
									path="officePhone"
									placeholder="Enter your 10 digit office contact number"
									type="number" required="true" /><span class="formerror"> </span>
							</div>
							<div class="form-group " id="MobileID">
								<label class="control-label " for="number4"> Mobile </label> <form:input
									class="form-control" name="mobile" path="mobile"
									placeholder="Enter your 10 digit personal contact number"
									type="number" required="true" /><span class="formerror"> </span>

							</div>
							<div class="form-group" id="EmailAddressID">
								<label class="control-label requiredField" for="email">
									Email Address <span class="asteriskField"> * </span>
								</label> <form:input class="form-control" name="emailAddress"
									path="emailAddress" placeholder="username@domain" type="email"
									required="true" /><span class="formerror"> </span>
							</div>
                         </div>
                         </div>
                         </div>
                         
                         <div class="bootstrap-iso">
					<div class="container-fluid">
						<div class="row">
							<div class="blue-text">
								<h4>
									<i> Address details </i>
								</h4>
							</div>

							<div class="form-group " id="Address1ID">
								<label class="control-label " for="text"> Address Line 1
								</label> <form:input class="form-control" name="address1" path="address1"
									placeholder="House Number" type="text" required="true" /><span
									class="formerror"> </span>
							</div>
							<div class="form-group " id="Address2ID">
								<label class="control-label " for="text2"> Address Line
									2 </label> <form:input class="form-control" name="address2" path="address2"
									placeholder="Street, Colony" type="text" /><span
									class="formerror"> </span>
							</div>

							<div class="form-group " id="CityID">
								<label class="control-label " for="subject"> City </label> <form:input
									class="form-control" name="city" path="city" placeholder="City"
									type="text" required="true" /><span class="formerror"> </span>
							</div>
							<div class="form-group " id="StateID">
								<label class="control-label " for="subject1"> State </label> <form:input
									class="form-control" name="state" path="state"
									placeholder="State" type="text" required="true" /><span
									class="formerror"> </span>
							</div>
							<div class="form-group" id="PostalCodeID">
								<label class="control-label " for="number5"> Postal Code
								</label> <form:input class="form-control" name="postalCode" path="postalCode"
									placeholder="Enter your 5 digit postal code" type="number"
									required="true" /><span class="formerror"> </span>
							</div>

							</div>
							</div>
							</div>
							
							<div class="bootstrap-iso">
					<div class="container-fluid">
						<div class="row">
							<div class="blue-text">
								<h4>
									<i> Employment details </i>
								</h4>
							</div>



							<div class="form-group " id="EmployerNameID">
								<label class="control-label " for="name2"> Employer Name
								</label> <form:input class="form-control" name="employerName"
									path="employerName"
									placeholder="Enter your current employer name" type="text"
									required="true" /><span class="formerror"> </span>
							</div>
							<div class="form-group" id="AnnualSalaryID">
								<label class="control-label " for="number"> Annual
									Salary </label> <form:input class="form-control" name="annualSalary"
									path="annualSalary"
									placeholder="Enter your annual salary for the current year"
									type="number" required="true" /><span class="formerror"> </span>
							</div>
							<div class="form-group " id="DesignationID">
								<label class="control-label " for="subject"> Designation
								</label> <form:input class="form-control" name="designation"
									path="designation" placeholder="Enter your designation"
									type="text" required="true" /><span class="formerror"> </span>
							</div>




							<div class="blue-text">
								<h5>
									<i>Experience </i>
								</h5>
							</div>
							<div class="form-group" id="expYearsID">
								<label class="control-label " for="number"> Years </label> <form:input
									class="form-control" name="experienceYear"
									path="experienceYear" placeholder="Years" type="number"
									required="true" /><span class="formerror"> </span>
							</div>

							<div class="form-group" id="expMonthsID">
								<label class="control-label " for="number"> Months </label> <form:input
									class="form-control" name="experienceMonth"
									path="experienceMonth" placeholder="Months" type="number"
									required="true" /><span class="formerror"> </span>
							</div>

							<div class="blue-text">
								<h5>
									<i> Office Address </i>
								</h5>
							</div>
							<div class="form-group " id="EmpAddress1ID">
								<label class="control-label " for="text"> Address Line 1
								</label> <form:input class="form-control" name="empAddress1"
									path="empAddress1" placeholder="House Number" type="text"
									required="true" /><span class="formerror"> </span>
							</div>
							<div class="form-group " id="EmpAddress2ID">
								<label class="control-label " for="text2"> Address Line
									2 </label> <form:input class="form-control" name="empAddress2"
									path="empAddress2" placeholder="Street, Colony" type="text" /><span
									class="formerror"> </span>
							</div>

							<div class="form-group " id="EmpCityID">
								<label class="control-label " for="subject"> City </label> <form:input
									class="form-control" name="EmpCity" path="empCity"
									placeholder="City" type="text" required="true" /><span
									class="formerror"> </span>
							</div>
							<div class="form-group " id="EmpStateID">
								<label class="control-label " for="subject1"> State </label> <form:input
									class="form-control" name="empState" path="empState"
									placeholder="State" type="text" required="true" /><span
									class="formerror"> </span>
							</div>
							<div class="form-group" id="EmpPostalID">
								<label class="control-label " for="number5"> Postal Code
								</label> <form:input class="form-control" name="empPostal" path="empPostal"
									placeholder="Enter your 5 digit postal code" type="number"
									required="true" /><span class="formerror"> </span>
							</div>
                         </div>
                         </div>
                         </div>
							<div class="flex justify-center">
								<button
									class="inline-flex text-white bg-blue-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
									formaction="processForm">
									<p style="color: white; padding-top: 5px;">Submit</p>
								</button>
								<span>&nbsp;</span>
								<button
									class="ml-4 inline-flex text-red bg-blue-500 border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"
									formaction="showForm">
									<p style="color: white; padding-top: 5px;">Refresh Form</p>
								</button>
								
								
                            </div>
                            
                            </form:form>
                            </div>
                            </div>
							<%-- </div>


						</div>

					</div>
				</div>
			</form:form>
		</div>

	</div>

	<br>
	<br> --%>
</body>
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
					 var fname=document.forms['uForm']["firstName"].value;
					if(fname.length<2){
						//id //msg
						seterror("fnameID", "Not a valid name");
						formValidated= false;
					} 
					if(fname.length>255){
						//id //msg
						seterror("fnameID", "Length should be less than 255");
						formValidated= false;
					} 

					/* 	-----------------------------------------Middle Name---------------------------------- */		
					//form name //fname is name
					 var mname=document.forms['uForm']["middleName"].value;
					
					if(mname.length>255){
						//id //msg
						seterror("mnameID", "Length should be less than 255");
						formValidated= false;
					} 
					

					
					/* 	-----------------------------------------Last Name---------------------------------- */		
					
					//form name //fname is name
					var lname=document.forms['uForm']["lastName"].value;
					if(lname.length<2){
						//id //msg
						seterror("lnameID", "Not a valid name");
						formValidated= false;
					} 
					if(lname.length>255){
						//id //msg
						seterror("lnameID", "Length should be less than 255");
						formValidated= false;
					} 
					
					

					/* 	-----------------------------------------ssn--------------------------------- */		
					
					//form name //fname is name
					  var ssno=document.forms['uForm']["ssnNumber"].value;
					 if(ssno.length<0){
						//id //msgssnNumberID
						seterror("ssnNumberID", "Must be greater than 0");
						formValidated= false;
					}  
					 
					
					
					/* 	------------------------------------------LoanAmt--------------------------------- */		
					
					//form name //fname is name
					var LoanAmt=document.forms['uForm']["loanAmount"].value;
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
					var homePhone=document.forms['uForm']["homePhone"].value;
					if(homePhone.length!=10 || homePhone<0){
						//id //msg
						seterror("homePhoneID", "Phone Number must be of 10 digits positive number");
						formValidated= false;
					}  
					
/* 	-----------------------------------------Office Phone---------------------------------- */		
					
					//form name //fname is name
					var OfficePhone=document.forms['uForm']["officePhone"].value;
					if(OfficePhone.length!=10 || OfficePhone<0){
						//id //msg
						seterror("OfficePhoneID", "Phone Number must be of 10 digits positive number");
						formValidated= false;
					}  
					
/* 	-----------------------------------------Mobile---------------------------------- */		
					
					//form name //fname is name
					var Mobile=document.forms['uForm']["mobile"].value;
					if(Mobile.length!=10 || Mobile<0){
						//id //msg
						seterror("MobileID", "Phone Number must be of 10 digits positive number");
						formValidated= false;
					}  
					
/* 	-----------------------------------------Address1---------------------------------- */		
					
					//form name //fname is name
					var Address1=document.forms['uForm']["address1"].value;
					if(Address1.length>255){
						//id //msg
						seterror("Address1ID", "Length should be less than 255 characters");
						formValidated= false;
					} 
					
/* 	-----------------------------------------City---------------------------------- */		
					
					//form name //fname is name
					var City=document.forms['uForm']["city"].value;
					if(City.length>255){
						//id //msg
						seterror("CityID", "Length should be less than 255 characters");
						formValidated= false;
					}
					
/* 	-----------------------------------------State---------------------------------- */		
					
					//form name //fname is name
					var State=document.forms['uForm']["state"].value;
					if(State.length>255){
						//id //msg
						seterror("StateID", "Length should be less than 255 characters");
						formValidated= false;
					}
					
/* 	-----------------------------------------Postal Code---------------------------------- */		
					
				 	//form name //fname is name
					var PostalCode=document.forms['uForm']["postalCode"].value;
					if(PostalCode.length!=5 || PostalCode<0){
						//id //msg
						seterror("PostalCodeID", "Must be exactly 5 digit positive number");
						formValidated= false;
					}
			
				
				/* 	----------------------------------EmployerName----------------------------------------- */		
				
				//form name //fname is name
				var EmployerName=document.forms['uForm']["employerName"].value;
				if(EmployerName.length>255){
					//id //msg
					seterror("EmployerNameID", "Length should be less than 255 characters");
					formValidated= false;
				}
				 
/* 	------------------------------------AnnualSalary-------------------------------------- */		
				
				///form name //fname is name
				var AnnualSalary=document.forms['uForm']["annualSalary"].value;
				if(AnnualSalary<10000){
					//id //msg
					seterror("AnnualSalaryID", "Must be above $10,000");
					formValidated= false;
				} 
				
				/* 	-----------------------------------------Address1---------------------------------- */		
				
				//form name //fname is name
				var EmpAddress1=document.forms['uForm']["empAddress1"].value;
				if(EmpAddress1.length>255){
					//id //msg
					seterror("EmpAddress1ID", "Length should be less than 255 characters");
					formValidated= false;
				} 
				
/* 	-----------------------------------------City---------------------------------- */		
				
				//form name //fname is name
				var EmpCity=document.forms['uForm']["empCity"].value;
				if(EmpCity.length>255){
					//id //msg
					seterror("EmpCityID", "Length should be less than 255 characters");
					formValidated= false;
				}
				
				/* else if (!/[^a-zA-Z]/.test(EmpCity)){
					seterror("EmpCityID", "Only input alphabets");
					formValidated= false;
				} */
				/* 	var letters = /^[A-Za-z]+$/;
				   if(!(inputtxt.value.match(EmpCity)))
					   {
					   seterror("EmpCityID", "Only input alphabets");
						formValidated= false;
					   } */
				
/* 	-----------------------------------------State---------------------------------- */		
				
				//form name //fname is name
				var empState=document.forms['uForm']["empState"].value;
				if(empState.length>255){
					//id //msg
					seterror("EmpStateID", "Length should be less than 255 characters");
					formValidated= false;
				}
				
/* 	-----------------------------------------Postal Code---------------------------------- */		
				
			 	//form name //fname is name
				var empPostal=document.forms['uForm']["empPostal"].value;
				if(empPostal.length!=5){
					//id //msg
					seterror("EmpPostalID", "Must be exactly 5 digit");
					formValidated= false;
				}
				
/* 	---------------------------------------Exp Year---------------------------------- */		
				
			 	//form name //fname is name
var expYear=document.forms['uForm']['experienceYear'].value;
if(expYear<0 ){
//id //msg
seterror("expYearsID", "Must be between 0-65");
formValidated= false;
}
else if(expYear>65 ){
//id //msg
seterror("expYearsID", "You are an overworker! Now enjoy your life! ");
formValidated= false;
}
				
/* 	---------------------------------------Exp Month---------------------------------- */		
				
			 	//form name //fname is name
				var expMonth=document.forms['uForm']['experienceMonth'].value;
				if(expMonth<0 || expMonth>12){
					//id //msg
					seterror("expMonthsID", "Must be between 1-12");
					formValidated= false;
				}
				
/* -----------------------------------------Status validation------------------------*/
				if(expYear==0 && expMonth<6){
					seterror("expYearsID", "To be eligible to apply for loan you should atleast have an experience of 6 months!");
					seterror("expMonthsID", "To be eligible to apply for loan you should atleast have an experience of 6 months!");
					formValidated= false;
				}
				
				
			 	var objectHTMLCollection=new Date(document.forms['uForm']['dateOfBirth'].value);
			 /*   var dobstr = [].map.call( objectHTMLCollection, function(node){
			        return node.textContent || node.innerText || "";
			    }).join(""); */
			    var dob= new Date(objectHTMLCollection);
				 //   console.log(dob);
				 //   console.log(typeof(dob))l
					//calculate month difference from current date in time
			   		 var month_diff = Date.now() - dob.getTime();
					//id //msg
					
					//convert the calculated difference in date format
    				var age_dt = new Date(month_diff); 
    	
    				//extract year from date    
   					 var year = age_dt.getUTCFullYear();
    
    				//now calculate the age of the user
   					 var age = (year - 1970);
    				if(age<18){
					seterror("dobID", "Loan Applicant must be above 18 years old");
					formValidated= false;
    				}
					else if(age>100){
    					seterror("dobID", "ABC Bank doesn't know any person who lived for more than 100 years!");
						formValidated= false;
    				}
				
					
				
				
				console.log(formValidated);
				return formValidated;
			}
				
				</script>
</html>






<%--  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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

		<div class="card">
			<h5 class="text-center mb-4">
				<b><i>Loan Applicant Entry Form</i></b>
			</h5>
			
				<form:form class="form-card" name="uForm" method="post" action="processForm2"  modelAttribute="customer" onsubmit="return validateForm2()">
				<!-- HTML Form (wrapped in a .bootstrap-iso div) -->
				<form:hidden path="ID"/>
				<div class="bootstrap-iso">
					<div class="container-fluid">
						<div class="row">
						
							<br>
							<div class=blue-text>

								<h4>
									<i> Identification details </i>
								</h4>
							</div>
							<div class="form-group" id="fnameID1">
								<label class="control-label " for="name"> First Name </label> <form:input
									class="form-control" name="firstName" path="firstName"
									placeholder="Enter your first name" type="text" required="true"/><span class="formerror"> </span>
									
							</div>
						
							<div class="form-group" id="mnameID">
								<label class="control-label " for="name"> Middle Name </label> <form:input
									class="form-control" name="middleName" path="middleName"
									placeholder="Enter your first name" type="text" /><span class="formerror"> </span>
									
							</div>
								 
							<div class="form-group" id="lnameID">
								<label class="control-label " for="name"> Last Name </label> <form:input
									class="form-control" name="lastName" path="lastName"
									placeholder="Enter your first name" type="text" required="true"/><span class="formerror"> </span>
									
							</div>
							
								<div class="form-group ">
									<label class="control-label" for="date"> Date </label>
									<div class="input-group">
										<div class="input-group-addon">
											<i class="fa fa-calendar"> </i>
										</div>
										<form:input class="form-control" name="dateOfBirth" path="dateOfBirth" type="date"
											placeholder="DD-MM-YYYY" required="true"/>
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
									<label class="control-label" for="select" > Marital
										Status </label>  <form:input class="select form-control" path="maritalStatus"
										name="maritalStatus"  style="font-size:18px; color:gray" />
										
																</div>

						
							
								<div class="form-group " id="ssnNumber">
									<label class="control-label " for="number"> SSN Number
									</label> <form:input class="form-control"  name="ssnNumber" path="ssnNumber"
										placeholder="SSN Number" type="number" required="true" />
										
								</div>

								<br> <br>
								<div class=blue-text>
									<h4>
										<i> Loan details </i>
									</h4>
								</div>
									<div class="form-group" id="LoanAmtID">
									<label class="control-label" for="number1"> Loan
										Amount </label> <form:input class="form-control" name="loanAmount" path="loanAmount" placeholder="Loan Amount in $" type="number" required="true"/><span class="formerror"> </span>
								</div>
							<div class="form-group ">
									<label class="control-label " for="select"> Loan
										purpose </label> <form:input class="select form-control" path="loanPurpose"
										name="loanPurpose" style="font-size:18px; color:gray" required="true"/>
										
									
									
								</div>
								
								<div class="form-group " id="DescriptionID">
									<label class="control-label " for="message">
										Description </label>
									<form:textarea class="form-control" cols="40" id="desc" path="description"
										name="Description" placeholder="Loan Application Reason" rows="10"></form:textarea><span class="formerror"> </span>
								</div>

								<br> <br>
								<div class=blue-text>
									<h4>
										<i> Contact details </i>
									</h4>
								</div>

								<div class="form-group " id="homePhoneID">
									<label class="control-label " for="number2"> Home Phone
									</label> <form:input class="form-control" id="hPhone" name="homePhone" path="homePhone"
										placeholder="Enter your 10 digit residential contact number"
										type="number" required="true"/><span class="formerror"> </span>
								</div>
								<div class="form-group "  id="OfficePhoneID">
									<label class="control-label " for="number3"> Office
										Phone </label> <form:input class="form-control" name="OfficePhone" path="officePhone"
										placeholder="Enter your 10 digit office contact number"
										type="number" required="true"/><span class="formerror"> </span>
								</div>
								<div class="form-group " id="MobileID" >
									<label class="control-label " for="number4"> Mobile </label> <form:input
										class="form-control" name="Mobile" path="mobile"
										placeholder="Enter your 10 digit personal contact number" 
										type="number" required="true"/><span class="formerror"> </span>
										
								</div>
								<div class="form-group" id="EmailAddressID">
									<label class="control-label requiredField" for="email">
										Email Address <span class="asteriskField"> * </span>
									</label> <form:input class="form-control"  name="EmailAddress" path="emailAddress"
										placeholder="username@domain" type="email" required="true"/><span class="formerror"> </span>
								</div>
								
								<br> <br>
								<div class=blue-text>
									<h4>
										<i> Address details </i>
									</h4>
								</div>
								
								<div class="form-group " id="Address1ID">
									<label class="control-label " for="text"> Address Line
										1 </label> <form:input class="form-control" name="Address1" path="address1"
										placeholder="House Number" type="text" required="true"/><span class="formerror"> </span>
								</div>
								<div class="form-group " id="Address2ID">
									<label class="control-label " for="text2"> Address Line
										2 </label> <form:input class="form-control" name="Address2" path="address2"
										placeholder="Street, Colony" type="text" /><span class="formerror"> </span>
								</div>
							
								<div class="form-group " id="CityID">
									<label class="control-label " for="subject"> City </label> <form:input
										class="form-control" name="City" path="city"
										placeholder="City" type="text" required="true"/><span class="formerror"> </span>
								</div>
								<div class="form-group " id="StateID">
									<label class="control-label " for="subject1"> State </label> <form:input
										class="form-control" name="State" path="state"
										placeholder="State" type="text" required="true"/><span class="formerror"> </span>
								</div>
								<div class="form-group" id="PostalCodeID">
									<label class="control-label " for="number5"> Postal
										Code </label> <form:input class="form-control" name="PostalCode" path="postalCode"
										placeholder="Enter your 5 digit postal code" type="number" required="true"/><span class="formerror"> </span>
								</div>
			
								<br> <br>
								<div class=blue-text>
									<h4>
										<i> Employment details </i>
									</h4>
								</div>
								

								
									<div class="form-group " id="EmployerNameID">
										<label class="control-label " for="name2"> Employer
											Name </label> <form:input class="form-control"  name="EmployerName" path="employerName"
											placeholder="Enter your current employer name" type="text" required="true"/><span class="formerror"> </span>
									</div>
									<div class="form-group" id="AnnualSalaryID">
										<label class="control-label " for="number"> Annual
											Salary </label> <form:input class="form-control" name="AnnualSalary" path="annualSalary"
											placeholder="Enter your annual salary for the current year"
											type="number" required="true"/><span class="formerror"> </span>
									</div>
									<div class="form-group " id="DesignationID">
										<label class="control-label " for="subject">
											Designation </label> <form:input class="form-control"
											name="Designation" path="designation" placeholder="Enter your designation"
											type="text" required="true"/><span class="formerror"> </span>
									</div>
									<div class=blue-text>
								<h5>
									<i>Experience </i>
								</h5>
							</div>
							<div class="form-group" id="expYearsID">
								<label class="control-label " for="number"> Years </label> <form:input
									class="form-control" name="ExperienceYear"
									path="experienceYear" placeholder="Years" type="number"
									required="true" /><span class="formerror"> </span>
							</div>

							<div class="form-group" id="expMonthsID">
								<label class="control-label " for="number"> Months </label> <form:input
									class="form-control" name="ExperienceMonth"
									path="experienceMonth" placeholder="Months" type="number"
									required="true" /><span class="formerror"> </span>
							</div>
								 
								
									<div class=blue-text>
										<h5>
											<i> Office Address </i>
										</h5>
									</div>
									<div class="form-group " id="EmpAddress1ID">
									<label class="control-label " for="text"> Address Line
										1 </label> <form:input class="form-control" name="EmpAddress1" path="empAddress1"
										placeholder="House Number" type="text" required="true"/><span class="formerror"> </span>
								</div>
								<div class="form-group " id="EmpAddress2ID">
									<label class="control-label " for="text2"> Address Line
										2 </label> <form:input class="form-control" name="EmpAddress2" path="empAddress2"
										placeholder="Street, Colony" type="text" /><span class="formerror"> </span>
								</div>
							
								<div class="form-group " id="EmpCityID">
									<label class="control-label " for="subject"> City </label> <form:input
										class="form-control" name="EmpCity" path="empCity"
										placeholder="City" type="text" required="true"/><span class="formerror"> </span>
								</div>
								<div class="form-group " id="empStateID">
									<label class="control-label " for="subject1"> State </label> <form:input
										class="form-control" name="empState" path="empState"
										placeholder="State" type="text" required="true"/><span class="formerror"> </span>
								</div>
								<div class="form-group" id="empPostalID">
									<label class="control-label " for="number5"> Postal
										Code </label> <form:input class="form-control" name="empPostal"  path="empPostal"
										placeholder="Enter your 5 digit postal code" type="number" required="true"/><span class="formerror"> </span>
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
					</form:form>
						</div>
						
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
				
				function validateForm2(){
					
					var formValidated= true;
					clearErrors();
					/* 	-----------------------------------------First Name---------------------------------- */		
					//form name //fname is name
					 var fname=document.forms['uForm']["firstName"].value;
					if(fname.length<2){
						//id //msg
						seterror("fnameID", "Not a valid name");
						formValidated= false;
					} 
					if(fname.length>255){
						//id //msg
						seterror("fnameID", "Length should be less than 255");
						formValidated= false;
					} 

					/* 	-----------------------------------------Middle Name---------------------------------- */		
					//form name //fname is name
					 var mname=document.forms['uForm']["middleName"].value;
					
					if(mname.length>255){
						//id //msg
						seterror("mnameID", "Length should be less than 255");
						formValidated= false;
					} 
					

					
					/* 	-----------------------------------------Last Name---------------------------------- */		
					
					//form name //fname is name
					var lname=document.forms['uForm']["lastName"].value;
					if(lname.length<2){
						//id //msg
						seterror("lnameID", "Not a valid name");
						formValidated= false;
					} 
					if(lname.length>255){
						//id //msg
						seterror("lnameID", "Length should be less than 255");
						formValidated= false;
					} 
					
					
					
					/* 	------------------------------------------LoanAmt--------------------------------- */		
					
					//form name //fname is name
					var LoanAmt=document.forms['uForm']["loanAmount"].value;
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
					var homePhone=document.forms['uForm']["homePhone"].value;
					if(homePhone.length!=10){
						//id //msg
						seterror("homePhoneID", "Phone Number must be of 10 digits");
						formValidated= false;
					}  
					
/* 	-----------------------------------------Office Phone---------------------------------- */		
					
					//form name //fname is name
					var OfficePhone=document.forms['uForm']["OfficePhone"].value;
					if(OfficePhone.length!=10){
						//id //msg
						seterror("OfficePhoneID", "Phone Number must be of 10 digits");
						formValidated= false;
					}  
					
/* 	-----------------------------------------Mobile---------------------------------- */		
					
					//form name //fname is name
					var Mobile=document.forms['uForm']["Mobile"].value;
					if(Mobile.length!=10){
						//id //msg
						seterror("MobileID", "Phone Number must be of 10 digits");
						formValidated= false;
					}  
					
/* 	-----------------------------------------Address1---------------------------------- */		
					
					//form name //fname is name
					var Address1=document.forms['uForm']["Address1"].value;
					if(Address1.length>255){
						//id //msg
						seterror("Address1ID", "Length should be less than 255 characters");
						formValidated= false;
					} 
					
/* 	-----------------------------------------City---------------------------------- */		
					
					//form name //fname is name
					var City=document.forms['uForm']["City"].value;
					if(City.length>255){
						//id //msg
						seterror("CityID", "Length should be less than 255 characters");
						formValidated= false;
					}
					
/* 	-----------------------------------------State---------------------------------- */		
					
					//form name //fname is name
					var State=document.forms['uForm']["State"].value;
					if(State.length>255){
						//id //msg
						seterror("StateID", "Length should be less than 255 characters");
						formValidated= false;
					}
					
/* 	-----------------------------------------Postal Code---------------------------------- */		
					
				 	//form name //fname is name
					var PostalCode=document.forms['uForm']["PostalCode"].value;
					if(PostalCode.length!=5){
						//id //msg
						seterror("PostalCodeID", "Must be exactly 5 digit");
						formValidated= false;
					}
			
				
				/* 	----------------------------------EmployerName----------------------------------------- */		
				
				//form name //fname is name
				var EmployerName=document.forms['uForm']["EmployerName"].value;
				if(EmployerName.length>255){
					//id //msg
					seterror("EmployerNameID", "Length should be less than 255 characters");
					formValidated= false;
				}
				 
/* 	------------------------------------AnnualSalary-------------------------------------- */		
				
				///form name //fname is name
				var AnnualSalary=document.forms['uForm']["AnnualSalary"].value;
				if(AnnualSalary<10000){
					//id //msg
					seterror("AnnualSalaryID", "Must be above $10,000");
					formValidated= false;
				} 
				
				/* 	-----------------------------------------Address1---------------------------------- */		
				
				//form name //fname is name
				var EmpAddress1=document.forms['uForm']["EmpAddress1"].value;
				if(EmpAddress1.length>255){
					//id //msg
					seterror("EmpAddress1ID", "Length should be less than 255 characters");
					formValidated= false;
				} 
				
/* 	-----------------------------------------City---------------------------------- */		
				
				//form name //fname is name
				var EmpCity=document.forms['uForm']["EmpCity"].value;
				if(EmpCity.length>255){
					//id //msg
					seterror("EmpCityID", "Length should be less than 255 characters");
					formValidated= false;
				}
				
/* 	-----------------------------------------State---------------------------------- */		
				
				//form name //fname is name
				var empState=document.forms['uForm']["empState"].value;
				if(empState.length>255){
					//id //msg
					seterror("empStateID", "Length should be less than 255 characters");
					formValidated= false;
				}
				
/* 	-----------------------------------------Postal Code---------------------------------- */		
				
			 	//form name //fname is name
				var empPostal=document.forms['uForm']["empPostal"].value;
				if(empPostal.length!=5){
					//id //msg
					seterror("empPostalID", "Must be exactly 5 digit");
					formValidated= false;
				}
				
				
				
				console.log(formValidated);
				return formValidated;
			}
/* 	---------------------------------------Exp Year---------------------------------- */		
				
			 	//form name //fname is name
var expYear=document.forms['uForm']['ExperienceYear'].value;
if(expYear<0 ){
//id //msg
seterror("expYearsID", "Must be between 0-65");
formValidated= false;
}
else if(expYear>65 ){
//id //msg
seterror("expYearsID", "You are an overworker! Now enjoy your life! ");
formValidated= false;
}
				
/* 	---------------------------------------Exp Months---------------------------------- */		
				
			 	//form name //fname is name
				var expMonth=document.forms['uForm']['ExperienceMonth'].value;
				if(expMonth<0 || expMonth>12){
					//id //msg
					seterror("expMonthsID", "Must be between 1-12");
					formValidated= false;
				}
				
				</script>
</html>
 
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
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
	background-size: 1600px 1500px;
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
	border-radius: 20px;
	height: 18px;
}

.left select {
	margin: 15px;
	width: 200px;
	border: 3px solid black;
	display: inline-block;
	border-radius: 20px;
	height: 24px;
}

.left textarea {
	margin: 45px 45px;
	width: 65vw;
	height: 120px;
	border: 3px solid black;
	border-radius: 25px;
}

.right  input {
	margin: 5px 15px;
	width: 250px;
	border: 3px solid black;
	border-radius: 25px;
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
	top: 1440px;
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
	top: 1440px;
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
		<form:form class="form-vertical" action="processForm"
			modelAttribute="customer">
			<form:hidden path="ID" />
			<h2 class="h2">Update your existing application!</h2>
			<br>
			<div class="row">
				<div class="left">
					<table style="margin-top: -130px;">
						<tr>
							<td><span><b>First name</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="text"
										path="firstName" name="firstName" placeholder="First Name" /></td>
							<td><form:errors path="firstName" cssClass="error">
								</form:errors></td>
						</tr>
						<br>
						<tr>
							<td><span><b>Middle name</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="text"
										path="middleName" name="middleName" placeholder="Middle Name" /></td>
							<td><form:errors path="middleName" cssClass="error">
								</form:errors></td>
						</tr>
						<br>
						<tr>
							<td><span><b>Last name</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="text"
										path="lastName" name="lastName" placeholder="Last Name" /></td>
							<td><form:errors path="lastName" cssClass="error">
								</form:errors></td>
							<br>
						<tr>
							<td><span><b>Date of Birth</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="date"
										style="padding: 1px;" name="dateOfBirth" path="dateOfBirth" /></td>
							<td><form:errors path="dateOfBirth" cssClass="error">
								</form:errors></td>
							<br>
						<tr>
							<td><span><b>Marital Status</b></span></td>
							<td><span>&nbsp;&nbsp;<form:select
										name="maritalStatus" path="maritalStatus" id="status"
										style="width: 210px; border: 3px solid black; height: 25px;">
										<option value="" disabled selected hidden><span>&nbsp;Option</option>
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
										name="ssnNumber" path="ssnNumber" placeholder="SSN Number" /></td>
							<td><form:errors path="ssnNumber" cssClass="error">
								</form:errors></td>
							<br>
						<tr>
							<td><span><b>Loan Amount</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="number"
										name="loanAmount" path="loanAmount" placeholder="Loan Amount" /></td>
							<td><form:errors path="loanAmount" cssClass="error">
								</form:errors></td>
							<br>
						<tr>
							<td><span><b>Loan Purpose</b></span></td>
							<td><span>&nbsp;&nbsp;<form:select name="loanPurpose"
										path="loanPurpose" id="loan" placeholder="Option"
										style="width: 210px; border: 3px solid black; height: 25px;">
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
										placeholder="Describe the reason why you are applying for the loan..." /></td>
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
												name="employerName" path="employerName" placeholder="Name" /></td>
									<td><form:errors path="employerName" cssClass="error">
										</form:errors></td>
								</tr>
								<tr>
									<td><span><b>Annual Salary (in $)</b></span></td>
									<td><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input
												type="number" path="annualSalary" name="annualSalary"
												placeholder="Annual Salary" /></td>
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
													placeholder="Address Line 1" /></td>

										<td><form:errors path="empAddress1" cssClass="error">
											</form:errors></td>
									</tr>
									<tr>
										<td><span><b>Address Line 2</b></span></td>
										<td><span>&nbsp;&nbsp;<form:input type="text"
													name="empAddress2" path="empAddress2"
													placeholder="Address Line 2" /></td>

										<td><form:errors path="empAddress2" cssClass="error">
											</form:errors></td>
									</tr>
									<tr>
										<td><span><b>City</b></span></td>
										<td><span>&nbsp;&nbsp;<form:input type="text"
													name="empCity" path="empCity" placeholder="City" /></td>

										<td><form:errors path="empCity" cssClass="error">
											</form:errors></td>
									</tr>
									<tr>
										<td><span><b>State</b></span></td>
										<td><span>&nbsp;&nbsp;<form:input type="text"
													name="empState" path="empState" placeholder="State" /></td>

										<td><form:errors path="empState" cssClass="error">
											</form:errors></td>
									</tr>
									<tr>
										<td><span><b>Postal Code</b></span></td>
										<td><span>&nbsp;&nbsp;<form:input type="number"
													name="empPostal" path="empPostal" placeholder="12345" /></td>

										<td><form:errors path="empPostal" cssClass="error">
											</form:errors></td>
									</tr>
								</table>
							</div>
						</div>

						<div class="emp-right">
							<span><b>Experience</b></span><span>&nbsp;&nbsp; <form:input
									type="number" style="width: 80px;" path="experienceYear"
									name="experienceYear" placeholder="Year" /> <form:errors
									path="experienceYear" cssClass="error">
								</form:errors> <form:input type="number" style="width: 80px;"
									name="experienceMonth" path="experienceMonth"
									placeholder="Month" /> <form:errors path="experienceMonth"
									cssClass="error">
								</form:errors> <br> <span><b>Designation</b></span><span>&nbsp;&nbsp;<form:input
										name="designation" type="text" path="designation"
										placeholder="Designation" /> <form:errors path="designation"
										cssClass="error">
									</form:errors>
						</div>
					</div>

				</div>
			</div>

			
			<button class="button1" value="Submit">
				<b>Submit</b>
			</button>
			<button class="button2" value="Cancel" formaction="showForm"
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
										name="address1" path="address1" placeholder="Address Line 1" /></td>
							<td><form:errors path="address1" cssClass="error">
								</form:errors></td>
						</tr>
						<tr>
							<td><span><b>Address Line 2</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="text"
										name="address2" path="address2" placeholder="Address Line 2" /></td>
							<td><form:errors path="address2" cssClass="error">
								</form:errors></td>
						</tr>
						<tr>
							<td><span><b>City</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="text"
										name="city" path="city" placeholder="city" /></td>
							<td><form:errors path="city" cssClass="error"></form:errors></td>
						</tr>
						<tr>
							<td><span><b>State</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="text"
										name="state" path="state" placeholder="state" /></td>
							<td><form:errors path="state" cssClass="error"></form:errors></td>
						</tr>
						<tr>
							<td><span><b>Postal Code</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="number"
										name="postalCode" path="postalCode" placeholder="12345" /></td>
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
										name="homePhone" path="homePhone" placeholder="123456" /></td>
							<td><form:errors path="homePhone" cssClass="error">
								</form:errors></td>
						</tr>
						<tr>
							<td><span><b>Office Phone</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="number"
										name="officePhone" path="officePhone" placeholder="123456" /></td>
							<td><form:errors path="officePhone" cssClass="error">
								</form:errors></td>
						</tr>
						<tr>
							<td><span><b>Mobile</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="number"
										name="mobile" path="mobile" placeholder="123456" /></td>
							<td><form:errors path="mobile" cssClass="error">
								</form:errors></td>
						</tr>
						<tr>
							<td><span><b>Email Address</b></span></td>
							<td><span>&nbsp;&nbsp;<form:input type="text"
										path="emailAddress" name="emailAddress"
										placeholder="test@test.com" /></td>
							<td><form:errors path="emailAddress" cssClass="error">
								</form:errors></td>
						</tr>
					</table>
				</div>
			</div>
		</form:form>
	</div>

</body>
</html> --%>