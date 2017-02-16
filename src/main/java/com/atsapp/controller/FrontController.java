package com.atsapp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.atsapp.resources.*; 
import com.atsapp.library.*;
/*
 * author: Carla Missiona
 * 
 */
 
@Controller
public class FrontController {
     

	@RequestMapping("/home")
	public ModelAndView home() {	
		
		String message = "Are we connected " + new DataPlugin().connect();
		
		// contacts 
		// company 
		// candidate 
		
		return new ModelAndView("home", "message", message);
	}
		  
	@RequestMapping("/login")
	public ModelAndView login() {	
		
		String message = "Are we connected " + new DataPlugin().connect();
		ModelAndView mv = new ModelAndView("login");
		mv.addObject("Message", "Hey burnt fishy");
   
		// contacts 
		// company 
		// candidate 
		
		return mv;
	}
	@RequestMapping("/calendar")
	public ModelAndView calendar() {	
		
		String message = "Are we connected " + new DataPlugin().connect();
		
		// contacts 
		// company 
		// candidate 
		
		return new ModelAndView("other/calendar", "message", message);
	}
	@RequestMapping("/candidates")
	public ModelAndView candidatelist() {	
		
		String message = "Candidates Lists";		
		String candidates = new DataPlugin().getList("Candidate","");
		String signedin = new DataPlugin().getList("Accounts" , "ac_signed_in = 1" );
		
		ModelAndView mv = new ModelAndView("candidates/list", "candidates", candidates);
		
		mv.addObject("msg", message);
		mv.addObject("candidates",candidates);
		mv.addObject("whose_online", signedin);
		return mv;
	}
	@RequestMapping("/candidates/view/{cnd_id}")
	public  ModelAndView  view(@PathVariable(value="cnd_id") String cid) {	
		DataPlugin DataPlug = new DataPlugin(); 
	    
		String message = "Candidates Lists";		
		String candidate = DataPlug.getOne("Candidate", cid);
		String signedin = DataPlug.getList("Accounts" , "ac_signed_in = 1" );
		
		ModelAndView mv = new ModelAndView("candidates/view");
		mv.addObject("candidate", candidate);
		mv.addObject("msg", message);
		mv.addObject("whose_online", signedin);
	 
		return mv;
				
			  
	}
	@RequestMapping("/candidates/form/edit")
	public @ResponseBody String formEdit(HttpServletRequest request) {	
		Map<String, String[]> parameters = request.getParameterMap();
		DataPlugin DataPlug = new DataPlugin(); 
    return  DataPlug.edit(parameters , "candidate");
	 
	//		return request.getParameter("cn_lastname") ; 
					
				
			    
	}
	@RequestMapping("/companies")
	public ModelAndView companyList() {	
		
		String message = "Company Lists";		
		String companies = new DataPlugin().getList("Company","");
		String signedin = new DataPlugin().getList("Accounts" , "ac_signed_in = 1" );
		
		ModelAndView mv = new ModelAndView("companies/list", "companies", companies);
		
		mv.addObject("msg", message);		
		mv.addObject("whose_online", signedin);
		return mv;
	}
	@RequestMapping("/contacts")
	public ModelAndView contactslist() {	
		
		String message = "Contacts Lists";		
		String contacts = new DataPlugin().getList("Contacts","");
		String signedin = new DataPlugin().getList("Accounts" , "ac_signed_in = 1" );
		
		ModelAndView mv = new ModelAndView("contacts/list", "contacts", contacts);
		
		mv.addObject("msg", message);		
		mv.addObject("whose_online", signedin);
		return mv;
	}
	@RequestMapping("/jobs")
	public ModelAndView jobslist() {	
	DataPlugin DataPlug = new DataPlugin(); 
	    	 
		 
		String jobs = DataPlug.getList("Jobs","");
		
		ModelAndView mv = new ModelAndView("jobs/list");
		mv.addObject("jobs",jobs);
	 
		return mv;
				
	}
	@RequestMapping("/email")
	public ModelAndView emails() {
		  
		
		return new ModelAndView("email/inbox");
	}
		
	
}  
