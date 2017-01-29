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
		  
	@RequestMapping("/email")
	public ModelAndView clientList() {
		  
		String message ="!";
		try {
			message = "From our gmail plugin:  " + new GmailApiPlugin().send();
	
		} catch (IOException e) {
			message = e.getMessage();
			 
		}
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
	@RequestMapping("/email/plugin")
	public ModelAndView emailapp() {
 
		String message = "<br><div style='text-align:center;'>"
				+ "<h3>********** Hello World, Spring MVC Tutorial</h3>This message is coming from CrunchifyHelloWorld.java **********</div><br><br>";
				
		return new ModelAndView("email", "message", message);
	}
	
	
}
