package com.Utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataConnection {
 Connection con;
 
 
 public Connection getConnection() throws ClassNotFoundException, SQLException {
	 Class.forName("com.mysql.cj.jdbc.Driver");
	   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer","root","");
	   // con = DriverManager.getConnection("jdbc:mysql://localhost;database=farmer;user=root;password=root;"); 
	 return con;
 }
}
