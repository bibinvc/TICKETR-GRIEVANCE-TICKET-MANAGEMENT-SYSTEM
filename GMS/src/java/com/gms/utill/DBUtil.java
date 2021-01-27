package com.gms.utill;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.gms.connection.ConnectionFactory;

public class DBUtil {

	Connection conn = null;
	
	public DBUtil(Connection conn){
		this.conn = conn;
	}
	public ResultSet executeQuery(String query){
		ResultSet rst = null;
		try{
			//conn = ConnectionFactory.getConnection();
			Statement stmt= conn.createStatement();
			rst = stmt.executeQuery(query);
		}catch(Exception e){
			e.printStackTrace();
		}
		return rst;
	}

	public boolean executeUpdate(String query){
		boolean success = false;
		try{
			//conn = ConnectionFactory.getConnection();
			Statement stmt= conn.createStatement();
			stmt.executeUpdate(query);
			success = true;
		}catch(Exception e){
			e.printStackTrace();
		}
		return success;
	}
}
