package com.rayman.lps.mvc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.rayman.lps.dao.CustomerDAO;
import com.rayman.lps.service.CustomerService;
import com.rayman.lps.util.SortUtils;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    
	// add an init binder to convert trim input strings
	//remove leading and trailing whitespace
	//resolve issue for our validaton
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder)
	{
		StringTrimmerEditor stringTrimmerEditor= new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
		
	}
	
	//inject the DAO
	//Autowired- Spring will scan for a component that implements CustomerDAO interface
//	@Autowired
//	private CustomerDAO customerDAO;
//	
	//We use service layer now
	//need to inject customerservice instead
	@Autowired
	private CustomerService customerService;
	@RequestMapping("/viewForm")
	public String viewForm(Model theModel)
	{
		//get customers from DAO
		List<Customer> theCustomers=customerService.getCustomers();
		//Add the customers to the model
			theModel.addAttribute("customer",theCustomers);	
	    return "viewApplication";
	}
	
	

	@RequestMapping("/homePage")
	public String firstPage(Model theModel)
	{
		return "main-menu";
	}
	
	@RequestMapping("/contactUs")
	public String contactUs(Model theModel)
	{
		return "ContactUs";
	}
	
	@RequestMapping("/help")
	public String help(Model theModel)
	{
		return "Help";
	}
	
	@RequestMapping("tnc")
	public String tnc(Model theModel)
	{
		return "Tnc";
	}
	@RequestMapping("/showForm")
	public String showForm(Model theModel)
	{
		theModel.addAttribute("customer",new Customer());
		return "customer-form";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("ID") int theId, Model theModel)
	{
		//get the customer from our service
		Customer theCustomer= new Customer();
		theCustomer=customerService.getCustomer(theId);
		//set customer as a model attribute
		theModel.addAttribute("customer",theCustomer);
		//send over to the form
		return "updateapplication";
	}
	@RequestMapping("/showFormForDelete")
	public String deleteCustomer(@RequestParam("customerID") int theId)
	{
		customerService.deleteCustomer(theId);
		return "redirect:viewForm";
	}
	
	@RequestMapping("/showFormForView")
	public String viewCustomer(@RequestParam("ID") int theId, Model theModel)
	{//view the customer from our service
		Customer theCustomer=customerService.viewCustomer(theId);
		//set customer as a model attribute
		theModel.addAttribute("customer",theCustomer);
		//send over to the form
		return "ReadOnlyApplication";
	}
	
	@RequestMapping("/search")
    public String searchCustomers(@RequestParam("theSearchName") String theSearchName,
                                    Model theModel) {
        // search customers from the service
        List<Customer> theCustomers = customerService.searchCustomers(theSearchName);
                
        // add the customers to the model
        theModel.addAttribute("customer", theCustomers);
        return "viewApplication";        
    }
	
	@RequestMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("customer") Customer theCustomer,BindingResult theBindingResult)
	{
		if(theBindingResult.hasErrors())
		{
			
			return "customer-form";
		}
		else
		{
			customerService.updateCustomer(theCustomer);
			return "customer-confirmation";
		}
	}
	
	@RequestMapping("/processForm2")
	public String processForm2(@Valid @ModelAttribute("customer") Customer theCustomer,BindingResult theBindingResult)
	{
		if(theBindingResult.hasErrors())
		{
			
			return "updateapplication";
		}
		else
		{
			customerService.updateCustomer(theCustomer);
			return "customer-confirmation";
		}
	}
	
	
	
	@GetMapping("/list")
	public String listCustomers(Model theModel, @RequestParam(required=false) String sort) {
		
		// get customers from the service
		List<Customer> theCustomers = null;
		
		// check for sort field
		if (sort != null) {
			int theSortField = Integer.parseInt(sort);
			theCustomers = customerService.getSortedCustomers(theSortField);			
		}
		else {
			// no sort field provided ... default to sorting by first name
			theCustomers = customerService.getSortedCustomers(SortUtils.FIRST_NAME);
		}
		
		// add the customers to the model
		theModel.addAttribute("customer", theCustomers);
		
		return "viewApplication";
	}
	
	
}