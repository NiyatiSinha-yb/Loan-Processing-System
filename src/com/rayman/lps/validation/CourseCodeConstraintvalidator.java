package com.rayman.lps.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintvalidator implements ConstraintValidator<CourseCode, String> {

	private String coursePrefix;
	public void initialize(CourseCode theCourseCode)
	{
		coursePrefix=theCourseCode.value();
	}
	@Override
	public boolean isValid(String theCode, ConstraintValidatorContext arg1) {
		// TODO Auto-generated method stub
		boolean result;
		if(theCode!=null)
		result=theCode.startsWith(coursePrefix);
		else
			result=true;
		return result;
	}

}
