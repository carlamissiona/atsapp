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
	@RequestMapping("/login/submit")
	public @ResponseBody
	String ajaxLogin(HttpServletRequest request) {
			
       DataPlugin DataPlug = new DataPlugin();
       String params = " WHERE password='"+ request.getParameter("ac_password") +"'  AND  email ='" + request.getParameter("ac_email")  + "' "; 
	        
       return "Result "+ DataPlug.getList("Accounts" ,params );
	   
	}

	@RequestMapping("/calendar")
	public ModelAndView calendar() {

		String message = "Are we connected " + new DataPlugin().connect();

		// contacts
		// company
		// candidate

		return new ModelAndView("other/calendar", "message", message);
	}

 

 
	@RequestMapping("/company/view/{cm_id}")
	public ModelAndView viewCompany(@PathVariable(value = "cm_id") String id) {
		DataPlugin DataPlug = new DataPlugin();

		String message = "Company Lists";
		String company = DataPlug.getOne("Company", id);
		String signedin = new DataPlugin()
				.getList("Users", " ac_signed_in = 1");

		ModelAndView mv = new ModelAndView("companies/view");
		mv.addObject("company", company);
		mv.addObject("msg", message);
		mv.addObject("whose_online", signedin);

		return mv;

	}

	//********************Candidates
	@RequestMapping("/candidates")
	public ModelAndView candidatelist() {

		String message = "Candidates Lists";
		String candidates = new DataPlugin().getList("Candidate", "");
		String signedin = new DataPlugin()
				.getList("Users", " ac_signed_in = 1");

		ModelAndView mv = new ModelAndView("candidates/list", "candidates",
				candidates);

		mv.addObject("msg", message);
		mv.addObject("candidates", candidates);
		mv.addObject("whose_online", signedin);
		return mv;
	}
	@RequestMapping("/candidates/view/{cnd_id}")
	public ModelAndView viewCandidate(@PathVariable(value = "cnd_id") String cid) {
		DataPlugin DataPlug = new DataPlugin();

		String message = "Candidates Lists";
		String candidate = DataPlug.getOne("Candidate", cid);
		String signedin = new DataPlugin()
				.getList("Users", " ac_signed_in = 1");

		ModelAndView mv = new ModelAndView("candidates/view");
		mv.addObject("candidate", candidate);
		mv.addObject("msg", message);
		mv.addObject("whose_online", signedin);

		return mv;

	}
 
	@RequestMapping("/candidates/form/edit")
	public @ResponseBody
	String formEditCandidate(HttpServletRequest req) {
		DataPlugin DataPlug = new DataPlugin();
		return "Result "+ DataPlug.edit(req, "candidate");
	    
	}
	@RequestMapping("/candidates/form/add")
	public @ResponseBody
	String candidateAdd(HttpServletRequest request) {
    
		DataPlugin DataPlug = new DataPlugin();
		return "Result "+DataPlug.edit(request, "candidate");

		// return request.getParameter("cn_lastname") ;

	}
	//********************Candidates
	
	
	//********************USERS
	@RequestMapping("/users/view/{ac_id}")
	public ModelAndView viewUser(@PathVariable(value = "ac_id") String id) {
		DataPlugin DataPlug = new DataPlugin();

		 
		String users = DataPlug.getOne("Users", id);
		String signedin = new DataPlugin()
				.getList("Users", " ac_signed_in = 1");

		ModelAndView mv = new ModelAndView("users/view");
		mv.addObject("users", users); 
		String message = "Debug "+ id + "  = "+ users;
		mv.addObject("whose_online", signedin);
		mv.addObject("msg", message);
		return mv;

	}
	@RequestMapping("/users")
	public ModelAndView accountlist() {
		DataPlugin DataPlug = new DataPlugin();
		String message = "Account Lists";

		String accounts = DataPlug.getList("Users", "");

		ModelAndView mv = new ModelAndView("users/list");

		mv.addObject("users", accounts);

		return mv;
	}
	@RequestMapping("/users/form/edit")
	public @ResponseBody
	String formUsersUpdate(HttpServletRequest request) {

		DataPlugin DataPlug = new DataPlugin();
		return "Result "+ DataPlug.edit(request, "users");

		// return request.getParameter("cn_lastname") ;

	}
	//********************USERS
 
	//********************Companies
	@RequestMapping("/companies")
	public ModelAndView companyList() {
		DataPlugin DataPlug = new DataPlugin();
		String signedin = DataPlug.getList("Users", "ac_signed_in = 1");
		String companies = DataPlug.getList("Company", "");

		ModelAndView mv = new ModelAndView("companies/list");
		mv.addObject("companies", companies);
	 
		mv.addObject("whose_online", signedin);
		return mv;
	}
	@RequestMapping("/companies/delete/{cm_id}")
	public ModelAndView deleteCompany(@PathVariable(value = "cm_id") String id) {
		DataPlugin DataPlug = new DataPlugin();

		String message = "Company Deleted";
		String company = DataPlug.delete("Company", id);
		ModelAndView mv = new ModelAndView("companies/view");
		mv.addObject("company", company);
		mv.addObject("msg", message);

		return mv;

	}
	@RequestMapping("/companies/view/{co_id}")
	public ModelAndView viewCompanies(@PathVariable(value = "co_id") String id) {
		DataPlugin DataPlug = new DataPlugin();
 
		String company = DataPlug.getOne("Company", id);
		String signedin = new DataPlugin()
				.getList("Users", " ac_signed_in = 1");

		ModelAndView mv = new ModelAndView("companies/view");
		mv.addObject("company", company);
		mv.addObject("whose_online", signedin);

		return mv;

	}
	@RequestMapping("/companies/form/edit")
	public @ResponseBody
	String formEditCompanies(HttpServletRequest req) {
		DataPlugin DataPlug = new DataPlugin();
		return "Result "+ DataPlug.edit(req, "companies");
	    
	}
	//*********************Companies

	@RequestMapping("/contacts")
	public ModelAndView contactslist() {

		String message = "Contacts Lists";
		String contacts = new DataPlugin().getList("Contacts", "");
		String signedin = new DataPlugin().getList("Users", "ac_signed_in = 1");
		ModelAndView mv = new ModelAndView("contacts/list", "contacts",
				contacts);

		mv.addObject("whose_online", signedin);
		return mv;
	}

 
	//***************************************** JOBS
	
	@RequestMapping("/jobs")
	public ModelAndView jobslist() {
		DataPlugin DataPlug = new DataPlugin();

		String jobs = DataPlug.getList("Jobs", "");

		ModelAndView mv = new ModelAndView("jobs/list");
		mv.addObject("jobs", jobs);

		return mv;

	}
	@RequestMapping("/jobs/form/edit")
	public @ResponseBody
	String formEditJobs(HttpServletRequest req) {
		DataPlugin DataPlug = new DataPlugin();  
		return "Result "+ DataPlug.edit(req, "jobs");
	    
	}
	@RequestMapping("/jobs/view/{job_id}")
	public ModelAndView viewJobs(@PathVariable(value = "job_id") String id) {
		DataPlugin DataPlug = new DataPlugin();
 
		String job = DataPlug.getOne("Jobs", id);
		String signedin = new DataPlugin()
				.getList("Users", " ac_signed_in = 1");

		ModelAndView mv = new ModelAndView("jobs/view");
		mv.addObject("job", job);
		mv.addObject("whose_online", signedin);

		return mv;

	}
	
	//***************************************** JOBS

	@RequestMapping("/email")
	public ModelAndView emails() {

		return new ModelAndView("email/inbox");
	}
	
 

}
