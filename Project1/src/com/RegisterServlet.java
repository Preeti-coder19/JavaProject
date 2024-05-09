package com;
import com.mysql.jdbc.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
        response.setContentType("text/html");
        
        
	PrintWriter out=response.getWriter();
		
		
		
		String name = request.getParameter("name");

		String pass = request.getParameter("pass");

		String email = request.getParameter("email");
		
		String gender = request.getParameter("gender");
		
		String contact=request.getParameter("contact");
		
		String address=request.getParameter("address");
		
	
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/preeti","root","");
			
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into register values(?,?,?,?,?,?)");
			
			ps.setString(1, name);
			ps.setString(2, pass);
			ps.setString(3, email);
			ps.setString(4, gender);
			ps.setString(5, contact);
			ps.setString(6, address);
			
			int i=ps.executeUpdate();
			
			if(i>0){
				out.print("You have Successfully registered");
				
			}
		}catch(Exception e){
			System.out.println(e);
			out.close();
			
		}
		
	}

}
