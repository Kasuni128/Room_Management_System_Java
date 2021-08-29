/**
 * OOP 2018
 * 
 * @author Udara Samaratunge  Department of Software Engineering, SLIIT 
 * 
 * @version 1.0
 * Copyright: SLIIT, All rights reserved
 * 
 */
package com.oop.service;

import com.oop.model.User;

import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactoryConfigurationError;

/**
 * Contract for the implementation of User Service .
 * 
 */
public interface IUserService {

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(IUserService.class.getName());


	/**
	 * Add users for user table
	 * @param user
	 */
	public void addUser(User user);

	/**
	 * Get a particular User
	 * 
	 * @param userID
	 * @return User
	 */
	public User getUserByID(String userID);
	
	/**
	 * Get all list of users
	 * 
	 * @return ArrayList<User>
	 */
	public ArrayList<User> getUsers();
	
	/**
	 * Update existing user
	 * @param userID
	 * @param user
	 * 
	 * @return
	 */
	public User updateUser(String userID, User user);

	/**
	 * Remove existing user
	 * 
	 * @param userID
	 */
	public void removeUser(String userID);

}
