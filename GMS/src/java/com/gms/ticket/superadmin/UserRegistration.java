package com.gms.ticket.superadmin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gms.connection.ConnectionFactory;
import com.gms.utill.DBUtil;

/**
 * Servlet implementation class ClientRegForm
 */
@WebServlet("/ticketuserregisterserv")
public class UserRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */ public void init() {
         // reads SMTP server setting from web.xml file
        
     }
    public UserRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("test servlet");
		Connection conn = null;

		try
		{
			
			 String userid = request.getParameter("userid");
			 String username = request.getParameter("username");
			 String pass = request.getParameter("pass");
			 String dept = request.getParameter("dept");
			 String phon = request.getParameter("phon");
		     String bio = request.getParameter("bio");
		     String email = request.getParameter("email");
		     
		     
		     
		     
		     
    
		System.out.println("vinoth : ffffffffffff+fffffffff:");          
			boolean success = false;
			String query ="INSERT INTO `ticket_auth_tbl` (`name`, `role`, `emailid`, `status`, `pass`, `date`, `time`,`userid`, `phon`, `msg`) "
					+ "VALUES ('"+username+"', '"+dept+"', '"+email+"', 'out', '"+pass+"', curdate(), curtime(), '"+userid+"','"+phon+"','"+bio+"')";
			
			System.out.println("Query :userloginservelt:"+ query);
			conn = ConnectionFactory.getConnection();
			DBUtil dbUtil = new DBUtil(conn);

			//System.out.println("DB UTILE:" + dbUtil);

			success = dbUtil.executeUpdate(query);
System.out.println("<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>"+success);
			if(success){
				response.sendRedirect("/auth/ticketuserregister?msg=success");
			}else{
				response.sendRedirect("/error");
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(conn !=null){
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		
		
	}
	public static double getRandomNumber(){
	    double x = Math.random();
	    return x;
	}
	

}
