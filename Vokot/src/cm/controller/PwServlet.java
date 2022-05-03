package cm.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import cm.dao.PwDao;

import cm.model.PasswordReq;

/**
 * Servlet implementation class Register
 */
@WebServlet("/PwServlet")
public class PwServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PwServlet() {
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
		
		
		PwDao Cdao =new PwDao();
		PasswordReq  login= new PasswordReq (Uname,ps);
		if (Cdao.Request(login)) {
			
			response.sendRedirect("CustomerManagement/Home page/CmLogin.jsp");
		}
		else {
			HttpSession session = request.getSession();
			session.setAttribute("Alert","Added successfully");
			response.sendRedirect("CustomerManagement/Home page/CmLogin.jsp");
		}

	}

}