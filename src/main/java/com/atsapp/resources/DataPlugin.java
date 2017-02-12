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

import com.atsapp.model.Account;
import com.atsapp.model.Candidate;
import com.atsapp.model.Job;
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
	public String getOne(String objModel, String id){ 
		// get One by id
		 Connection con = connect();	 
			
		 Gson gson = new Gson();
	 
		 String rt = "";
		
		// ***************************** Candidate 
		 if( objModel.equalsIgnoreCase("Candidate") || objModel.contains("Candidate") || objModel.contentEquals("Candidate") ){
			 List<Candidate> cnlist = new ArrayList<Candidate>();  
		       
			    try{  
			    	String sql = "select * from candidates where ca_id = "+ id ;
			        PreparedStatement ps=con.prepareStatement(sql); 
			        ResultSet rs=ps.executeQuery(); 
			        while(rs.next()){  
			            Candidate c=new Candidate();    
			            c.setCa_firstname(rs.getString("ca_firstname"));
			            c.setCa_lastname(rs.getString("ca_lastname"));
			            c.setCa_middlename(rs.getString("ca_middlename"));
			            c.setCa_job_title(rs.getString("ca_job_title"));
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
			         
			        rt = gson.toJson(cnlist);  
			    }catch(Exception e){System.out.println(e);}
		 
		 }
		 if( objModel.equalsIgnoreCase("Jobs") ||  objModel.contains("Job") || objModel.contentEquals("Jobs") ){
			 List<Job> jolist = new ArrayList<Job>();  
		      
			    try{  
			        // 
			        PreparedStatement ps=con.prepareStatement("select j.*,  concat(c.co_firstname, ' ', c.co_lastname) as jo_contact_linked  from jobs j left join contacts c on j.jo_contact = c.co_id  where j.jo_id = "+ id ); 
			        ResultSet rs=ps.executeQuery(); 
			        while(rs.next()){  
			            Job j = new Job();    
			            j.setJo_client(rs.getString("jo_client"));
			            j.setJo_contact(rs.getString("jo_contact_linked"));
			            j.setJo_desc(rs.getString("jo_desc"));
			            j.setJo_id(rs.getInt("jo_id"));
			            j.setJo_name(rs.getString("jo_name"));
			            j.setJo_notes(rs.getString("jo_notes"));
			            j.setJo_status(rs.getString("jo_status"));
			            jolist.add(j);
			        } 			         
			   		rt = gson.toJson(jolist);
			        
			    }catch(Exception e){System.out.println(e);}
		 
		 }
		 
 		   
		 return rt;
		
	}
	public String getList(String classname , String filter){ 
		 
		 Connection con = connect();	 
	
		 Gson gson = new Gson();
	 
		 String rt = "";
 
		 // ***********************************************Candidates List
		 if( classname.equalsIgnoreCase("candidate") || classname.contains("Candidate") ){
			 List<Candidate> cnlist = new ArrayList<Candidate>();  
		      
			    try{  
			     
			        PreparedStatement ps=con.prepareStatement("select * from candidates " + filter);  
			        ResultSet rs=ps.executeQuery();  
			        while(rs.next()){  
			            Candidate c = new Candidate();    
			            c.setCa_id(rs.getInt("ca_id"));
			            c.setCa_firstname(rs.getString("ca_firstname"));
			            c.setCa_lastname(rs.getString("ca_lastname"));
			            c.setCa_middlename(rs.getString("ca_middlename"));
			            c.setCa_job_title(rs.getString("ca_job_title"));
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
		 if( classname.equalsIgnoreCase("Accounts") || classname.contains("Accounts") ){
			 List<Account> aclist = new ArrayList<Account>();  
		      
			    try{  
			     
			        PreparedStatement ps=con.prepareStatement("select * from accounts " + filter);  
			        ResultSet rs=ps.executeQuery();  
			        while(rs.next()){  
			            Account a =new Account();    
			             a.setAc_address(rs.getString("ac_address"));
			             a.setAc_firstname(rs.getString("ac_firstname"));
			             a.setAc_middlename(rs.getString("ac_middlename"));
			             a.setAc_mobile(rs.getString("ac_mobile"));
			             a.setAc_email(rs.getString("ac_email"));
			             a.setAc_status(rs.getString("ac_status"));
			             a.setAc_password(rs.getString("ac_password"));
			             a.setAc_employment_date(rs.getDate("ac_employment_date").toString());
			             aclist.add(a);  
			        }  
			    }catch(Exception e){System.out.println(e);}  
			  
			   
			    // convert your list to json
			    rt = gson.toJson(aclist);
			   
		 }
		 // *********************************************** Job List   
		 if(  classname.equalsIgnoreCase("Jobs") ||   classname.contains("Job") ||  classname.contentEquals("Jobs") ){
			 List<Job> jolist = new ArrayList<Job>();  
		      
			    try{  
			        // 
			        PreparedStatement ps=con.prepareStatement("select j.*,  concat(c.co_firstname, ' ', c.co_lastname) as jo_contact_linked  from jobs j left join contacts c on j.jo_contact = c.co_id "); 
			        ResultSet rs=ps.executeQuery(); 
			        while(rs.next()){  
			            Job j = new Job();    
			            j.setJo_client(rs.getString("jo_client"));
			            j.setJo_contact(rs.getString("jo_contact_linked"));
			            j.setJo_desc(rs.getString("jo_desc"));
			            j.setJo_id(rs.getInt("jo_id"));
			            j.setJo_name(rs.getString("jo_name"));
			            j.setJo_notes(rs.getString("jo_notes"));
			            j.setJo_status(rs.getString("jo_status"));
			            jolist.add(j);
			        } 			         
			   		rt = gson.toJson(jolist);
			        
			    }catch(Exception e){System.out.println(e);}
		 
		 }
		 return rt ;
	
	}
	
	
}
