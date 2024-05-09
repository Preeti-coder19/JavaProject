package NewPackage;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
        response.setContentType("text/html");
        
        
	PrintWriter out=response.getWriter();
		
		
		
		String name = request.getParameter("name");
        String email = request.getParameter("email");
		String pass = request.getParameter("pass");

		
	
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/dinesh","root","");
			
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into newuser values(?,?,?)");
			
			ps.setString(1, name);
			ps.setString(2, pass);
			ps.setString(3, email);
			
			
			int i=ps.executeUpdate();
			
			if(i>0){
				out.print("You have Successfully Registered");
				
			}
		}catch(Exception e){
			System.out.println(e);
			out.close();
			
		}
		
	}

}
