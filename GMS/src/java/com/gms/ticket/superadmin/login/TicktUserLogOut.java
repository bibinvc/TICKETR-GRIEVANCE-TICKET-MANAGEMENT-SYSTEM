package com.gms.ticket.superadmin.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gms.connection.ConnectionFactory;
import com.gms.utill.DBUtil;

/**
 * Servlet implementation class UserLogOutHoke
 */
@WebServlet("/ticketUserLogOut")
public class TicktUserLogOut extends HttpServlet {
		private static final long serialVersionUID = 1L;
	       
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public TicktUserLogOut() {
	        super();
	        // TODO Auto-generated constructor stub
	    }

		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			//--- job out time and date update ----
			Connection jotcon1 = null;
			try{
				
				//System.out.println("HHHHHHHHHHHHHHHHHHHHH");
			    String	id = request.getParameter("id");
			    String username = request.getParameter("name");
			  //  System.out.println("username = "+username+"/user id ="+id);
			    
				     
			String sql = "update login_db.login_tbl set loginstatus = 'logout' where name = '"+username+"' and  empid='"+id+"' ";
			
		//	System.out.println("TTTTTTTTTTTTTTTTTTTTT:"+sql);
			
			jotcon1 = ConnectionFactory.getConnection();
		    DBUtil dbUtil = new DBUtil(jotcon1);
		    
		    dbUtil.executeUpdate(sql);
		  //  System.out.println("DBUTIL:"+dbUtil);
		    
			}
		
		catch(Exception e){
			e.printStackTrace();
		}finally{
			if(jotcon1 !=null){
				try {
					jotcon1.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
				
		}
			
			try{
				request.getSession(false).invalidate(); //kill home page annotation
				System.out.println("session has been destroyed");
				request.getRequestDispatcher("/ticket").forward(request, response);
			}catch(Exception e){
				//e.printStackTrace();
				System.out.println("Null point Exeption....At line 87 UserLogOutHoke.java...");
			}
		}

	}
