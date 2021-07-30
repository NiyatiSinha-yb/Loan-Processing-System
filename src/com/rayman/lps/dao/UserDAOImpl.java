package com.rayman.lps.dao;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import com.rayman.lps.mvc.User;

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
