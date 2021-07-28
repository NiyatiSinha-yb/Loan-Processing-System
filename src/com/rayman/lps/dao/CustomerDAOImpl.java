package com.rayman.lps.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rayman.lps.mvc.Customer;

//handles exception translation
//we need for spring to do component scan
//repository is always added to DAO implementations
@Repository
public class CustomerDAOImpl implements CustomerDAO {

	//injecting sessionFactory
	//sessionFactory is the bean ID we created in xml file
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	
	public List<Customer> getCustomers() {
		//Get current hibernate session
		Session currentSession=sessionFactory.getCurrentSession();
		//create a query
		//sort by first Name
		Query<Customer> theQuery=currentSession.createQuery("from Customer order by firstName",Customer.class);
		System.out.println("theQuery established");
		//execute query and get result list
		List<Customer> customers=theQuery.getResultList();
		//return the results
		return customers;
	}


	@Override
	public Customer getCustomer(int theId) {
		//get current hibernate session
		Session currentSession= sessionFactory.getCurrentSession();
		//retrieve from database using primary key
		Customer theCustomer=currentSession.get(Customer.class, theId);
		return theCustomer;
	}


	@Override
	public void saveCustomer(Customer theCustomer) {
		//get hibernate session
		Session currentSession=sessionFactory.getCurrentSession();
		//save the customer
		currentSession.saveOrUpdate(theCustomer);
		
	}
   
  
	

}
