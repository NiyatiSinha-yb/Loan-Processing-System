package com.rayman.lps.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rayman.lps.dao.CustomerDAO;
import com.rayman.lps.dao.UserDAO;
import com.rayman.lps.mvc.Customer;
import com.rayman.lps.mvc.User;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	@Override
	@Transactional
	public void saveUser(User theUser) {
		userDAO.saveUser(theUser);
	}


}
