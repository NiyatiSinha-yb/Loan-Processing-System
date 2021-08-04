package com.rayman.lps.mvc;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.rayman.lps.dao.CustomerDAO;
import com.rayman.lps.dao.CustomerDAOImpl;
import com.rayman.lps.mvc.Customer;
import com.rayman.lps.service.CustomerService;
import com.rayman.lps.service.CustomerServiceImp;

@SpringBootTest
//@ExtendWith(SpringExtension.class)
public class lpsTest2 {
	@Autowired
	private CustomerService customerServiceImp;
	@Autowired
	private CustomerService customerService;

	@Autowired
	private CustomerDAO customerDAOImpl;
	@Test
	public void test() {
		//CustomerService customerServiceImp=new CustomerService();
		System.out.println("Trying to print!"+customerService);
//		List<Customer> customer = customerServiceImp.getCustomers();
//		Assert.assertNotNull(customer);
		
		
	}
}
