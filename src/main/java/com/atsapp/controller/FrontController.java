package com.atsapp.controller;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.springframework.stereotype.Controller;
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
		
		// contacts 
		// company 
		// candidate 
		
		return new ModelAndView("candidates/list", "message", message);
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
