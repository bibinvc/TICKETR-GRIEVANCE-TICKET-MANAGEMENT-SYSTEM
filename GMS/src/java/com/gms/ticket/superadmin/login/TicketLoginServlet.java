package com.gms.ticket.superadmin.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;

import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 

 
 
import com.gms.connection.ConnectionFactory;
import com.gms.utill.DBUtil;
import com.mysql.jdbc.Statement;
import com.sun.net.httpserver.HttpContext;
 
/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/ticketlogincheck")
public class TicketLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static  String id =null;
	public static String refid1=null;
	public static String userid=null;
    public static String userName = null;
    
    private static String realusername = null; 
    private static String getemailid = null;
    private static String getphoneno = null;
    private static String role = null;
	private static String loginstatus = null; 
	
	private static String clientrole =null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TicketLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    public static boolean isValidEmailAddress(String email) {
 	   boolean result = true;
 	   try {
 	      InternetAddress emailAddr = new InternetAddress(email);
 	      emailAddr.validate();
 	      
 	     // System.out.println("TEST VALITAION Your mails is valid");
 	   } catch (AddressException ex) {
 	      result = false;
 	     //System.out.println("RRRRRRRRRRRRRRRRRRRRRRRRNNNNNNNNNNOOOOOOOOOOOOOOOOOOOOOO Your mails is invalid");
 	   }
 	   return result;
 	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		System.out.println("vinoth-------------------");
		
		String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
		String capchavalid = request.getParameter("capchavalid");
		System.out.println(gRecaptchaResponse);
		 
		 
		 
		
		//************** FIND USER OR EMIAL ID LOGIN VALIDATIONS *************************************
		
		String RemoteHost = request.getRemoteHost();
		
		       String res = request.getRemoteAddr();
		
		String localip = request.getParameter("ipaddress");
		                    
		System.out.println(" IP Address Get form login page text: "+localip);
		System.out.println("java RemoteHost IP Address : getRemoteHost"+RemoteHost);
		
		String email = "vinothraj@yahoo.com";
		                 
		       isValidEmailAddress(email);
		
		       
		       String acno =null;
		       String username = null;
		       String pass = null;
		      
					 
		       // acno = request.getParameter("acno");
		       username = request.getParameter("username");
			   pass = request.getParameter("password");
			   System.out.println("Client  IP Address from login script : "+localip);
			
java.sql.Connection chatconn = null;
	try{
		
		int i ;
		HashMap<String, String> chatrow = null;
			
		String qury = "select * from ticket_auth_tbl where name = '"+username+"' or emailid = '"+username+"' and pass ='"+pass+"'";
	 	System.out.println("query --------VINOTH	------------------"+qury );
		chatconn = ConnectionFactory.getConnection();
		DBUtil dbUtil = new DBUtil(chatconn);
	 	//System.out.println("<><><>Dbutil ::: "+dbUtil);
	    ResultSet rst = dbUtil.executeQuery(qury);
	    
	    
	    while (rst.next()){
	    	chatrow = new HashMap<String, String>();
	    	chatrow.put("username", rst.getString("name"));
	    	getemailid = rst.getString("emailid");
	    	getphoneno= rst.getString("phon");
	    	realusername = rst.getString("name");
	    	role = rst.getString("role");
		}
		
		//System.out.println("------------------------>>>>>>>>>>>"+chatrow);
		 System.out.println("------------------------>>>>>>>>>>>"+realusername);
		
	   for(java.util.Map.Entry<String, String> rows : chatrow.entrySet()){
		   
		       System.out.printf("Key : %s and Value: %s %n", rows.getKey(),rows.getValue());
	            userName = rows.getValue();
	 	System.out.println("username getvalues"+userName);
	   }

		
	 	
	
//System.out.println("iiiiiiiiiiiiidddddddddddddddiiiiiiiii"+userName);

//System.out.println("Email Id: "+getemailid+"And Your PhoneNO :"+getphoneno);
	}catch(Exception e){
	  //e.printStackTrace();
		System.out.println("Login servelt catche for finding  users and get mail");
	}
	finally{
		  if(chatconn !=null)
		try{
			chatconn.close();
			}catch(Exception e)
		{
		e.printStackTrace();	
		}
	}


		Connection conn = null;
		InetAddress ip;
		try{
			
			
			
			//String publicip = request.getParameter("ipaddress");
			String publicip = null;
			String remotepublicip = request.getRemoteAddr();

			
			System.out.println("YOUR PUBLIC IP ADDRESS ARE :"+publicip);	
			String myofficeip =null;
			
			 
			
              
			System.out.println("your ip address : "+myofficeip+" === "+publicip);
			
		 	boolean success = false;
			 
		 	String  query ="select * from ticket_auth_tbl where name ='"+realusername+"'and binary pass='"+pass+"'";
				
			System.out.println("Query :||||:"+ query);
			conn = ConnectionFactory.getConnection();	
			DBUtil dbUtil = new DBUtil(conn);
						
			ResultSet rst = dbUtil.executeQuery(query);
			
			String successPage ="";
			String successTlpage="";			
			while(rst.next()){
				
			//System.out.println("--------Check UserName and Password:-----"+rst);
				
				
				request.getSession().setAttribute("login", "true");
				
				userid = (String) rst.getString("userid");//System.out.println("________Login user Id_______"+userid);
				refid1 = (String) rst.getString("id");
				 loginstatus = rst.getString("status");
				System.out.println("--------------------LoginStaut : "+loginstatus);

				String role =rst.getString("role");
				if(role.equals("admin"))
				{
					successPage = "admin";
				 	System.out.println("test+"+successPage);
				}
				else if(role.equals("STAFF"))
				{
					successPage = "STAFF";
				}
				 else if(role.equals("STD"))
				{
					successPage = "STD";
				}
				else if(publicip.equals("Empty"))
				{
					successPage ="error";
				}
				else {
					successPage = "login";
					success = true;						
				}
				
				System.out.println("Success Login UserName : " +successPage);
				
			}
			
		final	String adm = "admin";
		final	String STAFF = "STAFF";
		final	String STD = "STD";
		  
		
		final   String error = "error";
		
			if(successPage.equals(adm))
			{
				response.sendRedirect("/auth/ticketdash");
				
				HttpSession ticketsession=request.getSession();  
				ticketsession.setAttribute("username",realusername);
				ticketsession.setAttribute("acno",acno);
				ticketsession.setAttribute("getemailid",getemailid);
				ticketsession.setAttribute("getphoneno",getphoneno);
				ticketsession.setAttribute("role",role);
				
				
							
			} 
			
			
			else if (successPage.equals(STAFF))
			{
				response.sendRedirect("/auth/admticketdash");
				
				HttpSession clientsession=request.getSession();  
				clientsession.setAttribute("username",realusername);
				clientsession.setAttribute("acno",acno);
				clientsession.setAttribute("getemailid",getemailid);
				clientsession.setAttribute("getphoneno",getphoneno);
				clientsession.setAttribute("role",role);
				clientsession.setAttribute("loginstatus", loginstatus);
				clientsession.setAttribute("clientrole", clientrole);
				
			}
			 
			
		
			else if (successPage.equals(STD) ){
				
				
				response.sendRedirect("/auth/userticketdash");
				HttpSession nadminsession=request.getSession();  
				nadminsession.setAttribute("username",realusername);
				nadminsession.setAttribute("acno",acno);
				nadminsession.setAttribute("getemailid",getemailid);
				nadminsession.setAttribute("getphoneno",getphoneno);
				nadminsession.setAttribute("role",role);
			}
			
			 
			
			
               else if (successPage.equals(error) ){
				
				response.sendRedirect("/auth/error");
			}
			
			else{
				response.sendRedirect("/ticket?msg=err#!/page_login");
				
				System.out.println("Login check am from loginservlet");
			}
			
		}catch(Exception e){
			response.sendRedirect("/ticket?msg=err#!/page_login");
			System.out.println("Login servelt catche for sending request of which users");
		}finally{
			if(conn !=null){
				try {
					conn.close();
				} catch (SQLException e) {
					System.out.println("Login servelt catche for connection null point");
				}
			}
		}
		
 
		
		
	}
		
		
		

}
