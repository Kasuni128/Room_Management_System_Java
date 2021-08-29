package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.User;
import com.oop.service.UserServiceImpl;
import com.oop.service.IUserService;

/**
 * Delete users servlet
 */
public class DeleteUserServletU extends HttpServlet {


	/**
	 * 
	 */
	private static final long serialVersionUID = 1871871796669342804L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteUserServletU() {
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

		String userID = request.getParameter("userID");			
		
		IUserService iUserService = new UserServiceImpl();
		iUserService.removeUser(userID);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/ListUser.jsp");
		dispatcher.forward(request, response);
	}

}
