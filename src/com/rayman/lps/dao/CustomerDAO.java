package com.rayman.lps.dao;

import java.util.List;

import com.rayman.lps.mvc.Customer;

public interface CustomerDAO {



	public Customer getCustomer(int theId);

	public void saveCustomer(Customer theCustomer);

	public void deleteCustomer(int theId);

	public List<Customer> searchCustomers(String theSearchName);

	public List<Customer> getSortedCustomers(int theSortField);

	public List<Customer> getCustomers();
	
	public Customer viewCustomer(int theId);

}

