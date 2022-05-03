package cm.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cm.dao.PwChangeDao;
import cm.dao.PwDao;

import cm.model.PasswordReq;

/**
 * Servlet implementation class Register
 */
@WebServlet("/PwChangeAdmin")
public class PwChangeAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PwChangeAdmin() {
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
		String ps= request.getParameter("Password");
		
		
		
		PwChangeDao Cdao =new PwChangeDao();
		PasswordReq  change= new PasswordReq (Uname,ps);
		
		
		if (Cdao.deletePw(change)) {
			
			
			response.sendRedirect("CustomerManagement/Admin-Dashboard/Dashboard/CmAdmin5.jsp");
		}
		else {
			response.sendRedirect("CustomerManagement/Admin-Dashboard/Dashboard/CmAdmin3.jsp");
		}

	}

}