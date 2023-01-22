package servelet;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
	
	private static String url = "jdbc:mysql://localhost:3306/event";
	private static String userName = "root";
	private static String password = "998032504Vx*";
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
			System.out.println("Database connection is success!!!");
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}
}