package com.rayman.lps.service;

import java.util.List;

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
	@Override
	@Transactional
	public List<User> getUsers() {
		return userDAO.getUsers();
		
	}
	@Override
	@Transactional
	public List<User> searchUsers(String theSearchName,String theSearchPass) {
		return userDAO.searchUsers(theSearchName,theSearchPass);
	}
	@Override
	@Transactional
	public List<User> searchRegisteredUsers(String theRegisteredSearchName) {
		return userDAO.searchRegisteredUsers(theRegisteredSearchName);
	}

}
