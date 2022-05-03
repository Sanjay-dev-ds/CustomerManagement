package cm.controller;

import java.io.IOException;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.http.HttpSession;

import cm.controller.AddCustomer2Servlet;
import cm.dao.CustomerDao;
import cm.model.Customer;

/**
 * Servlet implementation 
 */
@WebServlet("/AddCustomerServlet2")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 100, // 2MB
maxFileSize = 1024 * 1024 * 100, // 10MB
maxRequestSize = 1024 * 1024 * 500)


public class AddCustomer2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddCustomer2Servlet() {
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

		Part file = request.getPart("profile");
		
		
		//condition
		
		if(file.equals(null)) {
			
			return;
		}
		


		String imageFileName = file.getSubmittedFileName();
		String uploadPath = "C:/Users/Asus/Downloads/ITP REPORT/images/"+imageFileName;
		
		FileOutputStream fos = new FileOutputStream(uploadPath);
		InputStream is = file.getInputStream();
		
		byte[] data = new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();

		
		String Username = request.getParameter("Uname");
		
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		
		CustomerDao Cdao =new CustomerDao();
		Customer  customer2= new Customer(imageFileName,Username,email);
		if (Cdao.AddCustomer2(customer2)) {
			
			response.sendRedirect("CustomerManagement/Home page/CmLogin.jsp");
		}
		else {
			response.sendRedirect("CustomerManagement/Home page/CmRegister.jsp");
		}

	}

}