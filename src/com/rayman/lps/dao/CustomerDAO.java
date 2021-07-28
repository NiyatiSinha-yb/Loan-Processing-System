package com.rayman.lps.dao;

import java.util.List;

import com.rayman.lps.mvc.Customer;

public interface CustomerDAO {

	public List<Customer> getCustomers();

	public Customer getCustomer(int theId);

	public void saveCustomer(Customer theCustomer);

}
