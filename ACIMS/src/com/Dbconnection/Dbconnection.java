package com.Dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconnection {

	static Connection con;
	public static Connection getConnection()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acims","root","");
		    System.out.println(con);
		}
		catch(Exception e)
		{
			System.out.println(e);
			e.printStackTrace();
		}
		return con;
	}
}
