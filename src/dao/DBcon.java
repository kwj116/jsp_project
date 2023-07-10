package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBcon {
	public static Connection connection() throws SQLException, ClassNotFoundException {
		
		Class.forName("org.mariadb.jdbc.Driver");
		
		Connection conn = DriverManager.getConnection(
				"jdbc:mariadb://localhost:3306/mydb",
				"root",
				"1234"
				);
		return conn;
				
	}
}
