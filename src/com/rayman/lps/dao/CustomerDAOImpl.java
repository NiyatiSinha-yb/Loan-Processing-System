package com.rayman.lps.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rayman.lps.mvc.Customer;
import com.rayman.lps.util.SortUtils;

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
		Query<Customer> theQuery=currentSession.createQuery("from Customer",Customer.class);
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
	public Customer viewCustomer(int theId) {
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
		currentSession.save(theCustomer);
			
		
	}
  
	@Override
	public void updateCustomer(Customer theCustomer) {
		//get hibernate session
		Session currentSession=sessionFactory.getCurrentSession();
		//save the customer
		currentSession.saveOrUpdate(theCustomer);
			
		
	}

	@Override
	public void deleteCustomer(int theId) {
		Session currentSession=sessionFactory.getCurrentSession();
		//delete object with primary key
		Query theQuery=currentSession.createQuery("delete from Customer where ID=:customerId");
		theQuery.setParameter("customerId", theId);
		theQuery.executeUpdate();
	}

	
	@Override
    public List<Customer> searchCustomers(String theSearchName) {
        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();
        
        Query<Customer> theQuery = null;
        
        //
        // only search by name if theSearchName is not empty
        //
        if (theSearchName != null && theSearchName.trim().length() > 0) {
            // search for firstName or lastName ... case insensitive
            theQuery =currentSession.createQuery("from Customer where lower(firstName) like :theName or lower(lastName) like :theName", Customer.class);
            theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");
        }
        else {
            // theSearchName is empty ... so just get all customers
            theQuery =currentSession.createQuery("from Customer", Customer.class);            
        }
        
        // execute query and get result list
        List<Customer> customers = theQuery.getResultList();
                
        // return the results        
        return customers;
        
    }


	@Override
	public List<Customer> getSortedCustomers(int theSortField) {
		// get the current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
						
				// determine sort field
				String theFieldName = null;
				
				switch (theSortField) {
					case SortUtils.FIRST_NAME: 
						theFieldName = "firstName";
						break;
					
					case SortUtils.EMAIL:
						theFieldName = "emailAddress";
						break;
					case SortUtils.SUBMITTED_DATE:
						theFieldName="submitted_Date";
						break;
					default:
						// if nothing matches the default to sort by lastName
						theFieldName = "submitted_Date";
				}
				
				// create a query  
				String queryString = "from Customer order by " + theFieldName;
				Query<Customer> theQuery = 
						currentSession.createQuery(queryString, Customer.class);
				
				// execute query and get result list
				List<Customer> customers = theQuery.getResultList();
						
				// return the results		
				return customers;
	}
  
	

}
