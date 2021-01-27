package com.gms.connection;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ConnectionFactory {
 	
    private static String url = "jdbc:mysql://localhost:3306/gms_DB";
    private static String uname = "root";
    private static String pass = "Jesus19161916*";
    
	public static Connection getConnection(){
		Connection conn = null;
		try{
                     Class.forName("com.mysql.jdbc.Driver");
                     conn = DriverManager.getConnection(url, uname,pass);
                    System.out.println("<<<<OONN>>>> "+conn);                        
		   }
		catch(Exception e){
			e.printStackTrace();
		}
    		return conn;
            
            
	}
}
