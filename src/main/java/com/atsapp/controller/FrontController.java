package com.atsapp.controller;

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
		
	@RequestMapping("/email")
	public ModelAndView clientList() {
		  
		String message = "Email Page  " + new EmailPlugin().send();
		return new ModelAndView("clients/index", "message", message);
	}
	@RequestMapping("/client/edit")
	public ModelAndView clientUpdate() {
		String message = "client " ;
		return new ModelAndView("clients/edit", "message", message);
	}
	@RequestMapping("/candidate")
	public ModelAndView candidateList() {
		String message = "Signup / Login / Slide" ;
		return new ModelAndView("candidate/index", "message", message);
	}
	@RequestMapping("/company")
	public ModelAndView companyList() {
 
		String message = "<br><div style='text-align:center;'>"
				+ "<h3>********** Hello World, Spring MVC Tutorial</h3>This message is coming from CrunchifyHelloWorld.java **********</div><br><br>";
				
		return new ModelAndView("company/index", "message", message);
	}
	
	
}
