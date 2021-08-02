package com.rayman.lps.mvc;

import java.util.List;

import javax.swing.JOptionPane;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping("/login")
	public String login(Model theModel)
	{
		
		return "newlogin";
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
			return "main-menu";
		}
	}
	@RequestMapping("/register")
	public String showForm(Model theModel)
	{
		theModel.addAttribute("user",new User());
		return "register";
	}
	
	@RequestMapping("/loginsuccess")
	public String showLogin(@Valid @ModelAttribute("user") User theUser)
	{
		
		return "main-menu";
	}
	
	@RequestMapping("/search")
    public String searchUsers(@RequestParam("theSearchName") String theSearchName, @RequestParam("theSearchPass") String theSearchPass,
                                    Model theModel) {
        // search customers from the service
        List<User> theUsers = userService.searchUsers(theSearchName,theSearchPass);
                
        // add the customers to the model
        theModel.addAttribute("users", theUsers);
        if(theUsers.size()>=1)
        {
           return "main-menu";	
        }
        else
        {
        	//JOptionPane.showMessageDialog(null, infoMessage, "InfoBox: " + titleBar, JOptionPane.INFORMATION_MESSAGE);
        return "loginfailed";   
        }
    }
	
	@RequestMapping("/registersearch")
    public String searchRegisteredUsers(@RequestParam("userName") String theRegisteredSearchName,
                                    Model theModel) {
        // search customers from the service
        List<User> theUsers = userService.searchRegisteredUsers(theRegisteredSearchName);
                
        // add the customers to the model
        theModel.addAttribute("users", theUsers);
        if(theUsers.size()>=1)
        {
           return "registrationfailed";	
        }
        else
        return "main-menu";        
    }
}
