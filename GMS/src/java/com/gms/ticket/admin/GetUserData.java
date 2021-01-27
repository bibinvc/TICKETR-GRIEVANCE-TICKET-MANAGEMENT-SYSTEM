package com.gms.ticket.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

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
@WebServlet("/admgetticketuserdatas")
public class GetUserData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetUserData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
	 
		//================iterating User Details  =============	
		
		String id = request.getParameter("id");
		
		Connection con = null;
		JSONObject usesfactors = new JSONObject();  
		
		 JSONArray jsonArr = new JSONArray();
		 
		  JSONObject jobj =null;
		try
		{
			String query = "select * from ticket_auth_tbl";
			
			System.out.println("Query :userloginservelt:"+ query);
			con = ConnectionFactory.getConnection();
			DBUtil dbUtil = new DBUtil(con);
			ResultSet rst = dbUtil.executeQuery(query);
			int check = 0;
			while(rst.next()){
				jobj = new JSONObject();
				 
				jobj.put("name", rst.getString("name"));
				jobj.put("role", rst.getString("role"));
				jobj.put("emailid", rst.getString("emailid"));
				jobj.put("userid", rst.getString("userid"));
				jobj.put("status", rst.getString("status"));
				jsonArr.put(jobj);
			}
			 //  jsonArr.put(jobj);
               System.out.println("-----SMS Send Status---- : "+jsonArr.toString());  
              
               response.setContentType("application/json");
   		     response.getWriter().print(jsonArr.toString());
   		    
             
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		finally{
			if(con !=null){
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		
		
	}

	
}
