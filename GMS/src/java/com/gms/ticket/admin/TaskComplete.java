package com.gms.ticket.admin;

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
import com.gms.utill.DBUtil;

/**
 * Servlet implementation class ClientRegForm
 */
@WebServlet("/auth/admtaskcomplete")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 100,   // 50MB
maxFileSize = 1024 * 1024 * 100,         // 50MB
maxRequestSize = 1024 * 1024 * 100)      // 100MB

public class TaskComplete extends HttpServlet {
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
       
    /**
     * @see HttpServlet#HttpServlet()
     */ public void init() {
         // reads SMTP server setting from web.xml file
        
     }
    public TaskComplete() {
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
              	response.sendRedirect("/auth/admticketdash?success=amend");
              }
         	
/**		
		Connection conn = null;

		try
		{
			
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
		     String file = request.getParameter("file");
		     
		     
		     
		     
		     
    
		System.out.println("vinoth : ffffffffffff+fffffffff:");          
			boolean success = false;
			String query ="INSERT INTO `login_db`.`ticket_tbl` (`title`, `natureofwork`, `status`, `reqdate`, `reqtime`, `remarks`, `requstuser`, `assigndto`, `taskcomplete_date`, `taskcomplete_time`, `typeofsupport`, `ticket_id`, `priority`, `follower`, `duedate`, `duetime`, `files`) "
			           + "VALUES ('"+title+"', '"+natureofwork+"', 'Processing', curdate(), curtime(), '"+remark+"', '"+from+"', '"+to+"', 'update', 'update', '"+typeofsupport+"', '"+ticketid+"', '"+priority+"', '"+follower+"', '"+duedate+"', '"+duetime+"', '"+file+"')";
			
			System.out.println("Query :userloginservelt:"+ query);
			conn = ConnectionFactory.getConnection();
			DBUtil dbUtil = new DBUtil(conn);

			//System.out.println("DB UTILE:" + dbUtil);

			success = dbUtil.executeUpdate(query);
System.out.println("<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>"+success);
			if(success){
				response.sendRedirect("/auth/newtaskreg?msg=success");
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
		
		**/
		
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
        String id = request.getParameter("cid");
        String remark = request.getParameter("reremark");
        String status = request.getParameter("cmpstatus");
        
        String title = request.getParameter("title");
		 String natureofwork = request.getParameter("natureofwork");
		 
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
                                                            
        if (clean_Businessname.replaceAll("[a-zA-Z0-9_!@#$%^&*()-=+~.;:,\\Q[\\E\\Q]\\E<>{}\\/?\\\\\"' ]" ,"").length() < 1) 
        {
        	System.out.println("Clean String Have Been Ready to Insert=");
        }
        
        remark = clean_Businessname;
        
        //-----------------------------------------------------------------------------
     
        Connection conn = null;
        
        
		try{
          
            String sql ="UPDATE `ticket_tbl` SET `status`='"+status+"' WHERE `id`='"+id+"';";
			
           System.out.println("Completed Queries :"+sql);
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
