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
@WebServlet("/UpdateCustomer")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 100, // 2MB
maxFileSize = 1024 * 1024 * 100, // 10MB
maxRequestSize = 1024 * 1024 * 500)


public class UpdateCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateCustomer() {
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
		String imageFileName;
		if(!file.equals(null)) {

		 imageFileName = file.getSubmittedFileName();
		String uploadPath = "C:/Users/Asus/Downloads/codes2/VOKOT-JAVA-TOMCAT-V9/Main/WebContent/CustomerManagement/Home page/Profile/"+imageFileName;
		
		FileOutputStream fos = new FileOutputStream(uploadPath);
		InputStream is = file.getInputStream();
		
		byte[] data = new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();

		}
		else {
		
			
			return;
		}
		


		
	
		String Fname  = request.getParameter("Fname");
		String Lname = request.getParameter("Lname");
		String email = request.getParameter("Email");
		String Phone = request.getParameter("pNumber");
		String address = request.getParameter("address");
		String City = request.getParameter("City");
		String Province= request.getParameter("Province");
		String Postal= request.getParameter("Postal");
		String age = request.getParameter("Age");
		String gender = request.getParameter("Gender");
		HttpSession session = request.getSession();
		String Uname = (String) session.getAttribute("Uname");
		
		CustomerDao Cdao =new CustomerDao();
		
		Customer  customer= new Customer(imageFileName,Uname,Fname,Lname,email,Phone,address,City,Province,Postal,age,gender);
		if (Cdao.UpdateCustomer(customer)) {
			
			response.sendRedirect("CustomerManagement/Home page/CmProfile.jsp");
		}
		else {
			response.sendRedirect("CustomerManagement/Home page/CmRegister.jsp");
		}

	}

}