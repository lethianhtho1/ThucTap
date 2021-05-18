package Models;

import java.sql.*;

public class DB {
	static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver"; 
	static final String DB_URL = "jdbc:mysql://localhost:3306/ubnd";
	static final String USER = "root";
	static final String PASS = "mysql";

	public  Connection getConnect()
	{
		try{
			Class.forName(JDBC_DRIVER);
			return DriverManager.getConnection(DB_URL,USER,PASS);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	public ResultSet get(String sql) {
		try {
			Statement stm = getConnect().createStatement();
			return stm.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public int set(String sql) {
		try {
			Statement stm = getConnect().createStatement();
			return stm.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
}