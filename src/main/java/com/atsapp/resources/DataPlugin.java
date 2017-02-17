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
import java.util.Map;

import com.atsapp.model.Account;
import com.atsapp.model.Candidate;
import com.atsapp.model.Company;
import com.atsapp.model.Contact;
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
		 
		 if( objModel.equalsIgnoreCase("Company") ||  objModel.contains("Company") || objModel.contentEquals("Company") ){
			 	String sql ="";
			 	List<Company> colist = new ArrayList<Company>();  
			 	sql = "SELECT cm.co_name as co_name, cm.co_desc , cm.co_id as co_id  CONCAT( cn.co_firstname,  ' ', cn.co_lastname ) AS co_contact_linked FROM companies cm LEFT JOIN contacts cn ON cm_contact = cn.co_id ";
			    try{  
			    	
			        // 
			        PreparedStatement ps=con.prepareStatement(sql);
			        ResultSet rs=ps.executeQuery(); 
			        while(rs.next()){  
			            Company cm = new Company();  
			            
			            cm.setCm_contact(rs.getString("co_contact_linked"));
			            cm.setCm_name(rs.getString("co_name"));
			            cm.setCm_desc(rs.getString("co_desc"));
			            cm.setCm_id(rs.getInt("co_id"));
			            			       
			            colist.add(cm);
			        } 			         
			   		rt = gson.toJson(colist);
			        
			    }catch(Exception e){System.out.println(e);}
		 
		 }
		 return rt;
		
	}
	public String edit(	Map param , String model){ 
		 Connection con = connect();	 
		 ResultSet rs = null;
		 Gson gson = new Gson();
		 String sql ="";
		 String rt = "";
		
		if(model.contains("candidate") ){
			
			// edit Candidate
		//	cn_firstname=Carla&cn_middlename=A&cn_lastname=Wi&cn_email=missiona.carla%40gmail.com&cn_mobile=09990991&cn_add=qc+qcs&cn_tel=12345&cn_recruiter=1&cn_recruiter=QC&cn_status=interviewed&cn_job_title=Software+Developer
					
			 sql =	Arrays.toString(param.keySet().toArray())+    "INSERT INTO Candidates (cn_firstname, cn_middlename,cn_lastname, cn_email, cn_mobile, cn_add, cn_tel , cn_recruiter ,cn_status ,cn_job_title)"
			+ "VALUES ('"+ param.get("cn_middlename").toString()+"', '"+ param.get("cn_middlename").toString() +"'  , '"+ param.get("cn_lastname").toString() +"'  , '"+ param.get(" cn_email")+"'  , '"+ param.get("cn_mobile").toString() +"'  , '"+ param.get("cn_add").toString() +"'  , '"+ param.get("cn_tel").toString() +"'  , '"+ param.get("cn_recruiter").toString() +"'  , '"+ param.get("cn_status").toString() +"'  , '"+ param.get("cn_job_title").toString() +"' )";
		    try{  
		    	PreparedStatement ps=con.prepareStatement(sql);  
		    	rs=ps.executeQuery();  
		    }catch(Exception e){System.out.println(e);}  
			
		}
		return sql +"!! " ;
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
			            c.setCa_cv_url(rs.getString("ca_cv_url"));
			            c.setCa_tel(rs.getString("ca_tel"));
			            c.setCa_status(rs.getString("ca_status"));
			            
			            cnlist.add(c);  
			        }  
			    }catch(Exception e){System.out.println(e);}  
			  
			   
			    // convert your list to json
			    rt = gson.toJson(cnlist);
			   
		 }	
		 // ***********************************************Candidates List   
		 if( classname.equalsIgnoreCase("Accounts") || classname.contains("Accounts") ||  classname.contentEquals("Accounts") ){
			 List<Account> aclist = new ArrayList<Account>();  
			  ResultSet rs = null; String sql = "";
			    try{  
			    	sql ="select * from accounts ";
			        PreparedStatement ps=con.prepareStatement(sql);  
			        rs=ps.executeQuery();  
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
			    rt = sql ;
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
		 //*********************************************Contacts List
		 
		 if( classname.equalsIgnoreCase("contacts") || classname.contains("Contacts") ){
			 List<Contact> cnlist = new ArrayList<Contact>();  
		      
			    try{  
			     
			        PreparedStatement ps=con.prepareStatement("select * from contacts " + filter);  
			        ResultSet rs=ps.executeQuery();  
			        while(rs.next()){  
			            Contact c = new Contact();    
			            c.setCo_id(rs.getInt("co_id"));
			            c.setCo_firstname(rs.getString("co_firstname"));
			            c.setCo_lastname(rs.getString("co_lastname"));
			            c.setCo_middlename(rs.getString("co_middlename"));
			            c.setCo_add(rs.getString("co_add"));
			            c.setCo_email(rs.getString("co_email"));
			            c.setCo_mobile(rs.getString("co_mobile"));
			            c.setCo_tel(rs.getString("co_tel"));
			            
			            cnlist.add(c);  
			        }  
			    }catch(Exception e){System.out.println(e);}  
			  
			   
			    // convert your list to json
			    rt = gson.toJson(cnlist);
			   
		 }
		 if( classname.equalsIgnoreCase("company") || classname.contains("Company") ){
			 List<Company> cnlist = new ArrayList<Company>();  
			   String sql  ="";
			    try{  
			     
			       sql = "SELECT cm.* , CONCAT( cn.co_firstname,  ' ', cn.co_lastname ) AS cm_contact FROM companies cm LEFT JOIN contacts cn ON cm_contact = cn.co_id ";  
			        PreparedStatement ps=con.prepareStatement(sql);
			        ResultSet rs=ps.executeQuery();  
			        while(rs.next() ){  
			            Company c = new Company();    
			            c.setCm_id(rs.getInt("co_id"));
			            c.setCm_name(rs.getString("co_name") );
			            c.setCm_desc(rs.getString("co_desc"));
			            c.setCm_contact(rs.getString("cm_contact"));			                
			            cnlist.add(c);    
			        }  
			    }catch(Exception e){System.out.println(e);}    
			  
			   
			 
			    rt = gson.toJson(cnlist);
		 
			   
		 }
		 if( classname.equalsIgnoreCase("Users") || classname.contains("Users") ){
			 List<Account> cnlist = new ArrayList<Account>();  
			   String sql  ="";
			    try{  
	 
			        sql = "SELECT * FROM accounts " + filter;  
			        PreparedStatement ps=con.prepareStatement(sql);
			        ResultSet rs=ps.executeQuery();  
			        while(rs.next()){  
			            Account a= new Account();    
			            a.setAc_address( rs.getString("ac_address") );
			            a.setAc_email( rs.getString("ac_email") );
			            a.setAc_firstname( rs.getString("ac_firstname") );
			            a.setAc_lastname(rs.getString("ac_lastname"));
			            a.setAc_middlename(rs.getString("ac_middlename") );
			            a.setAc_id(rs.getInt("ac_id"));
			            a.setAc_mobile(rs.getString("ac_mobile") );
			            a.setAc_status(rs.getString("ac_status") );
			            a.setAc_password(rs.getString("ac_password") );
			            a.setAc_employment_date(rs.getString("ac_employement_date") );
			            a.setAc_id(rs.getInt("ac_signed_in"));		            
			          
			            cnlist.add(a);  
			        }  
			    }catch(Exception e){System.out.println(e);}  
			  
			   
			    // convert your list to json
			    rt = gson.toJson(cnlist);
			   
			   
		 }
		 return rt ;
	
	}
	
	
}
