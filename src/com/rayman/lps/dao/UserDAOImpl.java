package com.rayman.lps.dao;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.rayman.lps.mvc.User;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;


@Repository
public class UserDAOImpl implements UserDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public void saveUser(User theUser) {
		//get hibernate session
		
				Session currentSession=sessionFactory.getCurrentSession();
				
				//save the customer
				currentSession.saveOrUpdate(theUser);
				
		
	}
	

}
