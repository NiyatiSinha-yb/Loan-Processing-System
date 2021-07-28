package com.rayman.lps.validation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Constraint(validatedBy= CourseCodeConstraintvalidator.class)
@Target({ElementType.METHOD, ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)//retain this till runtime
public @interface CourseCode {

	//define default course code
	public String value() default "LUV";
	//define default error message
	public String message() default "must start with LUV";
	//define default groups
	public Class<?>[] groups() default{};
	//define default payloads
	public Class<? extends Payload>[] payload() default{};
}
