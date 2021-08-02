package com.rayman.lps.service;

import java.util.List;

import com.rayman.lps.mvc.Customer;
import com.rayman.lps.mvc.User;



public interface CustomerService {

	

	public Customer getCustomer(int theId);

	public Customer viewCustomer(int theId);

	public void saveCustomer(Customer theCustomer);

	public void updateCustomer(Customer theCustomer);
	
	public void deleteCustomer(int theId);


	public List<Customer> searchCustomers(String theSearchName);


	public List<Customer> getSortedCustomers(int theSortField);


	public List<Customer> getCustomers();


	
	
}