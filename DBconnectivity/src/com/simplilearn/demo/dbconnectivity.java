package com.simplilearn.demo;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnectivity {

	public static void main(String[] args) {
		
		String driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/ecommerce3";
		String user="root";
		String password="Praveenkannan@4005";
		
		try {
			Class.forName(driver);
			Connection conn=DriverManager.getConnection(url,user,password);
			if(conn!=null)
				System.out.println("connected");
			else
				System.out.println("Error Connecting to DB");
		}
		catch(Exception e) {
			e.printStackTrace();
		}

	}

}
