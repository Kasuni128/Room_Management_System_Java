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

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import com.oop.model.User;
import com.oop.util.CommonConstantsU;
import com.oop.util.CommonUtilU;
import com.oop.util.DBConnectionUtilU;
import com.oop.util.QueryUtilU;

/**
 * Contract for the implementation of User Service .
 * 
 */
public class UserServiceImpl implements IUserService {
	

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(UserServiceImpl.class.getName());

	private static Connection connection;

	private static Statement statement;

	static{
		//create table or drop if exist
		createUserTable();
	}

	private PreparedStatement preparedStatement;

	/**
	 * This method initially drop existing Users table in the database and
	 * recreate table structure to insert user entries
	 * 
	 * @throws SQLException
	 *             - Thrown when database access error occurs or this method is
	 *             called on a closed connection
	 * @throws ClassNotFoundException
	 *             - Thrown when an application tries to load in a class through
	 *             its string name using
	 * @throws SAXException
	 *             - Encapsulate a general SAX error or warning
	 * @throws IOException
	 *             - Exception produced by failed or interrupted I/O operations.
	 * @throws ParserConfigurationException
	 *             - Indicates a serious configuration error
	 * @throws NullPointerException
	 *             - Service is not available
	 * 
	 */
	public static void createUserTable() {

		try {
			connection = DBConnectionUtilU.getDBConnection();
			statement = connection.createStatement();
			// Drop table if already exists and as per SQL query available in
			// Query.xml
			statement.executeUpdate(QueryUtilU.queryByID(CommonConstantsU.QUERY_ID_DROP_TABLE));
			// Create new users table as per SQL query available in
			// Query.xml
			statement.executeUpdate(QueryUtilU.queryByID(CommonConstantsU.QUERY_ID_CREATE_TABLE));

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		}
	}

