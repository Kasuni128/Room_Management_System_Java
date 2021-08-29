/**
 * OOP 2018
 * 
 * @author Udara Samaratunge  Department of Software Engineering, SLIIT 
 * 
 * @version 1.0
 * Copyright: SLIIT, All rights reserved
 * 
 */
package com.oop.model;

/**
 * This is the Booking model class
 * 

 */
public class Booking {

	private String BookingID;
	
	private String Name;
	
	private String NoRoom;

	private String BookingDate;

	private String Price;
	
	

	

	/**
	 * @return the dookingID
	 */
	public String getBookingID() {
		return BookingID;
	}

	/**
	 * @param dookingID the dookingID to set
	 */
	public void setBookingID(String bookingID) {
		BookingID = bookingID;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return Name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		Name = name;
	}
	
	public String getNoRoom() {
		return NoRoom;
	}

	/**
	 * @param name the name to set
	 */
	public void setNoRoom(String noroom) {
		NoRoom = noroom;
	}

	
	/**
	 * @return the designation
	 */
	public String getBookingDate() {
		return BookingDate;
	}

	/**
	 * @param designation the designation to set
	 */
	public void setBookingDate(String bookingdate) {
		BookingDate = bookingdate;
	}

	/**
	 * @return the facultyName
	 */
	public String getPrice() {
		return Price;
	}

	/**
	 * @param facultyName the facultyName to set
	 */
	public void setPrice(String price) {
		Price = price;
	}

	

	@Override
	public String toString() {
		
		return "Booking ID = " + BookingID + "\n" + "Booking Name = " + Name + "\n"+"No of Room " +NoRoom+"\n "+"Booking Date = " + BookingDate + "\n"
				+ "Booking Price = " + Price ;
	}
}
