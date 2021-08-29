package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Room;
import com.oop.service.RoomServiceImpl;
import com.oop.service.IRoomService;

/**
 * Update rooms servlet
 */
public class UpdateRoomServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateRoomServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		Room room = new Room();
		String roomID = request.getParameter("roomID");	
		room.setRoomID(roomID);
		room.setName(request.getParameter("roomName"));
		room.setRoomType(request.getParameter("roomtype"));
		room.setDescription(request.getParameter("description"));
		room.setFacilities(request.getParameter("facilities"));
		room.setPrice(request.getParameter("price"));
		
		
		
		IRoomService iRoomService = new RoomServiceImpl();
		iRoomService.updateRoom(roomID, room);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/ListRooms.jsp");
		dispatcher.forward(request, response);
	}

}
