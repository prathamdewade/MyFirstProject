package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;

import com.dao.DataOperation;

import com.model.UserRegister;


@WebServlet("/UserCPro")
public class UserChangeProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DataOperation dao; 
    @Override
    public void init() throws ServletException {
    	 dao= new DataOperation();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("html/text");
		String uName=request.getParameter("uname");
		int uId=Integer.parseInt(request.getParameter("uid"));
		String uCN=request.getParameter("ucn");
		String emailId=request.getParameter("email");
		String password=request.getParameter("pswd");
		String address1=request.getParameter("address");
		
		 UserRegister ur = new UserRegister(uName, uCN, emailId, password, address1);
		 
		 ///	dao.getUpdateProfileData(ur);
		
	}

}
