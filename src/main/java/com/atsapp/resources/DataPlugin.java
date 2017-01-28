package com.atsapp.resources;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Arrays;

public class DataPlugin {

	public static String connect(){
		String url ="jdbc:mysql://127.3.148.130:3306/atsapp";
		String dbuser ="adminiqXUYnu";
		String dbpass ="en9nhRHBEEbu";
		String result = "";
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, dbuser,dbpass);
		    PreparedStatement pst = con.prepareStatement("Select * from contacts");
		    
		    ResultSet rs = pst.executeQuery();
		    if(rs.next()){
		    	
		    	result = rs.getObject(0).toString() ;
		    }
		}catch(Exception e){
			System.out.println("Hey ");
	    	  result = e.getMessage();

		}
		return result ;
	}
	
	
}
