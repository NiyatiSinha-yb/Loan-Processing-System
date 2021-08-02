package com.rayman.lps.service;

import java.util.List;

import com.rayman.lps.mvc.User;

public interface UserService {
	public void saveUser(User theUser);

	public List<User> getUsers();
	public List<User> searchUsers(String theSearchName,String theSearchPass);
	public List<User> searchRegisteredUsers(String theRegisteredSearchName);
}
