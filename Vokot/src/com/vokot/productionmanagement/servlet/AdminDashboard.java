package com.vokot.productionmanagement.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminDashboard
 */
@WebServlet("/adminDashboard")
public class AdminDashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDashboard() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String action = request.getServletPath();

		switch(action) {
		
		case "/adminDashboard":
			try {
				adminDashboard(request, response);
			} catch (SQLException | IOException e) {
				e.printStackTrace();
			}
			break;	

		default:
			break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void adminDashboard(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/productionManagement/adminDashboard.jsp");

		dispatcher.forward(request, response);
	}

}
