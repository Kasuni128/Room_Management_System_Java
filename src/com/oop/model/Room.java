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
 * This is the Room model class
 */
public class Room {

	private String RoomID;
	
	private String Name;

	private String RoomType;

	private String Description;
	
	private String Facilities;
	
	private String Price;
	
	

	

	/**
	 * @return the roomID
	 */
	public String getRoomID() {
		return RoomID;
	}

	/**
	 * @param roomID the roomID to set
	 */
	public void setRoomID(String roomID) {
		RoomID = roomID;
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

	/**
	 * @return the RoomType
	 */
	public String getRoomType() {
		return RoomType;
	}

	/**
	 * @param RoomType the RoomType to set
	 */
	public void setRoomType(String roomtype) {
		RoomType = roomtype;
	}

	public String getDescription() {
		return Description;
	}

	
	/**
	 * @param roomID the roomID to set
	 */
	public void setDescription(String description) {
		Description =description;
	}
	public String getFacilities() {
		return Facilities;
	}

	/**
	 * @param roomID the roomID to set
	 */
	public void setFacilities(String facilities) {
		Facilities = facilities;
	}

	/**
	 * @return the Price
	 */
	public String getPrice() {
		return Price;
	}

	/**
	 * @param Price the price to set
	 */
	public void setPrice(String price) {
		Price = price;
	}

	

	@Override
	public String toString() {
		
		return "Room ID = " + RoomID + "\n" + "Room Name = " + Name + "\n" + "Room Type = " + RoomType + "\n"+"Description= "+Description+
				"Facilities=" +Facilities +"\n"	+ "Room Price = " + Price ;
	}
}
