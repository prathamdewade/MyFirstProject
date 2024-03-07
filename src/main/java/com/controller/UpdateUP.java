package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DataOperation;
import com.model.UserRegister;


@WebServlet("/UpdateUP")
public class UpdateUP extends HttpServlet {
	private static final long serialVersionUID = 1L;
      DataOperation dao; 
    @Override
    public void init() throws ServletException {
    	dao= new DataOperation();
    	
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String hCN=request.getParameter("ucon");
		String name=request.getParameter("uname");
		String cNo=request.getParameter("ucn");
		String emailId=request.getParameter("email");
		String password = request.getParameter("pswd");
		String add = request.getParameter("address");
		
		UserRegister ur = new UserRegister(name, cNo, emailId, password, add);
		try {
			int val=dao.updateData(ur, hCN);
			if(val>0) {
				response.sendRedirect("UserIcon.jsp");
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

	
}
