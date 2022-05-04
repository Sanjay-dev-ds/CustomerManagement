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
import cm.model.PasswordReq;
import cm.controller.*;

public class PwDao {

	Database db = new Database();

	public boolean Request(PasswordReq pq) {
		db.loadDriver(db.dbDriver);
		Connection con = db.getConnection();
		boolean result = false;
		if( CheckValid(pq)) {
		String sql = "insert into passwordReq (Username,Password) values(?,?)";

		

		try {

	PreparedStatement ps;
			
			
			ps = con.prepareStatement(sql);
		
			ps.setString(1, pq.getUsername());	
			ps.setString(2, pq.getPassword());
		
		
		
			ps.executeUpdate();
			result = true;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		}
		return result;
		}
	



public boolean CheckValid(PasswordReq pq) {
	
	db.loadDriver(db.dbDriver);
		Connection con = db.getConnection();
		boolean result = false;
		
		
		
		String sql = "select * from customers where Username = ? ";
	
	PreparedStatement ps;

		try {
  		
			
  		
		
			ps = con.prepareStatement(sql);
			ps.setString(1, pq.getUsername());
		
			ResultSet rs = ps.executeQuery();
			result = rs.next();
	
		
			
			
		} catch (SQLException e) {
		e.printStackTrace();
		}
		        
		return result;
		
}






	
	
}
