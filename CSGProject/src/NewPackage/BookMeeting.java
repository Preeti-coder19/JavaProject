package NewPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookMeeting
 */
public class BookMeeting extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookMeeting() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
        
        
		PrintWriter out=response.getWriter();
			
			
			
			String name = request.getParameter("name");
	        String meeting_date = request.getParameter("meetingDate");
			String meeting_time = request.getParameter("meetingTime");
			String meeting_subject = request.getParameter("meetingSubject");

			
		
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/dinesh","root","");
				
				PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into bookmeeting values(?,?,?,?)");
				
				ps.setString(1, name);
				ps.setString(2, meeting_date);
				ps.setString(3, meeting_time);
				ps.setString(4, meeting_subject);
				
				
				int i=ps.executeUpdate();
				
				if(i>0){
					out.print("You have Successfully Booked:)");
					
				}
			}catch(Exception e){
				System.out.println(e);
				out.close();
				
			}
			
		}
	}


