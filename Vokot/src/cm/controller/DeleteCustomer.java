package cm.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import cm.dao.CustomerDao;
import cm.model.Customer;

/**
 * Servlet implementation class Register
 */
@WebServlet("/DeleteCustomer")
public class DeleteCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteCustomer() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String Uname  = request.getParameter("Uname");
	
		
		
		CustomerDao Cdao =new CustomerDao();
		Customer  customer= new Customer(Uname);
		if (Cdao.deleteBooking(customer)) {
			
			response.sendRedirect("CustomerManagement/Admin-Dashboard/Dashboard/CmAdmin3.jsp");
		}
		else {
			response.sendRedirect("CustomerManagement/Home page/CmRegister.jsp");
		}

	}

}