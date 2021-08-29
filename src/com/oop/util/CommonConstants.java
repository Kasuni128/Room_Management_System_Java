/**
 * OOP 2018
 * 
 * @author Udara Samaratunge  Department of Software Engineering, SLIIT 
 * 
 * @version 1.0
 * Copyright: SLIIT, All rights reserved
 * 
 */
package com.oop.util;

/**
 * This is the common constants file for Java Web project.
 */
public class CommonConstants {

	/** Constant for config.properties key for query file path */
	public static final String QUERY_XML = "queryFilePath";

	/** Constant for file path of config.properties */
	public static final String PROPERTY_FILE = "config.properties";

	/** Constant for query tag in RoomQuery.xml */
	public static final String TAG_NAME = "query";

	/** Constant for query id in RoomQuery.xml */
	public static final String ATTRIB_ID = "id";
	
	/** Constant for room id prefix */
	public static final String ROOM_ID_PREFIX = "R300";

	/** Constant for comma */
	public static final String COMMA = ",";

	/** Constant for url key of MySQL database in config.properties */
	public static final String URL = "url";

	/** Constant for user name key of MySQL database in config.properties */
	public static final String USERNAME = "username";

	/** Constant for password key of MySQL database in config.properties */
	public static final String PASSWORD = "password";

	/** Constant for driver name key of MySQL database in config.properties */
	public static final String DRIVER_NAME = "driverName";

	/** Constant for query id of drop_table in RoomQuery.xml */
	public static final String QUERY_ID_DROP_TABLE = "drop_table";

	/** Constant for query id of create_table in RoomQuery.xml */
	public static final String QUERY_ID_CREATE_TABLE = "create_room_table";

	/** Constant for query id of insert rooms in RoomQuery.xml */
	public static final String QUERY_ID_INSERT_ROOMS = "insert_room";

	/** Constant for query id of get an room in RoomQuery.xml */
	public static final String QUERY_ID_GET_ROOM = "room_by_id";

	/** Constant for query id of get all rooms in RoomQuery.xml */
	public static final String QUERY_ID_ALL_ROOMS = "all_rooms";

	/** Constant for query id of remove a room in RoomQuery.xml */
	public static final String QUERY_ID_REMOVE_ROOM = "remove_room";

	/** Constant for query id of update a room in RoomQuery.xml */
	public static final String QUERY_ID_UPDATE_ROOM = "update_room";

	/** Constant for query id of get all room ids in RoomQuery.xml */
	public static final String QUERY_ID_GET_ROOM_IDS = "room_ids";
	
	/** Constant for Column index one */
	public static final int COLUMN_INDEX_ONE = 1;
	
	/** Constant for Column index two */
	public static final int COLUMN_INDEX_TWO = 2;
	
	/** Constant for Column index three */
	public static final int COLUMN_INDEX_THREE = 3;
	
	/** Constant for Column index four */
	public static final int COLUMN_INDEX_FOUR = 4;
	
	/** Constant for Column index five */
	public static final int COLUMN_INDEX_FIVE= 5;
	
	/** Constant for Column index five */
	public static final int COLUMN_INDEX_SIX= 6;
	
	
	
}
