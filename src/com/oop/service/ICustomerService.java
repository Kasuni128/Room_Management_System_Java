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

import com.oop.model.Customer;

import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactoryConfigurationError;

/**
 * Contract for the implementation of Customer Service .
 * 

 */
public interface ICustomerService {

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(ICustomerService.class.getName());


	/**
	 * Add customers for customer table
	 * @param customer
	 */
	public void addCustomer(Customer customer);

	/**
	 * Get a particular Customer
	 * 
	 * @param customerID
	 * @return Customer
	 */
	public Customer getCustomerByID(String customerID);
	
	/**
	 * Get all list of customers
	 * 
	 * @return ArrayList<Customer>
	 */
	public ArrayList<Customer> getCustomers();
	
	/**
	 * Update existing customer
	 * @param customerID
	 * @param customer
	 * 
	 * @return
	 */
	public Customer updateCustomer(String customerID, Customer customer);

	/**
	 * Remove existing customer
	 * 
	 * @param customerID
	 */
	public void removeCustomer(String customerID);

}
