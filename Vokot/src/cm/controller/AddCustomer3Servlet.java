package cm.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import cm.dao.CustomerDao;
import cm.model.Customer;

/**
 * Servlet implementation class Register
 */
@WebServlet("/AddCustomer3Servlet")
public class AddCustomer3Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddCustomer3Servlet() {
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

		String Fname  = request.getParameter("Fname");
		String Lname = request.getParameter("Lname");
		String email = request.getParameter("Email");
		String Phone = request.getParameter("pNumber");
		String address = request.getParameter("address");
		String City = request.getParameter("City");
		String Province= request.getParameter("Province");
		String Postal= request.getParameter("Postal");
		String ps= request.getParameter("ps");
		String age = request.getParameter("Age");
		String gender = request.getParameter("Gender");
		String Uname= request.getParameter("Uname");

		HttpSession session = request.getSession();
		session.setAttribute("Alert",null);
		CustomerDao Cdao =new CustomerDao();
		Customer  customer= new Customer(ps,Uname,Fname,Lname,email,Phone,address,City,Province,Postal,age,gender);
		if (Cdao.AddCustomerAsAdmin(customer)) {
			session.setAttribute("Alert","Added successfully");
		    response.sendRedirect("CustomerManagement/Admin-Dashboard/Dashboard/CmAdmin3.jsp");
		}
		else {
		 
		    response.sendRedirect("CustomerManagement/Admin-Dashboard/Dashboard/CmAdmin3.jsp");
		}

	}

}