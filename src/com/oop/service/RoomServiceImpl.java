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

import com.oop.model.Room;
import com.oop.util.CommonConstants;
import com.oop.util.CommonUtil;
import com.oop.util.DBConnectionUtil;
import com.oop.util.QueryUtil;

/**
 * Contract for the implementation of Room Service .
 */
public class RoomServiceImpl implements IRoomService {
	

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(RoomServiceImpl.class.getName());

	private static Connection connection;

	private static Statement statement;

	static{
		//create table or drop if exist
		createRoomTable();
	}

	private PreparedStatement preparedStatement;

	/**
	 * This method initially drop existing Rooms table in the database and
	 * recreate table structure to insert room entries
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
	public static void createRoomTable() {

		try {
			connection = DBConnectionUtil.getDBConnection();
			statement = connection.createStatement();
			// Drop table if already exists and as per SQL query available in
			// Query.xml
			statement.executeUpdate(QueryUtil.queryByID(CommonConstants.QUERY_ID_DROP_TABLE));
			// Create new rooms table as per SQL query available in
			// Query.xml
			statement.executeUpdate(QueryUtil.queryByID(CommonConstants.QUERY_ID_CREATE_TABLE));

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		}
	}

	/**
	 * Add set of rooms for as a batch from the selected room List
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
	public void addRoom(Room room) {

		String roomID = CommonUtil.generateIDs(getRoomIDs());
		
		try {
			connection = DBConnectionUtil.getDBConnection();
			/*
			 * Query is available in RoomQuery.xml file and use
			 * insert_room key to extract value of it
			 */
			preparedStatement = connection
					.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_INSERT_ROOMS));
			connection.setAutoCommit(false);
			
			//Generate room IDs
			room.setRoomID(roomID);
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, room.getRoomID());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, room.getName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, room.getRoomType());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, room.getDescription());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, room.getFacilities());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SIX, room.getPrice());
		
			// Add room
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
	 * Room details can be retrieved based on the provided room ID
	 * 
	 * @param roomID
	 *            - Room details are filtered based on the ID
	 * 
	 * @see #actionOnRoom()
	 */
	@Override
	public Room getRoomByID(String roomID) {

		return actionOnRoom(roomID).get(0);
	}
	
	/**
	 * Get all list of rooms
	 * 
	 * @return ArrayList<Room> 
	 * 						- Array of room list will be return
	 * 
	 * @see #actionOnRoom()
	 */
	@Override
	public ArrayList<Room> getRooms() {
		
		return actionOnRoom(null);
	}

	/**
	 * This method delete an room based on the provided ID
	 * 
	 * @param roomID
	 *            - Delete room according to the filtered room details
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
	public void removeRoom(String roomID) {

		// Before deleting check whether room ID is available
		if (roomID != null && !roomID.isEmpty()) {
			/*
			 * Remove room query will be retrieved from RoomQuery.xml
			 */
			try {
				connection = DBConnectionUtil.getDBConnection();
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_REMOVE_ROOM));
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, roomID);
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
	 * This performs GET room by ID and Display all rooms
	 * 
	 * @param roomID
	 *            ID of the room to remove or select from the list

	 * @return ArrayList<Room> Array of room list will be return
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
	 * @see #getRooms()
	 * @see #getRoomByID(String)
	 */
	private ArrayList<Room> actionOnRoom(String roomID) {

		ArrayList<Room> roomList = new ArrayList<Room>();
		try {
			connection = DBConnectionUtil.getDBConnection();
			/*
			 * Before fetching room it checks whether room ID is
			 * available
			 */
			if (roomID != null && !roomID.isEmpty()) {
				/*
				 * Get room by ID query will be retrieved from
				 * RoomQuery.xml
				 */
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_GET_ROOM));
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, roomID);
			}
			/*
			 * If room ID is not provided for get room option it display
			 * all rooms
			 */
			else {
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_ALL_ROOMS));
			}
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Room room = new Room();
				room.setRoomID(resultSet.getString(CommonConstants.COLUMN_INDEX_ONE));
				room.setName(resultSet.getString(CommonConstants.COLUMN_INDEX_TWO));
				room.setRoomType(resultSet.getString(CommonConstants.COLUMN_INDEX_THREE));
				room.setDescription(resultSet.getString(CommonConstants.COLUMN_INDEX_FOUR));
				room.setFacilities(resultSet.getString(CommonConstants.COLUMN_INDEX_FIVE));
				room.setPrice(resultSet.getString(CommonConstants.COLUMN_INDEX_SIX));
				roomList.add(room);
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
		return roomList;
	}

	/**
	 * Get the updated room
	 * 
	 * @param roomID
	 *            ID of the room to remove or select from the list
	 * 
	 * @return return the Room object
	 * 
	 */
	@Override
	public Room updateRoom(String roomID, Room room) {

		/*
		 * Before fetching room it checks whether room ID is available
		 */
		if (roomID != null && !roomID.isEmpty()) {
			/*
			 * Update room query will be retrieved from RoomQuery.xml
			 */
			try {
				connection = DBConnectionUtil.getDBConnection();
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_UPDATE_ROOM));
				
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, room.getName());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, room.getRoomType());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, room.getDescription());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, room.getFacilities());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, room.getPrice());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_SIX, room.getRoomID());

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
		// Get the updated room
		return getRoomByID(roomID);
	}
	
	/**
	 *
	 * @return ArrayList<String> Array of room id list will be return
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
	private ArrayList<String> getRoomIDs(){
		
		ArrayList<String> arrayList = new ArrayList<String>();
		/*
		 * List of room IDs will be retrieved from RoomQuery.xml
		 */
		try {
			connection = DBConnectionUtil.getDBConnection();
			preparedStatement = connection
					.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_GET_ROOM_IDS));
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				arrayList.add(resultSet.getString(CommonConstants.COLUMN_INDEX_ONE));
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
