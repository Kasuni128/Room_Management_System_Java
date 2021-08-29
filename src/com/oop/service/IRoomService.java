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

import com.oop.model.Room;

import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactoryConfigurationError;

/**
 * Contract for the implementation of Room Service .
 * 

 */
public interface IRoomService {

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(IRoomService.class.getName());


	/**
	 * Add rooms for room table
	 * @param rooroo
	 */
	public void addRoom(Room room);

	/**
	 * Get a particular Room
	 * 
	 * @param empoyeeID
	 * @return Room
	 */
	public Room getRoomByID(String roomID);
	
	/**
	 * Get all list of rooms
	 * 
	 * @return ArrayList<Room>
	 */
	public ArrayList<Room> getRooms();
	
	/**
	 * Update existing room
	 * @param roomID
	 * @param room
	 * 
	 * @return
	 */
	public Room updateRoom(String roomID, Room room);

	/**
	 * Remove existing room
	 * 
	 * @param roomID
	 */
	public void removeRoom(String roomID);

}
