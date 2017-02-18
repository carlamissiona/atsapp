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
	String formCandidateUpdate(HttpServletRequest req) {
 
		//String sql = "UPDATE candidates SET cn_firstname='"+ req.getParameter("cn_firstname").toString() +"', cn_middlename='"+  req.getParameter("cn_middlename").toString()  +"' , cn_lastname='"+  req.getParameter("cn_lastname").toString()  +"' , cn_mobile='"+  req.getParameter("cn_mobile").toString()  +"' , cn_add='"+  req.getParameter("cn_add").toString()  +"' , cn_recruiter_id ="+  req.getParameter("cn_recruiter_id").toString()  +" , cn_status='"+  req.getParameter("cn_status").toString()  +"' , cn_tel='"+  req.getParameter("cn_tel").toString()  +"' , cn_job_title='"+  req.getParameter("cn_job_title").toString()  +"'  where cn_id ="+ req.getParameter("cn_id").toString() ;
		return req.getParameter("cn_firstname");
		//return DataPlug.edit(request, "candidate");  

		// return request.getParameter("cn_lastname") ;

	}
	@RequestMapping("/candidates/form/add")
	public @ResponseBody
	String candidateEdit(HttpServletRequest request) {
    
		DataPlugin DataPlug = new DataPlugin();
		return DataPlug.edit(request, "candidate");

		// return request.getParameter("cn_lastname") ;

	}
	//********************Candidates
	
	
	//********************USERS
	@RequestMapping("/users/view/{ac_id}")
	public ModelAndView viewUser(@PathVariable(value = "ac_id") String id) {
		DataPlugin DataPlug = new DataPlugin();

		String message = "Company Lists";
		String users = DataPlug.getOne("Users", id);
		String signedin = new DataPlugin()
				.getList("Users", " ac_signed_in = 1");

		ModelAndView mv = new ModelAndView("users/view");
		mv.addObject("users", users); 
		mv.addObject("whose_online", signedin);

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
		return DataPlug.edit(request, "Users");

		// return request.getParameter("cn_lastname") ;

	}
	//********************USERS
 

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

 

	@RequestMapping("/jobs")
	public ModelAndView jobslist() {
		DataPlugin DataPlug = new DataPlugin();

		String jobs = DataPlug.getList("Jobs", "");

		ModelAndView mv = new ModelAndView("jobs/list");
		mv.addObject("jobs", jobs);

		return mv;

	}

	@RequestMapping("/email")
	public ModelAndView emails() {

		return new ModelAndView("email/inbox");
	}

}
