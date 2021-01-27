package com.gms.ticket.users;

import com.gms.ticket.admin.*;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.gms.connection.ConnectionFactory;
import com.gms.mailutil.NormalReplayNewProEmailUtility;
import com.gms.utill.DBUtil;

/**
 * Servlet implementation class ClientRegForm
 */
@WebServlet("/auth/usertaskregisteration")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 100,   // 50MB
maxFileSize = 1024 * 1024 * 100,         // 50MB
maxRequestSize = 1024 * 1024 * 100)      // 100MB

public class NewTaskReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
	   private static String sendTo = null;
	    
	    private static String actualfileName = null;  // this is for mail file name
	    private static String checkfile = null;  // this is for mail file name
	    private static String manulid = null;
	    private static int finalmanulid;
	    

	    private static int finaloderid;
	    private static int ordeno ;
	    private static String manul_odid = null;
	    private String newament       ="/usr/share/ChangeApp/recivefile/ticketfiles/";
   
    private String host;
    private String port;
    private String user;
    private String pass;
    /**
     * @see HttpServlet#HttpServlet()
     */ public void init() {
            ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        pass = context.getInitParameter("pass");
        user = context.getInitParameter("from");
         // reads SMTP server setting from web.xml file
        
     }
    public NewTaskReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("test servlet");
		
		

  		boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
		if (!isMultipartContent) {
			System.out.println("You are not trying to upload<br/>");
			return;
		}
 		   //----------------------------------------------------------------------------------------------    
		 List<File> uploadedFiles = null; 
         	try {
     			//uploadedFiles = 
     					saveUploadedFiles(request);
     		} catch (IllegalStateException e) {
     			// TODO Auto-generated catch block
     			System.out.println("Cought IllegalStateException exception......................................... ");
     			e.printStackTrace();
     			return;
     		} catch (SQLException e) {
     			// TODO Auto-generated catch block
     			//e.printStackTrace();
     			System.out.println("your sql exeption .....................................");
     			e.printStackTrace();
     			return;
     		} 
         	finally {
              	response.sendRedirect("/auth/ticketusernewtask?success=amend");
              }
                
       //===================mail==================================================         
                 String to = request.getParameter("to");
                Connection con = null;
		 
		try
		{
			String query = "select * from ticket_auth_tbl where name='"+to+"'";
			
			System.out.println("Query :userloginservelt:"+ query);
			con = ConnectionFactory.getConnection();
			DBUtil dbUtil = new DBUtil(con);
			ResultSet rst = dbUtil.executeQuery(query);
			 
			while(rst.next()){
				 
			 	sendTo = rst.getString("emailid");
				 
			}
			 
                    System.out.println("emailid :"+sendTo);
			
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
                
          
           String title = request.getParameter("title");
           String natureofwork = request.getParameter("natureofwork");
	   String remark = request.getParameter("remark");
	   String from = request.getParameter("from");
            
	     String typeofsupport = request.getParameter("typeofsupport");
	     String priority = request.getParameter("priority");
	     String follower = request.getParameter("follower");
	     String duedate = request.getParameter("duedate");
	     String duetime = request.getParameter("duetime");
             
            System.out.println("mill"+sendTo);
        String content = "<h5 class=\"mt-1 mb-1 text-bold-500\"> Titile  &nbsp;&nbsp;&nbsp; : <b><label id=\"status\"></label></b></h5>\n" +
            "	\n" +
            "	<h5 class=\"mt-1 mb-1 text-bold-500\"> Nature of Work : "+natureofwork+"<b><label id=\"work\"></label></b></h5>\n" +
            "	<h5 class=\"mt-1 mb-1 text-bold-500\"> Assigned To : "+to+"<b><label id=\"assigndto\"></label></b></h5>\n" +
            "	<h5 class=\"mt-1 mb-1 text-bold-500\"> Requstuser : "+from+"<b><label id=\"requstuser\"></label></b></h5>\n" +
            "	<h5 class=\"mt-1 mb-1 text-bold-500\"> Follower : "+follower+"<b><label id=\"follower\"></label></b></h5>\n" +
            "	<h5 class=\"mt-1 mb-1 text-bold-500\"> Type Of Support : "+typeofsupport+"<b><label id=\"typeofsupport\"></label></b></h5>\n" +
            "	<h5 class=\"mt-1 mb-1 text-bold-500\"> Priority : "+priority+"<b><label id=\"priority\"></label></b></h5>\n" +
            "	<h5 class=\"mt-1 mb-1 text-bold-500\"> Remarks : "+remark+"<b><label id=\"remarks\"></label></b></h5>\n" +
            "	<h5 class=\"mt-1 mb-1 text-bold-500\"> Due Date / Time : "+duedate+" / "+duetime+"<b><label id=\"duedate\"></label></b></h5>\n" +
            "	<h5 class=\"mt-1 mb-1 text-bold-500\"> Task Complete_Date / Time : "+natureofwork+"<b><label id=\"taskcomplete_date\"></label></b></h5>\n" +
            "	<h5 class=\"mt-1 mb-1 text-bold-500\"> Status : Processing <b><label id=\"tstatus\"></label></b></h5>";
    	String sub = "GRIEVANCE ALERT";
    	
        
            System.out.println(content);
        String resultMessage = "";
 
        try {
            if(sendTo!=null){
        	
        	NormalReplayNewProEmailUtility.sendEmailWithAttachment(host, port, user, pass,
           		sendTo, sub, content, null);
             
            resultMessage = "The e-mail was sent successfully";
            }else{
            	System.out.println("Your Email is Empty :"+sendTo); 
            }
            
        } catch (Exception ex) {
        	
           ex.printStackTrace();
          
        } finally {
        	
           
            System.gc();
        }
 //=========================xxxxxxxxxxx==================================================
		
	}
	public static double getRandomNumber(){
	    double x = Math.random();
	    return x;
	}
	
	
	

    /**
     * Saves files uploaded from the client and return a list of these files
     * which will be attached to the e-mail message.
     * @throws SQLException 
     */
    private List<File> saveUploadedFiles(HttpServletRequest request)
            throws IllegalStateException, IOException, ServletException, SQLException {
        List<File> listFiles = new ArrayList<File>();
        byte[] buffer = new byte[4096];
        int bytesRead = -1;
        
        Collection<Part> multiparts = request.getParts();
        
        if (multiparts.size() > 0) {
            for (Part part : request.getParts()) {
                // creates a file to be saved
            	
            	
                String fileName = extractFileName(part);
                
                if (fileName == null || fileName.equals("")) {
                    // not attachment part, continue
                    continue;
                }
             //----------------------------------------------------------------------------    
                DateFormat dateFormat = new SimpleDateFormat("MM_dd_yyyy");
      		   //get current date time with Date()
      		   Date date = new Date(0);
      		   System.out.println(dateFormat.format(date));
      	 
      		   //get current date time with Calendar()
      		   Calendar cal = Calendar.getInstance();
      		   System.out.println(dateFormat.format(cal.getTime()));
                  String Curdate = dateFormat.format(cal.getTime());
          	
                  File file = new File(newament+Curdate+"");
                  
                  
      	if (!file.exists()) {
      		if (file.mkdirs()) {
      			System.out.println("Directory is created!");
      		} else {
      			System.out.println("Failed to create directory!");
      		}
      	}
      	else{
      		System.out.println("curent folder is already exist");
      	}
      	
              //--------------------------------------------------------
      		actualfileName = fileName;
    		fileName = fileName.replaceAll("[^a-zA-Z0-9.-]", "_");
    		File saveFile = new File(newament+Curdate+"/" + fileName);
                int i = 1;
                while (saveFile.exists()) { // keep renaming as file_(2) , file_(3) etc.
                String path = saveFile.getAbsolutePath();
                int iDot = path.lastIndexOf(".");
                saveFile = new File(path.substring(0, iDot) +
                       "_(" + ++i + ")" + path.substring(iDot));//File rename if same files
            }
               
                
               // System.out.println("saveFile: " + saveFile.getAbsolutePath());
                String filepath = saveFile.getAbsolutePath();
               System.out.println("file replace ment ex: before"+filepath);
                String replace  = filepath.replace("\\", "/");
                
              //-----------------  
                FileOutputStream outputStream = new FileOutputStream(saveFile);
                 
                          
                // saves uploaded file
                InputStream inputStream = part.getInputStream();
                
                
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                	
                    outputStream.write(buffer, 0, bytesRead);
                    
                    
                }
                outputStream.close();
                inputStream.close();
                 
                listFiles.add(saveFile);
            }
        }
        
        //---------------start
        
        String title = request.getParameter("title");
		 String natureofwork = request.getParameter("natureofwork");
		 String remark = request.getParameter("remark");
		 String from = request.getParameter("from");
		 String to = request.getParameter("to");
	     String typeofsupport = request.getParameter("typeofsupport");
	     double ticketid = getRandomNumber(); 
	     String priority = request.getParameter("priority");
	     String follower = request.getParameter("follower");
	     String duedate = request.getParameter("duedate");
	     String duetime = request.getParameter("duetime");
	     //String file = request.getParameter("file");
	     
	     
	     
        
        String finalfiles = new String(listFiles.toString());
        
        String file = finalfiles.replace("\\", "/");
        file = file.replace("[", "");
        file = file.replace("]", "");
        
         HttpSession clientsession = request.getSession(false);
 	     String name = (String)clientsession.getAttribute("username");
 	     String acno = (String)clientsession.getAttribute("acno");
 	     String getemailid = (String)clientsession.getAttribute("getemailid");
 	     String getphoneno = (String)clientsession.getAttribute("getphoneno");
        
        if (remark == null) {
            return null;
        }
                                    
        if (remark.replaceAll("[a-zA-Z0-9_!@#$%^&*()-=+~.;:,\\Q[\\E\\Q]\\E<>{}\\/? ]","").length() < 1) {
      //     System.out.println("You Have Been Replace Scuccessfully...");
        }
            
        String clean_Businessname = remark;
        clean_Businessname = clean_Businessname.replaceAll("\\\\", "\\\\\\\\");
        clean_Businessname = clean_Businessname.replaceAll("\\n","\\\\n");
        clean_Businessname = clean_Businessname.replaceAll("\\r", "\\\\r");
        clean_Businessname = clean_Businessname.replaceAll("\\t", "\\\\t");
        clean_Businessname = clean_Businessname.replaceAll("\\00", "\\\\0");
        clean_Businessname = clean_Businessname.replaceAll("'", "\\\\'");
        clean_Businessname = clean_Businessname.replaceAll("\\\"", "\\\\\"");
                                                            
        if (clean_Businessname.replaceAll("[a-zA-Z0-9_!@#$%^&*()-=+~.;:,\\Q[\\E\\Q]\\E<>{}\\/?\\\\\"' ]"
          ,"").length() < 1) 
        {
        	System.out.println("Clean String Have Been Ready to Insert=");
        }
        
        remark = clean_Businessname;
 //---------------------String Replace For Insert Message---------------------------------------------------------  
        
        if (natureofwork == null) {
            return null;
        }
                                    
        if (natureofwork.replaceAll("[a-zA-Z0-9_!@#$%^&*()-=+~.;:,\\Q[\\E\\Q]\\E<>{}\\/? ]","").length() < 1) {
           System.out.println("YYYYYYYYYYYYYYYYYYYYYYEEEEEEEEEEEXXXXXXXXXXXXXX"+ natureofwork);
        }
            
        String clean_string = natureofwork;
        clean_string = clean_string.replaceAll("\\\\", "\\\\\\\\");
        clean_string = clean_string.replaceAll("\\n","\\\\n");
        clean_string = clean_string.replaceAll("\\r", "\\\\r");
        clean_string = clean_string.replaceAll("\\t", "\\\\t");
        clean_string = clean_string.replaceAll("\\00", "\\\\0");
        clean_string = clean_string.replaceAll("'", "\\\\'");
        clean_string = clean_string.replaceAll("\\\"", "\\\\\"");
                                                            
        if (clean_string.replaceAll("[a-zA-Z0-9_!@#$%^&*()-=+~.;:,\\Q[\\E\\Q]\\E<>{}\\/?\\\\\"' ]"
          ,"").length() < 1) 
        {
        	System.out.println("CleanS;;;;;;;;;;;;;;;;;;ppppppppppppppppppppp========="+clean_string);
        }
        
        natureofwork = clean_string;
        //-----------------------------------------------------------------------------
        
        //-----------------------------------------------------------------------------
     
        Connection conn = null;
        
        
		try{
          
            String sql ="INSERT INTO `ticket_tbl` (`title`, `natureofwork`, `status`, `reqdate`, `reqtime`, `remarks`, `requstuser`, `assigndto`, `taskcomplete_date`, `taskcomplete_time`, `typeofsupport`, `ticket_id`, `priority`, `follower`, `duedate`, `duetime`, `files`) "
			           + "VALUES ('"+title+"', '"+natureofwork+"', 'Processing', curdate(), curtime(), '"+remark+"', '"+from+"', '"+to+"', 'update', 'update', '"+typeofsupport+"', '"+ticketid+"', '"+priority+"', '"+follower+"', '"+duedate+"', '"+duetime+"', '"+file+"')";
			
           System.out.println(sql);
            conn = (Connection) ConnectionFactory.getConnection();
        	DBUtil dbUtile = new DBUtil(conn);
        	
        	dbUtile.executeUpdate(sql);
            
            
         }catch(Exception se){
            //Handle errors for JDBC
            se.printStackTrace();
         }
         finally{
          
        	 if(conn !=null){
         		try {
     				conn.close();
     			} catch (SQLException e) {
                       e.printStackTrace();
     				//System.out.println("the connection not close error");
     			}
         	}
         } //end try

        
        //----------------------END---------------------------------------------------------------
       
        
        return listFiles;
    }
 
    /**
     * Retrieves file name of a upload part from its HTTP header
     */
  
    
    
    private String extractFileName(Part part) {
    	try{
        String contentDisp = part.getHeader("content-disposition");
      //  System.out.println("@@@@@@22222"+contentDisp);
        String[] items = contentDisp.split(";");
           int i = 1;
      //-----------------------------------------------------------------------------------------------     
           DateFormat dateFormat = new SimpleDateFormat("MM_dd_yyyy");
 		   //get current date time with Date()
 		   Date date = new Date(0);
 		//   System.out.println(dateFormat.format(date));
 	 
 		   //get current date time with Calendar()
 		   Calendar cal = Calendar.getInstance();
 		 //  System.out.println(dateFormat.format(cal.getTime()));
             String Curdate = dateFormat.format(cal.getTime());
     //--------------------------------------------------------------------------------------------------	
         	  File file = new File(newament+Curdate+"");
         	  //File file = new File("/usr/share/ChangeApp/recivefile/NewProject/"+Curdate+""); 
 	
 	if (!file.exists()) {
 		if (file.mkdir()) {
 			System.out.println("Directory is created!");
 		} else {
 			System.out.println("Failed to create directory!");
 		}
 	}
 	else{
 		System.out.println("curent folder is already exist");
 	}
 	//-----------------------------------------------------------
        for (String s : items) {
        
        	// System.out.println("####6666666666666####333"+s);
        	 
            if (s.trim().startsWith("filename")) {
            	
            //	System.out.println("%%%%%%%%66666666666666666%%%%%555"+s);
            	
            	String s1 = s.substring(s.indexOf("=") + 2, s.length() - 1);
           //     System.out.println("&&&&&&&&&&&&&77"+s1);
                
             File realpath = new File(newament+Curdate+"/"+s1);     
      	//  File realpath = new File("/usr/share/ChangeApp/recivefile/NewProject/"+Curdate+"/"+s1); 
          String filerename = realpath.getAbsolutePath();
          
       //   System.out.println("????????????????<<<<vinoth>>>>>>>>>fileRename:"+filerename);
          
          if(s1 !=null){
        	  try{
          while(s1.equals(s1)){
          	int iDot = s1.lastIndexOf(".");
          	String ss = (s1.substring(0,iDot)+s1.substring(iDot));
          	return ss;
     
          }
        	  }catch(Exception e){
        		  while(s1.equals(s1)){
        	          	int iDot = s1.lastIndexOf(".");
        	          	String ss = (s1.substring(0,iDot)+"_("+ i++ +")"+s1.substring(iDot));
        	          	return ss;
        	     
        	          }
        	  }
          }
    		else
    		 {
    			System.out.println("No such a File uploaded");
    		 }
              
            }
            
        }
    	}catch(Exception e){
       		System.out.println("Upload file are not there is is index out of bound exception");
       	}
        return null;
    }
	
	

}
