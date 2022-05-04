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
import cm.model.Login;
import cm.model.PasswordReq;
import cm.controller.*;

public class PwChangeDao {

	Database db = new Database();

	public boolean Request(PasswordReq pq) {
		db.loadDriver(db.dbDriver);
		Connection con = db.getConnection();
		boolean result = false;
		

		

		try {
			Statement st = con.createStatement();
			String sql ="update customers set Password = '"+ pq.getPassword()+"'  WHERE Username = '"+pq.getUsername()+"'  ";
			st.executeUpdate(sql);
  			result = true;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;

	}
	
	
	public boolean deletePw(PasswordReq req) {
		
		db.loadDriver(db.dbDriver);
  		Connection con = db.getConnection();
  		boolean result = false;

		PreparedStatement ps;
		try {
			
			if( UpdatePassword( req)) {
			String sql = "Delete from passwordreq where Username = '"+req.getUsername()+"' ";
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
			result = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		return result;
	}

	
	
	
	
	public boolean UpdatePassword(PasswordReq req) {
		db.loadDriver(db.dbDriver);
		Connection con = db.getConnection();
		boolean result = false;
		

  	try {
  		
			
  		Statement st = con.createStatement();
		
				String sql ="update customers set Password = '"+ req.getPassword()+"'  WHERE Username = '"+req.getUsername()+"'  ";
				st.executeUpdate(sql);
	  			result = true;
		
	
			

			
		} catch (SQLException e) {
		e.printStackTrace();
		}
		        
		return result;
		
		
		
		
		
		
		
	
	}


}
