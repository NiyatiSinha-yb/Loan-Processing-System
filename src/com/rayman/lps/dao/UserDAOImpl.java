
  package com.rayman.lps.dao;
  
  import java.util.List;

import org.hibernate.Session; import
  org.springframework.stereotype.Repository;

import com.rayman.lps.mvc.Customer;
import com.rayman.lps.mvc.User;
  
  import org.hibernate.Session; import org.hibernate.SessionFactory; import
  org.hibernate.Transaction; import org.hibernate.query.Query; import
  org.springframework.beans.factory.annotation.Autowired; import
  org.springframework.beans.factory.annotation.Qualifier;
  
  
  @Repository
  public class UserDAOImpl implements UserDAO {
  
  @Autowired private SessionFactory sessionFactory;
  
  
  @Override
  public void saveUser(User theUser) { 
	  
	  //get hibernate session
	  Session currentSession=sessionFactory.getCurrentSession();
	  
	  //save the customer
	  currentSession.saveOrUpdate(theUser);
	  
  }
  
  @Override
	
	public List<User> getUsers() {
		//Get current hibernate session
		Session currentSession=sessionFactory.getCurrentSession();
		//create a query
		//sort by first Name
		Query<User> theQuery=currentSession.createQuery("from User",User.class);
		System.out.println("theQuery established");
		//execute query and get result list
		List<User> users=theQuery.getResultList();
		//return the results
		return users;
	}
  
  @Override
  public List<User> searchUsers(String theSearchName, String theSearchPass) {
      // get the current hibernate session
      Session currentSession = sessionFactory.getCurrentSession();
      
      Query<User> theQuery = null;
      
      //
      // only search by name if theSearchName is not empty
      //
      if (theSearchName != null && theSearchName.trim().length() > 0 && theSearchPass != null && theSearchPass.trim().length() > 0) {
          // search for firstName or lastName ... case insensitive
          theQuery =currentSession.createQuery("from User where lower(userName) like :theName and lower(password) like :thePass", User.class);
          theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");
          theQuery.setParameter("thePass", "%" + theSearchPass.toLowerCase() + "%");
      }
      else {
          // theSearchName is empty ... so just get all customers
          //theQuery =currentSession.createQuery("from Customer", Customer.class);            
      }
      
      // execute query and get result list
      List<User> users = theQuery.getResultList();
       
      // return the results        
      return users;
      
  }

     @Override
    public List<User> searchRegisteredUsers(String theRegisteredSearchName) {
	
    	 Session currentSession = sessionFactory.getCurrentSession();
         
         Query<User> theQuery = null;
         if (theRegisteredSearchName != null && theRegisteredSearchName.trim().length() > 0 ) {
             // search for firstName or lastName ... case insensitive
             theQuery =currentSession.createQuery("from User where lower(userName) like :theName ", User.class);
             theQuery.setParameter("theName", "%" + theRegisteredSearchName.toLowerCase() + "%");
             
         }
         else {
             // theSearchName is empty ... so just get all customers
             //theQuery =currentSession.createQuery("from Customer", Customer.class);            
         }
         
         // execute query and get result list
         List<User> users = theQuery.getResultList();
          
         // return the results        
         return users;
      }
  
  }
  
 
 