	/**
	 * Add set of users for as a batch from the selected user List
	 * 
	 * @throws SQLException
	 *             - Thrown when database access error occurs or this method is
	 *             called on a closed connection
	 * @throws SAXException
	 *             - Encapsulate a general SAX error or warning
	 * @throws IOException
	 *             - Exception produced by failed or interrupted I/O operations.
	 * @throws ParserConfigurationException
	 *             - Indicates a serious configuration error.
	 * 
	 */
	@Override
	public void addUser(User user) {

		String userID = CommonUtilU.generateIDs(getUserIDs());
		
		try {
			connection = DBConnectionUtilU.getDBConnection();
			/*
			 * Query is available in UserQuery.xml file and use
			 * insert_user key to extract value of it
			 */
			preparedStatement = connection
					.prepareStatement(QueryUtilU.queryByID(CommonConstantsU.QUERY_ID_INSERT_USERS));
			connection.setAutoCommit(false);
			
			//Generate user IDs
			user.setUserID(userID);
			preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_ONE, user.getUserID());
			preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_TWO, user.getName());
			preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_THREE, user.getMobile());
			preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_FOUR, user.getEmail());
			preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_FIVE, user.getNIC());
			preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_SIX, user.getAddress());
			preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_SEVEN, user.getNewPassword());
			preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_EIGHT, user.getConfirmPassword());
			// Add user
			preparedStatement.execute();
			connection.commit();

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
	}

	/**
	 * User details can be retrieved based on the provided user ID
	 * 
	 * @param userID
	 *            - User details are filtered based on the ID
	 * 
	 * @see #actionOnUser()
	 */
	@Override
	public User getUserByID(String userID) {

		return actionOnUser(userID).get(0);
	}
	
	/**
	 * Get all list of users
	 * 
	 * @return ArrayList<User> 
	 * 						- Array of user list will be return
	 * 
	 * @see #actionOnUser()
	 */
	@Override
	public ArrayList<User> getUsers() {
		
		return actionOnUser(null);
	}

	/**
	 * This method delete an user based on the provided ID
	 * 
	 * @param userID
	 *            - Delete user according to the filtered user details
	 * @throws SQLException
	 *             - Thrown when database access error occurs or this method is
	 *             called on a closed connection
	 * @throws ClassNotFoundException
	 *             - Thrown when an application tries to load in a class through
	 *             its string name using
	 * @throws SAXException
	 *             - Encapsulate a general SAX error or warning
	 * @throws IOException
	 *             - Exception produced by failed or interrupted I/O operations.
	 * @throws ParserConfigurationException
	 *             - Indicates a serious configuration error.
	 * @throws NullPointerException
	 *             - Service is not available
	 */
	@Override
	public void removeUser(String userID) {

		// Before deleting check whether user ID is available
		if (userID != null && !userID.isEmpty()) {
			/*
			 * Remove user query will be retrieved from UserQuery.xml
			 */
			try {
				connection = DBConnectionUtilU.getDBConnection();
				preparedStatement = connection
						.prepareStatement(QueryUtilU.queryByID(CommonConstantsU.QUERY_ID_REMOVE_USER));
				preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_ONE, userID);
				preparedStatement.executeUpdate();
			} catch (SQLException | SAXException | IOException | ParserConfigurationException
					| ClassNotFoundException e) {
				log.log(Level.SEVERE, e.getMessage());
			} finally {
				/*
				 * Close prepared statement and database connectivity at the end
				 * of transaction
				 */
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		}
	}

	/**
	 * This performs GET user by ID and Display all users
	 * 
	 * @param userID
	 *            ID of the user to remove or select from the list

	 * @return ArrayList<User> Array of user list will be return
	 * 
	 * @throws SQLException
	 *             - Thrown when database access error occurs or this method is
	 *             called on a closed connection
	 * @throws ClassNotFoundException
	 *             - Thrown when an application tries to load in a class through
	 *             its string name using
	 * @throws SAXException
	 *             - Encapsulate a general SAX error or warning
	 * @throws IOException
	 *             - Exception produced by failed or interrupted I/O operations.
	 * @throws ParserConfigurationException
	 *             - Indicates a serious configuration error.
	 * @throws NullPointerException
	 *             - Service is not available
	 * 
	 * @see #getUsers()
	 * @see #getUserByID(String)
	 */
	private ArrayList<User> actionOnUser(String userID) {

		ArrayList<User> userList = new ArrayList<User>();
		try {
			connection = DBConnectionUtilU.getDBConnection();
			/*
			 * Before fetching user it checks whether user ID is
			 * available
			 */
			if (userID != null && !userID.isEmpty()) {
				/*
				 * Get user by ID query will be retrieved from
				 * UserQuery.xml
				 */
				preparedStatement = connection
						.prepareStatement(QueryUtilU.queryByID(CommonConstantsU.QUERY_ID_GET_USER));
				preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_ONE, userID);
			}
			/*
			 * If user ID is not provided for get user option it display
			 * all users
			 */
			else {
				preparedStatement = connection
						.prepareStatement(QueryUtilU.queryByID(CommonConstantsU.QUERY_ID_ALL_USERS));
			}
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				User user = new User();
				user.setUserID(resultSet.getString(CommonConstantsU.COLUMN_INDEX_ONE));
				user.setName(resultSet.getString(CommonConstantsU.COLUMN_INDEX_TWO));
				user.setMobile(resultSet.getString(CommonConstantsU.COLUMN_INDEX_THREE));
				user.setEmail(resultSet.getString(CommonConstantsU.COLUMN_INDEX_FOUR));
				user.setNIC(resultSet.getString(CommonConstantsU.COLUMN_INDEX_FIVE));
				user.setAddress(resultSet.getString(CommonConstantsU.COLUMN_INDEX_SIX));
				user.setNewPassword(resultSet.getString(CommonConstantsU.COLUMN_INDEX_SEVEN));
				user.setConfirmPassword(resultSet.getString(CommonConstantsU.COLUMN_INDEX_EIGHT));
				userList.add(user);
			}

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return userList;
	}

	/**
	 * Get the updated user
	 * 
	 * @param userID
	 *            ID of the user to remove or select from the list
	 * 
	 * @return return the User object
	 * 
	 */
	@Override
	public User updateUser(String userID, User user) {

		/*
		 * Before fetching user it checks whether user ID is available
		 */
		if (userID != null && !userID.isEmpty()) {
			/*
			 * Update user query will be retrieved from UserQuery.xml
			 */
			try {
				connection = DBConnectionUtilU.getDBConnection();
				preparedStatement = connection
						.prepareStatement(QueryUtilU.queryByID(CommonConstantsU.QUERY_ID_UPDATE_USER));
				preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_ONE, user.getName());
				preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_TWO, user.getMobile());
				preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_THREE, user.getEmail());
				preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_FOUR, user.getNIC());
				preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_FIVE, user.getAddress());
				preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_SIX, user.getNewPassword());
				preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_SEVEN, user.getConfirmPassword());
				preparedStatement.setString(CommonConstantsU.COLUMN_INDEX_EIGHT, user.getUserID());
				preparedStatement.executeUpdate();

			} catch (SQLException | SAXException | IOException | ParserConfigurationException
					| ClassNotFoundException e) {
				log.log(Level.SEVERE, e.getMessage());
			} finally {
				/*
				 * Close prepared statement and database connectivity at the end
				 * of transaction
				 */
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		}
		// Get the updated user
		return getUserByID(userID);
	}
	
	/**
	 *
	 * @return ArrayList<String> Array of user id list will be return
	 * 
	 * @throws SQLException
	 *             - Thrown when database access error occurs or this method is
	 *             called on a closed connection
	 * @throws ClassNotFoundException
	 *             - Thrown when an application tries to load in a class through
	 *             its string name using
	 * @throws SAXException
	 *             - Encapsulate a general SAX error or warning
	 * @throws IOException
	 *             - Exception produced by failed or interrupted I/O operations.
	 * @throws ParserConfigurationException
	 *             - Indicates a serious configuration error.
	 * @throws NullPointerException
	 *             - Service is not available
	 */
	private ArrayList<String> getUserIDs(){
		
		ArrayList<String> arrayList = new ArrayList<String>();
		/*
		 * List of user IDs will be retrieved from UserQuery.xml
		 */
		try {
			connection = DBConnectionUtilU.getDBConnection();
			preparedStatement = connection
					.prepareStatement(QueryUtilU.queryByID(CommonConstantsU.QUERY_ID_GET_USER_IDS));
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				arrayList.add(resultSet.getString(CommonConstantsU.COLUMN_INDEX_ONE));
			}
		} catch (SQLException | SAXException | IOException | ParserConfigurationException
				| ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return arrayList;
	}
}
