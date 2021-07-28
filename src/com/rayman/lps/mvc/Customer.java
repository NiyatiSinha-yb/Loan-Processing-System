package com.rayman.lps.mvc;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Min;
//import javax.validation.constraints.Max;
//import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.io.Serializable;

import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;
import org.hibernate.annotations.UpdateTimestamp;
import org.hibernate.validator.constraints.Range;

//import com.luv2code.springdemo.mvc.validation.CourseCode;
@Entity
@Table(name="students",schema="testdb")
public class Customer implements Serializable {
	private static final long serialVersionUID = 1L;
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="ID")
private Integer ID;
	
	public Integer getID() {
		return ID;
	}

	public void setID(Integer iD) {
		ID = iD;
	}
	
	@Column(name="FirstName")
	@NotNull(message="Must be required")
	@Size(min=0,max=255,message="Length should be less than 255")
	 private String firstName;
	 
	@Column(name="LastName")
	 @NotNull(message="Must be required")
	 @Size(min=1,max=255,message="is required")
	 private String lastName;
	 
	@Column(name="MiddleName")
	 @Size(min=0,max=255,message="Length should be less than 255 characters")
	 private String middleName;
	 
	@Column(name="DOB")
	 @NotNull(message="Must be required")
	
	 private String dateOfBirth;
	 
	 @Column(name="Marital")
	 private String maritalStatus;
	 
	 @Column(name="ssN")
	 @NotNull(message="Must be required")
	 private Integer ssnNumber;
	 
	 @Column(name="LoanAmount")
	 @NotNull(message="Must be required")
	 @Min(value=0,message="Must be numeric")
	 private Integer loanAmount;
	 
	 @Column(name="LoanPurpose")
	 private String loanPurpose;
	 
	 @Column(name="Description1")
	 private String description;
	 
	 @Column(name="Address1")
	 @NotNull(message="Must be required")
	 @Size(min=0,max=255,message="Length should be less than 255 characters")
	 private String address1;
	 
	 @Column(name="Address2")
	 @Size(min=0,max=255,message="Length should be less than 255 characters")
	 private String address2;
	 
	 @Column(name="City")
	 @NotNull(message="Must be required")
	 @Size(min=0,max=255,message="Length should be less than 255 characters")
	 private String city;
	 
	 @Column(name="State")
	 @NotNull(message="Must be required")
	 @Size(min=0,max=255,message="Length should be less than 255 characters")
	 private String state;
	 
	 @Column(name="HomePhone")
	 @NotNull(message="Must be required")
	 @Pattern(regexp="(^$|[0-9]{10})",message="Must be exactly 10 digits")
	 private String homePhone;
	 
	 @Column(name="OfficePhone")
	 @Pattern(regexp="(^$|[0-9]{10})",message="Must be exactly 10 digits")
	 private String officePhone;
	  
	 @Column(name="Mobile")
	 @NotNull(message="Must be required")
	 @Pattern(regexp="(^$|[0-9]{10})",message="Must be exactly 10 digits")
	 private String mobile;
	 
	 @Column(name="EmailAddress")
	 @NotNull(message="Must be required")
	 @Pattern(regexp="^[a-zA-Z0-9_!#$%&’*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$",message="Invalid Email address")
	 //must be a valid email address annotation required
	 private String emailAddress;
	 
	 @Column(name="EmployerName")
	 @NotNull(message="Must be required")
	 @Size(min=0,max=255,message="Length should be less than 255 characters")
	 private String employerName;
	 
	 @Column(name="AnnualSalary")
	 @NotNull(message="Must be required")
	 @Min(value=10000,message="Must be above 10,000$")
	 private Integer annualSalary;
	 
	 @Column(name="EmpAddress1")
	 @NotNull(message="Must be required")
	 @Size(min=0,max=255,message="Length should be less than 255 characters")
	 private String empAddress1;
	 
	 @Column(name="EmpAddress2")
	 @Size(min=0,max=255,message="Length should be less than 255 characters")
	 private String empAddress2;
	 
	 @Column(name="EmpCity")
	 @NotNull(message="Must be required")
	 @Size(min=0,max=255,message="Length should be less than 255 characters")
	 private String empCity;
	 
	 @Column(name="empState")
	 @NotNull(message="Must be required")
	 @Size(min=0,max=255,message="Length should be less than 255 characters")
	 private String empState;
	 
	 @Column(name="EmpPostal")
	 @NotNull(message="Must be required")
	 @Pattern(regexp="(^$|[0-9]{5})",message="Must be exactly 5 digit")
	 private String empPostal;
	
	 @Column(name="ExperienceYear")
	 @NotNull(message="Must be required")
	 private Integer experienceYear;
	 
	 @Column(name="PostalCode")
	 @NotNull(message="Must be required")
	 @Pattern(regexp="(^$|[0-9]{5})",message="Must be exactly 5 digit")
	// @Pattern(regexp="^[a-zA-Z0-9]{5}",message="only 5 chars/digits")
	 private String postalCode;
     
	 @Column(name="ExperienceMonth")
	 @NotNull(message="required")
	 private Integer experienceMonth;
	 
	 @Column(name="Designation")
	 private String designation;
	 
	@UpdateTimestamp
	 @Temporal(TemporalType.DATE)
	 @Column(name="Submitted_Date")
	 private Date submitted_Date;
	public Customer()
	{
		
	}
	
	@Override
	public String toString() {
		return "Customer [ID=" + ID + ", firstName=" + firstName + ", lastName=" + lastName + ", middleName="
				+ middleName + ", dateOfBirth=" + dateOfBirth + ", maritalStatus=" + maritalStatus + ", ssnNumber="
				+ ssnNumber + ", loanAmount=" + loanAmount + ", loanPurpose=" + loanPurpose + ", description="
				+ description + ", address1=" + address1 + ", address2=" + address2 + ", city=" + city + ", state="
				+ state + ", homePhone=" + homePhone + ", officePhone=" + officePhone + ", mobile=" + mobile
				+ ", emailAddress=" + emailAddress + ", employerName=" + employerName + ", annualSalary=" + annualSalary
				+ ", empAddress1=" + empAddress1 + ", empAddress2=" + empAddress2 + ", empCity=" + empCity
				+ ", empState=" + empState + ", empPostal=" + empPostal + ", experienceYear=" + experienceYear
				+ ", postalCode=" + postalCode+", Submitted_Date=" + submitted_Date + ", experienceMonth=" + experienceMonth + ", designation=" + designation
				+ "]";
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public Integer getSsnNumber() {
		return ssnNumber;
	}

	public void setSsnNumber(Integer ssnNumber) {
		this.ssnNumber = ssnNumber;
	}

	public Integer getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(Integer loanAmount) {
		this.loanAmount = loanAmount;
	}

	public String getLoanPurpose() {
		return loanPurpose;
	}

	public void setLoanPurpose(String loanPurpose) {
		this.loanPurpose = loanPurpose;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getHomePhone() {
		return homePhone;
	}

	public void setHomePhone(String homePhone) {
		this.homePhone = homePhone;
	}

	public String getOfficePhone() {
		return officePhone;
	}

	public void setOfficePhone(String officePhone) {
		this.officePhone = officePhone;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getEmployerName() {
		return employerName;
	}

	public void setEmployerName(String employerName) {
		this.employerName = employerName;
	}

	public Integer getAnnualSalary() {
		return annualSalary;
	}

	public void setAnnualSalary(Integer annualSalary) {
		this.annualSalary = annualSalary;
	}

	public String getEmpAddress1() {
		return empAddress1;
	}

	public void setEmpAddress1(String empAddress1) {
		this.empAddress1 = empAddress1;
	}

	public String getEmpAddress2() {
		return empAddress2;
	}

	public void setEmpAddress2(String empAddress2) {
		this.empAddress2 = empAddress2;
	}

	public String getEmpCity() {
		return empCity;
	}

	public void setEmpCity(String empCity) {
		this.empCity = empCity;
	}

	public String getEmpState() {
		return empState;
	}

	public void setEmpState(String empState) {
		this.empState = empState;
	}

	public String getEmpPostal() {
		return empPostal;
	}

	public void setEmpPostal(String empPostal) {
		this.empPostal = empPostal;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public Integer getExperienceYear() {
		return experienceYear;
	}

	public void setExperienceYear(Integer experienceYear) {
		this.experienceYear = experienceYear;
	}

	public Integer getExperienceMonth() {
		return experienceMonth;
	}

	public void setExperienceMonth(Integer experienceMonth) {
		this.experienceMonth = experienceMonth;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public Date getSubmitted_Date() {
		//System.out.println(submitted_Date);
		return submitted_Date;
	}
   
	@PrePersist
	public void setSubmitted_Date() {
		
		this.submitted_Date = new Date();
	}
	 
	
	// @CourseCode
	// private String courseCode;
	 
	
	 
}