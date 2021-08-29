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

import com.oop.model.Booking;
import com.oop.util.CommonConstantsB;
import com.oop.util.CommonUtilB;
import com.oop.util.DBConnectionUtilB;
import com.oop.util.QueryUtilB;

/**
 * Contract for the implementation of Booking Service .
 
 */
public class BookingServiceImpl implements IBookingService {
	

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(BookingServiceImpl.class.getName());

	private static Connection connection;

	private static Statement statement;

	static{
		//create table or drop if exist
		createBookingTable();
	}

	private PreparedStatement preparedStatement;

	/**
	 * This method initially drop existing Bookings table in the database and
	 * recreate table structure to insert booking entries
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
	public static void createBookingTable() {

		try {
			connection = DBConnectionUtilB.getDBConnection();
			statement = connection.createStatement();
			// Drop table if already exists and as per SQL query available in
			// Query.xml
			statement.executeUpdate(QueryUtilB.queryByID(CommonConstantsB.QUERY_ID_DROP_TABLE));
			// Create new bookings table as per SQL query available in
			// Query.xml
			statement.executeUpdate(QueryUtilB.queryByID(CommonConstantsB.QUERY_ID_CREATE_TABLE));

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		}
	}

	/**
	 * Add set of bookings for as a batch from the selected booking List
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
	public void addBooking(Booking booking) {

		String bookingID = CommonUtilB.generateIDs(getBookingIDs());
		
		try {
			connection = DBConnectionUtilB.getDBConnection();
			/*
			 * Query is available in BookingQuery.xml file and use
			 * insert_booking key to extract value of it
			 */
			preparedStatement = connection
					.prepareStatement(QueryUtilB.queryByID(CommonConstantsB.QUERY_ID_INSERT_BOOKINGS));
			connection.setAutoCommit(false);
			
			//Generate booking IDs
			booking.setBookingID(bookingID);
			preparedStatement.setString(CommonConstantsB.COLUMN_INDEX_ONE, booking.getBookingID());
			preparedStatement.setString(CommonConstantsB.COLUMN_INDEX_TWO, booking.getName());
			preparedStatement.setString(CommonConstantsB.COLUMN_INDEX_THREE, booking.getNoRoom());
			preparedStatement.setString(CommonConstantsB.COLUMN_INDEX_FOUR, booking.getBookingDate());
			preparedStatement.setString(CommonConstantsB.COLUMN_INDEX_FIVE, booking.getPrice());
		
			// Add booking
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
	 * Booking details can be retrieved based on the provided booking ID
	 * 
	 * @param bookingID
	 *            - Booking details are filtered based on the ID
	 * 
	 * @see #actionOnBooking()
	 */
	@Override
	public Booking getBookingByID(String bookingID) {

		return actionOnBooking(bookingID).get(0);
	}
	
	/**
	 * Get all list of bookings
	 * 
	 * @return ArrayList<Booking> 
	 * 						- Array of booking list will be return
	 * 
	 * @see #actionOnBooking()
	 */
	@Override
	public ArrayList<Booking> getBookings() {
		
		return actionOnBooking(null);
	}

	/**
	 * This method delete an booking based on the provided ID
	 * 
	 * @param bookingID
	 *            - Delete booking according to the filtered booking details
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
	public void removeBooking(String bookingID) {

		// Before deleting check whether booking ID is available
		if (bookingID != null && !bookingID.isEmpty()) {
			/*
			 * Remove booking query will be retrieved from BookingQuery.xml
			 */
			try {
				connection = DBConnectionUtilB.getDBConnection();
				preparedStatement = connection
						.prepareStatement(QueryUtilB.queryByID(CommonConstantsB.QUERY_ID_REMOVE_BOOKING));
				preparedStatement.setString(CommonConstantsB.COLUMN_INDEX_ONE, bookingID);
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
	 * This performs GET booking by ID and Display all bookings
	 * 
	 * @param bookingID
	 *            ID of the booking to remove or select from the list

	 * @return ArrayList<Booking> Array of booking list will be return
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
	 * @see #getBookings()
	 * @see #getBookingByID(String)
	 */
	private ArrayList<Booking> actionOnBooking(String bookingID) {

		ArrayList<Booking> bookingList = new ArrayList<Booking>();
		try {
			connection = DBConnectionUtilB.getDBConnection();
			/*
			 * Before fetching booking it checks whether booking ID is
			 * available
			 */
			if (bookingID != null && !bookingID.isEmpty()) {
				/*
				 * Get booking by ID query will be retrieved from
				 * BookingQuery.xml
				 */
				preparedStatement = connection
						.prepareStatement(QueryUtilB.queryByID(CommonConstantsB.QUERY_ID_GET_BOOKING));
				preparedStatement.setString(CommonConstantsB.COLUMN_INDEX_ONE, bookingID);
			}
			/*
			 * If booking ID is not provided for get booking option it display
			 * all bookings
			 */
			else {
				preparedStatement = connection
						.prepareStatement(QueryUtilB.queryByID(CommonConstantsB.QUERY_ID_ALL_BOOKINGS));
			}
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Booking booking = new Booking();
				booking.setBookingID(resultSet.getString(CommonConstantsB.COLUMN_INDEX_ONE));
				booking.setName(resultSet.getString(CommonConstantsB.COLUMN_INDEX_TWO));
				booking.setNoRoom(resultSet.getString(CommonConstantsB.COLUMN_INDEX_THREE));
				booking.setBookingDate(resultSet.getString(CommonConstantsB.COLUMN_INDEX_FOUR));
				booking.setPrice(resultSet.getString(CommonConstantsB.COLUMN_INDEX_FIVE));
				bookingList.add(booking);
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
		return bookingList;
	}

	/**
	 * Get the updated booking
	 * 
	 * @param bookingID
	 *            ID of the booking to remove or select from the list
	 * 
	 * @return return the Booking object
	 * 
	 */
	@Override
	public Booking updateBooking(String bookingID, Booking booking) {

		/*
		 * Before fetching booking it checks whether booking ID is available
		 */
		if (bookingID != null && !bookingID.isEmpty()) {
			/*
			 * Update booking query will be retrieved from BookingQuery.xml
			 */
			try {
				connection = DBConnectionUtilB.getDBConnection();
				preparedStatement = connection
						.prepareStatement(QueryUtilB.queryByID(CommonConstantsB.QUERY_ID_UPDATE_BOOKING));
				
				preparedStatement.setString(CommonConstantsB.COLUMN_INDEX_ONE, booking.getName());
				preparedStatement.setString(CommonConstantsB.COLUMN_INDEX_TWO, booking.getNoRoom());
				preparedStatement.setString(CommonConstantsB.COLUMN_INDEX_THREE, booking.getBookingDate());
				preparedStatement.setString(CommonConstantsB.COLUMN_INDEX_FOUR, booking.getPrice());
				preparedStatement.setString(CommonConstantsB.COLUMN_INDEX_FIVE, booking.getBookingID());

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
		// Get the updated booking
		return getBookingByID(bookingID);
	}
	
	/**
	 *
	 * @return ArrayList<String> Array of booking id list will be return
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
	private ArrayList<String> getBookingIDs(){
		
		ArrayList<String> arrayList = new ArrayList<String>();
		/*
		 * List of booking IDs will be retrieved from BookingQuery.xml
		 */
		try {
			connection = DBConnectionUtilB.getDBConnection();
			preparedStatement = connection
					.prepareStatement(QueryUtilB.queryByID(CommonConstantsB.QUERY_ID_GET_BOOKING_IDS));
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				arrayList.add(resultSet.getString(CommonConstantsB.COLUMN_INDEX_ONE));
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
