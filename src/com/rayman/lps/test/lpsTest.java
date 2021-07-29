package com.rayman.lps.test;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.rayman.lps.mvc.Customer;
import com.rayman.lps.service.CustomerService;
import com.rayman.lps.service.CustomerServiceImp;

public class lpsTest {
	@Autowired
	private CustomerService customerServiceImp;

	@Test
	public void test() {
		List<Customer> customer = customerServiceImp.getCustomers();
		Assert.assertNotNull(customer);
	}
}
