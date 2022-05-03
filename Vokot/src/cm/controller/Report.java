package cm.controller;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import cm.dao.CustomerReportDao;
import cm.dao.FeedbackReportDao;
import cm.util.Database;





/**
 * Servlet implementation class Register
 */
@WebServlet("/Report")
public class Report extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Report() {
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
		
		String Report = request.getParameter("Report");
		String type = request.getParameter("Type");
		
		
		 
		 if (type.equalsIgnoreCase("Customer") ) {
			 
			 String file_name="C:/Users/Asus/Downloads/Customer/"+Report+".pdf";
			 CustomerReportDao R = new CustomerReportDao();
			 
			 if(R.GenerateReport(file_name)) {
				 
				 
					response.sendRedirect("CustomerManagement/Admin-Dashboard/Dashboard/CmAdmin.jsp");
					
			 }
			 
		 }
		 else if(type.equalsIgnoreCase("Feedback")) 
		 {
			 String file_name="C:/Users/Asus/Downloads/Feedback/"+Report+".pdf";
			 FeedbackReportDao R = new FeedbackReportDao();
			 
			 if(R.GenerateReport(file_name)) {
				 
				 
					response.sendRedirect("CustomerManagement/Admin-Dashboard/Dashboard/CmAdmin.jsp");
					
			 }
			 
			 
		 }
		
		 
		 
		 
		 }
	
		

	

}