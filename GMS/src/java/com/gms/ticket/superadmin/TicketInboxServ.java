package com.gms.ticket.superadmin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

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
@WebServlet("/auth/ticketinbox")
public class TicketInboxServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TicketInboxServ() {
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
		//JSONObject usesfactors = new JSONObject();  
		
		 //JSONArray jsonArr = new JSONArray();
		 ArrayList<HashMap<String, String>> jsonArr = new ArrayList<HashMap<String,String>>();
		 // JSONObject jobj =null;
		 HashMap<String, String> jobj = null;
		try
		{
			String query = "select * from ticket_tbl order by id desc";
			System.out.println("Query :userloginservelt:"+ query);
			con = ConnectionFactory.getConnection();
			DBUtil dbUtil = new DBUtil(con);
			ResultSet rst = dbUtil.executeQuery(query);
			int check = 0;
			while(rst.next()){
				//jobj = new JSONObject();
				jobj = new HashMap<String, String>();
				jobj.put("id", rst.getString("id"));
				check = Integer.parseInt(rst.getString("id"));
				
				if(check< 10) {
					jobj.put("ticket_id", '0'+rst.getString("id"));
				}else {
					jobj.put("ticket_id", rst.getString("id"));	
				}
				//jobj.put("ticket_id", rst.getString("ticket_id"));
				jobj.put("title", rst.getString("title"));
				jobj.put("natureofwork", rst.getString("natureofwork"));
				jobj.put("status", rst.getString("status"));
				jobj.put("reqdate", rst.getString("reqdate"));
				jobj.put("reqtime", rst.getString("reqtime"));
				jobj.put("remarks", rst.getString("remarks"));
				jobj.put("requstuser", rst.getString("requstuser"));
				jobj.put("assigndto", rst.getString("assigndto"));
				jobj.put("taskcomplete_date", rst.getString("taskcomplete_date"));
				jobj.put("taskcomplete_time", rst.getString("taskcomplete_time"));
				jobj.put("typeofsupport", rst.getString("typeofsupport"));
				jobj.put("priority", rst.getString("priority"));
				jobj.put("follower", rst.getString("follower"));
				jobj.put("duedate", rst.getString("duedate"));
				jobj.put("duetime", rst.getString("duetime"));
				jobj.put("files", rst.getString("files"));
				jsonArr.add(jobj);
			}
			 //  jsonArr.put(jobj);
               System.out.println("-----SMS Send Status---- : "+jsonArr.toString()); 
               
               request.getSession().setAttribute("userList", jsonArr);
               
              
            // response.setContentType("application/json");
   		    // response.getWriter().print(jsonArr.toString());
               
              response.sendRedirect("/auth/taskinbox");
   		    
             
			
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
