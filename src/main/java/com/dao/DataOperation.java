package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Utility.DataConnection;
import com.model.ProductData;
import com.model.UserRegister;
import java.sql.Statement;
import java.util.ArrayList;

public class DataOperation {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	 Statement st;
	DataConnection dc=new DataConnection();
	ArrayList<ProductData> pAll=new ArrayList<>();
	
	public int RegisterData(UserRegister ur) throws Throwable {
		
		con=dc.getConnection();
		String query="INSERT INTO userregister(name,email,contact,pass,address) values(?,?,?,?,?)";
		
		ps=con.prepareStatement(query);
         ps.setString(1, ur.getName());
         ps.setString(2,ur.getEmail());
         ps.setString(3,  ur.getContactNo());
         ps.setString(4, ur.getPassword());
         ps.setString(5, ur.getAddress());
         
         int val=ps.executeUpdate();
         System.out.println("hiii");
         
		return val;
	
		
	}
	

	
	/* product database*/
	
	public ArrayList<ProductData> getAllProduct() throws SQLException, ClassNotFoundException{
		con=dc.getConnection();
		ArrayList<ProductData> pd=new ArrayList<ProductData>();
		String sql="select * from products";
		st = con.createStatement();
		 rs=st.executeQuery(sql);
	
		while(rs.next()) {
			 ProductData pro=new ProductData();
			pro.setId(rs.getInt(1));
			pro.setPName(rs.getString(2));
			pro.setImage(rs.getString(3));
			pro.setImgDetail(rs.getString(4));
			pro.setPrice(rs.getDouble(5));
			pd.add(pro);
			pAll.add(pro);
		}
		
		return pd;
	}
	public ArrayList<ProductData> getyMachinaryData() throws ClassNotFoundException, SQLException{
		con=dc.getConnection();
		ArrayList<ProductData> md=new ArrayList<ProductData>();
		String sql="select * from machinary";
		st = con.createStatement();
		 rs=st.executeQuery(sql);
		
		 rs=st.executeQuery(sql);
		while(rs.next()) {
			 ProductData pro=new ProductData();
			pro.setId(rs.getInt(1));
			pro.setPName(rs.getString(2));
			pro.setImage(rs.getString(3));
			pro.setImgDetail(rs.getString(4));
			pro.setPrice(rs.getDouble(5));
			md.add(pro);
			pAll.add(pro);
		}
		
		return md;
		
		
	}
	public int updateData(UserRegister ur, String cn) throws ClassNotFoundException, SQLException {
		con=dc.getConnection();
		String sql = " update userregister set name=?, email=?,contact=?,pass=?,address=? where=? ";
		
		/*UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition*/
		ps=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
		
		ps.setString(1, ur.getName());
		ps.setString(2, ur.getEmail());
		ps.setString(3, ur.getContactNo());
		ps.setString(4, ur.getPassword());
		ps.setString(5, ur.getAddress());
		ps.setString(5, cn);
		int val=ps.executeUpdate();
		return val;
	}
	public ArrayList<ProductData> getFarmData() throws ClassNotFoundException, SQLException{
		
		con=dc.getConnection();
		ArrayList<ProductData> fd=new ArrayList<ProductData>();
		String sql="select * from farm_products";
		st = con.createStatement();
		rs=st.executeQuery(sql);
		
		 rs=st.executeQuery(sql);
		while(rs.next()) {
			 ProductData pro=new ProductData();
			pro.setId(rs.getInt(1));
			pro.setPName(rs.getString(2));
			pro.setImage(rs.getString(3));
			pro.setImgDetail(rs.getString(4));
			pro.setPrice(rs.getDouble(5));
			fd.add(pro);
			pAll.add(pro);
		}
		
		return fd;
		
		
	}
	/*
	 * public ArrayList<UserRegister> getUpdateProfileData(UserRegister ur){
	 * 
	 * ArrayList<UserRegister> al= new ArrayList<>(); String sql =
	 * "UPDATE userregister SET name = ?, email = ?, contact WHERE condition;"
	 * 
	 * 
	 * return al; }
	 */
	
	public ArrayList<ProductData> getAllFarmProduct(){
		return pAll;
	}

}
