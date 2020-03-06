package com.lithan.CommunityPortal.config;

import java.sql.Connection; 
import java.sql.DriverManager;

public class DBconfig {

	public static Connection ConnectionToDataBase() {
		Connection con=null;
		// change Accordingly
		String driver="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/inc0205";
		//String url="jdbc:mysql://projects.lithan.net:3306/inc0205?useTimezone=true&serverTimezone=UTC";
		String user="INC0205";
		String pass="INC0205";
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url,user,pass);
			System.out.println("connected");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}
	
	
}
