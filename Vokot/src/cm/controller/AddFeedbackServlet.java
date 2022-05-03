package cm.controller;



import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cm.dao.CustomerDao;
import cm.model.Customer;
import cm.model.Feedback;

/**
 * Servlet implementation class Register
 */
@WebServlet("/AddFeedbackServlet")
public class AddFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddFeedbackServlet() {
		super();
		// TODO Auto-generated constructor stub
	}
//changes
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String rating  = request.getParameter("rating");
		String description = request.getParameter("Feedback");
		String  Category= request.getParameter("optradio");
		HttpSession session = request.getSession();
		String Uname = (String) session.getAttribute("Uname");
		String product =request.getParameter("Product");
		

		
		
		CustomerDao Cdao =new CustomerDao();
		Feedback  feedback= new Feedback(Category,description,rating,Uname,product);
		if (Cdao.AddFeedback(feedback)) {
			
			response.sendRedirect("CustomerManagement/Home page/index.jsp");
		}
		else {
			response.sendRedirect("CustomerManagement/Home page/CmRegister.jsp");
		}

	}

}
