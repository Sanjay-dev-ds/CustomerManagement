package cm.util;

import java.sql.Connection;
import java.sql.DriverManager;



public class DbConnection {
	public static Connection getConnection()
	{
		try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vokot","root","");
				return con;
		}
		
		catch(Exception e)
		{
			System.out.print(e);
			return null;
		}
	}
	
	
}