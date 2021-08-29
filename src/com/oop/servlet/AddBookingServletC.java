package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Booking;
import com.oop.service.BookingServiceImpl;
import com.oop.service.IBookingService;

/**
 * Servlet implementation class LoginServlet
 */
public class AddBookingServletC extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddBookingServletC() {
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

		Booking booking = new Booking();
		
		booking.setName(request.getParameter("bookingName"));
		booking.setNoRoom(request.getParameter("noroom"));
		booking.setBookingDate(request.getParameter("bookingdate"));
		booking.setPrice(request.getParameter("price"));
		

		IBookingService iBookingService = new BookingServiceImpl();
		iBookingService.addBooking(booking);

		request.setAttribute("booking", booking);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/ListBooking.jsp");
		dispatcher.forward(request, response);
	}

}
