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
 * Update users servlet
 */
public class UpdateUserServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateUserServlet() {
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

		User user = new User();
		String userID = request.getParameter("userID");	
		user.setUserID(userID);
		user.setName(request.getParameter("name"));
		user.setMobile(request.getParameter("mobile"));
		user.setEmail(request.getParameter("email"));
		user.setNIC(request.getParameter("nic"));
		user.setAddress(request.getParameter("address"));
		user.setNewPassword(request.getParameter("newPassword"));
		user.setConfirmPassword(request.getParameter("confirmPassword"));
		
		IUserService iUserService = new UserServiceImpl();
		iUserService.updateUser(userID, user);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/ListUsers.jsp");
		dispatcher.forward(request, response);
	}

}
