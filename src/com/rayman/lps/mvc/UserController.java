package com.rayman.lps.mvc;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rayman.lps.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@InitBinder
	public void initBinder(WebDataBinder dataBinder)
	{
		StringTrimmerEditor stringTrimmerEditor= new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
		
	}
	@RequestMapping("/homePage")
	public String homePage(Model theModel)
	{
		
		return "main-menu";
	}
	@Autowired
	private UserService userService;
	@RequestMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("user") User theUser, BindingResult theBindingResult)
	{
		if(theBindingResult.hasErrors())
		{
			return "register";
		}
		else
		{
			userService.saveUser(theUser);
			return "register-success";
		}
	}
	@RequestMapping("/register")
	public String showForm(Model theModel)
	{
		theModel.addAttribute("user",new User());
		return "register";
	}
}
