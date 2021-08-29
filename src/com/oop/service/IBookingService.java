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

import com.oop.model.Booking;

import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactoryConfigurationError;

/**
 * Contract for the implementation of Booking Service .

 */
public interface IBookingService {

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(IBookingService.class.getName());


	/**
	 * Add bookings for booking table
	 * @param rooroo
	 */
	public void addBooking(Booking booking);

	/**
	 * Get a particular Booking
	 * 
	 * @param empoyeeID
	 * @return Booking
	 */
	public Booking getBookingByID(String bookingID);
	
	/**
	 * Get all list of bookings
	 * 
	 * @return ArrayList<Booking>
	 */
	public ArrayList<Booking> getBookings();
	
	/**
	 * Update existing booking
	 * @param bookingID
	 * @param booking
	 * 
	 * @return
	 */
	public Booking updateBooking(String bookingID, Booking booking);

	/**
	 * Remove existing booking
	 * 
	 * @param bookingID
	 */
	public void removeBooking(String bookingID);

}
