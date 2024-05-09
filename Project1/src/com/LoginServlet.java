package com;
import com.DBClass;
import java.io.*;
import com.mysql.jdbc.Connection;

import java.sql.*;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		
		
		
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/preeti","root","");
			
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into login values(?,?)");
			ps.setString(1, email);
			ps.setString(2, pass);
			
			int i=ps.executeUpdate();
			
			if(i>0){
				out.print("You have Successfully Login");
				
			}
			
			
		}catch(Exception e){
			System.out.println(e);
			out.close();
			
		}
		
		

	}}
