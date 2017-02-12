package com.atsapp.resources;

   
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.atsapp.model.Candidate;
import com.google.gson.Gson;

public class DataPlugin {
	Connection con = null;
	public static  Connection connect(){
		String url ="jdbc:mysql://127.3.148.130:3306/atsapp";
		String dbuser ="adminiqXUYnu";
		String dbpass ="en9nhRHBEEbu";
		String result = "";
		String user = "";
    	String email ="";
		Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
		  con = DriverManager.getConnection(url, dbuser,dbpass);
//		    PreparedStatement pst = con.prepareStatement("Select * from contacts");
//		    
//		    ResultSet rs = pst.executeQuery();
//		    
//				    while (rs.next()) {
//				    	user = rs.getString("co_firstname");
//				    	email = rs.getString("co_email");
//				    }
//				    result = " User " + user + " email " + email;
		}catch(Exception e){
			  System.out.println("Hey ");
//	    	  result = e.getMessage();

		}
		return con ;
	}
	public static Object objInstance(String classname){
		Object rt = null ;
		try {
			rt = Class.forName(classname).getConstructor().newInstance();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rt;
		
	}
	public static String getList(String classname){ 
		 
		 Connection con = connect();	 
	
		 Gson gson = new Gson();
	 
		 String rt = "";
 
		 // ***********************************************Candidates List
		 if( classname.equalsIgnoreCase("candidate") || classname.contains("Candidate") ){
			 List<Candidate> cnlist = new ArrayList<Candidate>();  
		      
			    try{  
			     
			        PreparedStatement ps=con.prepareStatement("select * from candidates");  
			        ResultSet rs=ps.executeQuery();  
			        while(rs.next()){  
			            Candidate c=new Candidate();    
			            c.setCa_firstname(rs.getString("ca_firstname"));
			            c.setCa_lastname(rs.getString("ca_lastname"));
			            c.setCa_middlename(rs.getString("ca_middlename"));
			            c.setCa_jobtitle(rs.getString("ca_job_title"));
			            c.setCa_add(rs.getString("ca_add"));
			            c.setCa_city(rs.getString("ca_city"));
			            c.setCa_email(rs.getString("ca_email"));
			            c.setCa_mobile(rs.getString("ca_mobile"));
			            c.setCa_recruiter_id(rs.getString("ca_recruiter_id"));
			            c.setCa_source(rs.getString("ca_source"));
			            c.setCa_tel(rs.getString("ca_tel"));
			            c.setCa_status(rs.getString("ca_status"));
			            
			            cnlist.add(c);  
			        }  
			    }catch(Exception e){System.out.println(e);}  
			  
			   
			    // convert your list to json
			    rt = gson.toJson(cnlist);
			   
		 }
		 // ***********************************************Candidates List   
		 
		 return rt ;
	
	}
	
	
}
