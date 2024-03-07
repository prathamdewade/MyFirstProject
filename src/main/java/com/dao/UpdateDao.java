package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.Utility.DataConnection;
import com.model.UserRegister;

public class UpdateDao {
	DataConnection dc=new DataConnection();
	
	
	
	public UserRegister getAllData(String email,String pass) throws Throwable {
		UserRegister ur= new UserRegister();
	Connection	con=dc.getConnection();
		String sql = "select * from userregister where email="+email+" and pass="+pass;
		System.out.println(sql);
		Statement st1 = con.createStatement();
                 ResultSet rs1=st1.executeQuery(sql);
		
		if(rs1.next()) {
			
			ur.setName(rs1.getString("name"));
			ur.setEmail(rs1.getString("email"));
			ur.setContactNo(rs1.getString("contact"));
			ur.setPassword(rs1.getString("pass"));
			ur.setAddress(rs1.getString("address"));
			ur.setUid(rs1.getInt(1));
			
		}
		
			return ur;
	}
	
	
}
