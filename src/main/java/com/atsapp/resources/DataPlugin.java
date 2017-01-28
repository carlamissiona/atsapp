package com.atsapp.resources;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DataPlugin {

	public boolean connect(){
		String url ="jdbc:mysql://127.3.148.130:3306/atsapp";
		String dbuser ="adminiqXUYnu";
		String dbpass ="en9nhRHBEEbu";
		boolean result = false;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, dbuser,dbpass);
		    PreparedStatement pst = con.prepareStatement("Select * from Contacts");
		    
		    ResultSet rs = pst.executeQuery();
		    if(rs.next()){
		    	
		    	result = true;
		    }
		}catch(Exception e){
			System.out.println("Hey ");
	    	  result = false;

		}
		return result ;
	}
	
	
}
