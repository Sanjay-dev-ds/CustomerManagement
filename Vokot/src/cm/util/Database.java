

package cm.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {


	public String dbUrl = "jdbc:mysql://localhost:3306/vokot";
	public String dbUname = "root";
	public String dbPassword = "";
	public String dbDriver = "com.mysql.cj.jdbc.Driver";

	
	public void loadDriver(String driver) {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			 e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl,dbUname,dbPassword);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return con;
	}
}
