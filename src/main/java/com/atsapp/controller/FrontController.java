package com.atsapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public String view(@PathVariable(value="cnd_id") String cid , HttpServletResponse res) {	
		DataPlugin DataPlug = new DataPlugin(); 
	    
		String message = "Candidates Lists";		
		String candidate = DataPlug.getOne("Candidate", cid);
		String signedin = DataPlug.getList("Accounts" , "ac_signed_in = 1" );
		
		ModelAndView mv = new ModelAndView("candidates/view", "candidates", candidate);
	 
		mv.addObject("msg", message);
		mv.addObject("candidate",candidate);
		mv.addObject("whose_online", signedin);
		try {       
	        PrintWriter out = res.getWriter();
	        out.println("=>"+candidate);
	        out.close();
	    } catch (IOException ex) { 
	       
	    }
		return candidate;
				
				//mv;
	}
	@RequestMapping("/contacts")
	public ModelAndView contactslist() {	
		
		String message = "Are we connected " + new DataPlugin().connect();
		
		// contacts 
		// company 
		// candidate 
		
		return new ModelAndView("contacts/list", "message", message);
	}
	@RequestMapping("/jobs")
	public ModelAndView jobslist() {	
		
		String message = "Are we connected " + new DataPlugin().connect();
		
		// contacts 
		// company 
		// candidate 
		
		return new ModelAndView("jobs/list", "message", message);
	}
	@RequestMapping("/email")
	public ModelAndView emails() {
		  
		
		return new ModelAndView("email/inbox");
	}
		
	
}  
