package com.gms.ticket.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.gms.connection.ConnectionFactory;
import com.gms.utill.DBUtil;

/**
 * Servlet implementation class TicketingServ
 */
@WebServlet("/admticketchat")
public class AdminTicketChat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminTicketChat() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
	 
		//================iterating User Details  =============	
		
		String id = request.getParameter("id");
		String msg = request.getParameter("msg");
		String username = request.getParameter("username");
		 
		int check = 0;
		Connection con = null;
	    	try{
	          	check = Integer.parseInt(id);
				
				System.out.println(check);
	    		
	            String sql ="INSERT INTO `ticketchat_tbl` (`refid`, `username`, `msg`, `date`, `time`) "
	            		+ "VALUES ('"+check+"', '"+username+"', '"+msg+"', curdate(), curtime());";
				
	           System.out.println(sql);
	            con = (Connection) ConnectionFactory.getConnection();
	        	DBUtil dbUtile = new DBUtil(con);
	        	
	        	dbUtile.executeUpdate(sql);
	            
	            
	         }catch(Exception se){
	            //Handle errors for JDBC
	            se.printStackTrace();
	         }
	         finally{
	          
	        	 if(con !=null){
	         		try {
	     				con.close();
	     			} catch (SQLException e) {
	                       e.printStackTrace();
	     				//System.out.println("the connection not close error");
	     			}
	         	}
	         } //end try

		
	    	Connection conn = null;
			 
			 JSONArray jsonArr = new JSONArray();
			 
			  JSONObject jobjs =null;
			try
			{
				String query = "select * from ticketchat_tbl where refid='"+check+"'";
				System.out.println("Query :userloginservelt:"+ query);
				conn = ConnectionFactory.getConnection();
				DBUtil dbUtil = new DBUtil(conn);
				ResultSet rst = dbUtil.executeQuery(query);
				while(rst.next()){
					jobjs = new JSONObject();
					jobjs.put("username", rst.getString("username"));
					jobjs.put("msg", rst.getString("msg"));
					jobjs.put("date", rst.getString("date"));
					jobjs.put("time", rst.getString("time"));
					jsonArr.put(jobjs);
				}
			 
	               System.out.println("-----SMS Send Status---- : "+jsonArr.toString());
	               
	               response.setContentType("application/json");
	               response.getWriter().println(jsonArr.toString());
	               
	               
				
			}catch(Exception e){
				e.printStackTrace();
			}
			
			finally{
				if(conn !=null){
					try {
						conn.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
			
		
		
	}

	
}
