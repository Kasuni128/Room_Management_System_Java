package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Customer;
import com.oop.service.CustomerServiceImpl;
import com.oop.service.ICustomerService;

/**
 * Servlet implementation class LoginServlet
 */
public class AddCustomerServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddCustomerServlet() {
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

		Customer customer = new Customer();
		
		customer.setName(request.getParameter("name"));
		customer.setMobile(request.getParameter("mobile"));
		customer.setType(request.getParameter("type"));
		customer.setCardNo(request.getParameter("cardNo"));
		customer.setExpiry(request.getParameter("expiry"));
		
		customer.setCVC(request.getParameter("cvc"));
		customer.setBank(request.getParameter("bank"));

		ICustomerService iCustomerService = new CustomerServiceImpl();
		iCustomerService.addCustomer(customer);

		request.setAttribute("customer", customer);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/ListCustomers.jsp");
		dispatcher.forward(request, response);
	}

}
