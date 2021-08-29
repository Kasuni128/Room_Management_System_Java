/**
 * 2018 OOP
 * 
 * @author Udara Samaratunge  Department of Software Engineering, SLIIT 
 * 
 * @version 1.0
 * Copyright: SLIIT, All rights reserved
 * 
 */
package com.oop.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.oop.service.IUserService;

/**
 * This is the common utility class to load all property details at once when it
 * is initializing .
 * 
 */
public class CommonUtilU {

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(IUserService.class.getName());

	public static final Properties properties = new Properties();

	static {
		try {
			
			// Read the property only once when load the class
			properties.load(QueryUtilU.class.getResourceAsStream(CommonConstantsU.PROPERTY_FILE));
			
		} catch (IOException e) {
			log.log(Level.SEVERE, e.getMessage());
		}
	}

	/**
	 * Add new User ID
	 * 
	 * @param arrayList
	 * @return
	 */
	public static String generateIDs(ArrayList<String> arrayList) {

		String id;
		int next = arrayList.size();
		next++;
		id = CommonConstantsU.USER_ID_PREFIX + next;
		if (arrayList.contains(id)) {
			next++;
			id = CommonConstantsU.USER_ID_PREFIX + next;
		}
		return id;
	}
}
