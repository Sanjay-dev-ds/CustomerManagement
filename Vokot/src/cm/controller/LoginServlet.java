package cm.controller;

import java.io.IOException;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import cm.dao.CustomerDao;

import cm.model.Login;

/**
 * Servlet implementation class Register
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
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
		
		if (Uname.equalsIgnoreCase("Customeradmin") && ps.equalsIgnoreCase("CM12345") ) {
			
			response.sendRedirect("CustomerManagement/Admin-Dashboard/Dashboard/CmAdmin.jsp");
			
		}
		
		else {
			
			

			CustomerDao Cdao =new CustomerDao();
			Login  login= new Login (Uname,ps);
			if (Cdao.login(login)) {
				HttpSession session = request.getSession();
			    session.setAttribute("Uname",Uname );
				response.sendRedirect("CustomerManagement/Home page/index.jsp");
			}
			else {

				HttpSession session = request.getSession();
				session.setAttribute("Alert","Added successfully");
				response.sendRedirect("CustomerManagement/Home page/CmLogin.jsp");
			}
		}
		
		

	}

}