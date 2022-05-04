package cm.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import cm.util.*;
import cm.model.Customer;
import cm.model.Feedback;
import cm.model.Login;
import cm.controller.*;
public class CustomerDao {

	Database db = new Database();
	
    public boolean AddCustomer(Customer customer) {
		db.loadDriver(db.dbDriver);
		Connection con = db.getConnection();
		boolean result = false;

    	try {
			
			String sql = "insert into customers (Firstname,Lastname,Email,Phone,Address,city,province,postalcode,password,Age,Gender) values(?,?,?,?,?,?,?,?,?,?,?)";
         
   
			PreparedStatement ps;
			
			
			ps = con.prepareStatement(sql);
		
			ps.setString(1, customer.getFirstname());	
			ps.setString(2, customer.getLastname());
			ps.setString(3, customer.getEmail());
			ps.setString(4, customer.getPhonenumber());
			ps.setString(5, customer.getAddress());
			ps.setString(6, customer.getCity());
			ps.setString(7,  customer.getProvince());
			ps.setString(8, customer.getPostalcode());
			ps.setString(9, customer.getPassword());
			ps.setString(10, customer.getAge());
			ps.setString(11, customer.getGender());
		
			ps.executeUpdate();
			result = true;
			
			
		} catch (SQLException e) {
		e.printStackTrace();
		}
		        
		return result;
		
		
		
		
		
		
		
	
	}
    
    public boolean AddCustomerAsAdmin(Customer customer) {
		db.loadDriver(db.dbDriver);
		Connection con = db.getConnection();
		boolean result = false;

    	try {
			
			String sql = "insert into customers (Firstname,Lastname,Email,Phone,Address,city,province,postalcode,password,Age,Gender,Username) values(?,?,?,?,?,?,?,?,?,?,?,?)";
         
   
			PreparedStatement ps;
			
			
			ps = con.prepareStatement(sql);
		
			ps.setString(1, customer.getFirstname());	
			ps.setString(2, customer.getLastname());
			ps.setString(3, customer.getEmail());
			ps.setString(4, customer.getPhonenumber());
			ps.setString(5, customer.getAddress());
			ps.setString(6, customer.getCity());
			ps.setString(7,  customer.getProvince());
			ps.setString(8, customer.getPostalcode());
			ps.setString(9, customer.getUserimage());
			ps.setString(10, customer.getAge());
			ps.setString(11, customer.getGender());
			ps.setString(12, customer.getUsername());
		
			ps.executeUpdate();
			result = true;
			
			
		} catch (SQLException e) {
		e.printStackTrace();
		}
		        
		return result;
		
		
		
		
		
		
		
	
	}
    
    public boolean AddCustomer2(Customer customer) {
  		db.loadDriver(db.dbDriver);
  		Connection con = db.getConnection();
  		boolean result = false;
  		

      	try {
      		
  			
      		Statement st = con.createStatement();
      		
      		
  			
  			String sql ="update customers set Username = '"+ customer.getUsername()+"', Image = '"+ customer.getUserimage()+"'   WHERE Email = '"+customer.getEmail()+"'  ";
  			
  			
			
			st.executeUpdate(sql);
  			result = true;
  			
  			
  		} catch (SQLException e) {
  		e.printStackTrace();
  		}
  		        
  		return result;
  		
  		
  		
  		
  		
  		
  		
  	
  	}
    
    
    public boolean UpdateCustomer(Customer customer) {
  		db.loadDriver(db.dbDriver);
  		Connection con = db.getConnection();
  		boolean result = false;
  		

      	try {
      		
  			
      		Statement st = con.createStatement();
  			if(customer.getUserimage()==null)
  				
  			{
  				
  				String sql ="update customers set Firstname = '"+ customer.getFirstname()+"',Lastname='"+customer.getLastname()+"',Email = '"+ customer.getEmail()+"',Phone  = '"+ customer.getPhonenumber()+"',Address  = '"+ customer.getAddress()+"',city  = '"+ customer.getCity()+"',province  = '"+ customer.getProvince()+"', postalcode  = '"+ customer.getPostalcode()+"', Age  = '"+ customer.getAge()+"', Gender  = '"+ customer.getGender()+"'   WHERE Username = '"+customer.getUsername()+"'  ";
  				st.executeUpdate(sql);
  	  			result = true;
  			}
  			else {
  				
  				String sql ="update customers set Firstname = '"+ customer.getFirstname()+"',Lastname='"+customer.getLastname()+"',Email = '"+ customer.getEmail()+"',Phone  = '"+ customer.getPhonenumber()+"',Address  = '"+ customer.getAddress()+"',city  = '"+ customer.getCity()+"',province  = '"+ customer.getProvince()+"', postalcode  = '"+ customer.getPostalcode()+"', Age  = '"+ customer.getAge()+"', Gender  = '"+ customer.getGender()+"',  Image = '"+ customer.getUserimage()+"'   WHERE Username = '"+customer.getUsername()+"'  ";
  				st.executeUpdate(sql);
  	  			result = true;
  			}
  			
  	
  			
			
		
  			
  			
  		} catch (SQLException e) {
  		e.printStackTrace();
  		}
  		        
  		return result;
  		
  		
  		
  		
  		
  		
  		
  	
  	}
    
    
    
    
    
 public boolean login(Login login) {
  		db.loadDriver(db.dbDriver);
  		Connection con = db.getConnection();
  		boolean result = false;
  		String sql = "select * from customers where Username = ? and password = ?";
		PreparedStatement ps;
  		try {
  	    		ps = con.prepareStatement(sql);
    			ps.setString(1, login.getUsername());
    			ps.setString(2, login.getPassword());
    			ResultSet rs = ps.executeQuery();
    			result = rs.next();
  		} catch (SQLException e) {
  		e.printStackTrace();
  		}
  		        
  		return result;
  		 	 	
    }
    
    
    public boolean AddFeedback(Feedback feedback) {
  		db.loadDriver(db.dbDriver);
  		Connection con = db.getConnection();
  		boolean result = false;
  		
try {
			
			String sql = "insert into feedback (Rating,Category,Description,Username,Product) values(?,?,?,?,?)";
         
   
			PreparedStatement ps;
			
			
			ps = con.prepareStatement(sql);
		
			ps.setString(1, feedback.getRating());	
			ps.setString(2, feedback.getCategory());
			ps.setString(3, feedback.getFeedback());
			ps.setString(4, feedback.getUsername());
			ps.setString(5, feedback.getProduct());
		
			ps.executeUpdate();
			result = true;
			
			
		} catch (SQLException e) {
		e.printStackTrace();
		}
		        
		return result;
		
		
  		
  		
  		
  		
  		
  	
  	}
    
    
    
	public boolean deleteBooking(Customer customer) {
	
		db.loadDriver(db.dbDriver);
  		Connection con = db.getConnection();
  		boolean result = false;

		PreparedStatement ps;
		try {
			String sql = "Delete from customers where username = '"+customer.getUsername()+"' ";
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
			result = true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		return result;
	}

    
    
    
}
