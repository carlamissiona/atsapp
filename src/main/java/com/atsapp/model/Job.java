package com.atsapp.model;

public class Job {

	public int jo_id =0 ;
	public int jo_contact_id;
	public String jo_name = "";
	public String jo_client = "";
	public String jo_contact = "";
	public String jo_desc = "";
	public String jo_notes = "";
	public String jo_status = "";
	public int getJo_id() {
		return jo_id;
	}
	public void setJo_id(int jo_id) {
		this.jo_id = jo_id;
	}
	public String getJo_name() {
		return jo_name;
	}
	public void setJo_name(String jo_name) {
		this.jo_name = jo_name;
	}
	public String getJo_client() {
		return jo_client;
	}
	public void setJo_client(String jo_client) {
		this.jo_client = jo_client;
	}
	public String getJo_contact() {
		return jo_contact;
	}
	public int setJo_contact_id() {
		return jo_contact_id; 
		
	}
	public void setJo_contact(String jo_contact) {
		this.jo_contact = jo_contact;
	}
	public String getJo_desc() {
		return jo_desc;
	}
	public void setJo_desc(String jo_desc) {
		this.jo_desc = jo_desc;
	}
	public String getJo_notes() {
		return jo_notes;
	}
	public void setJo_notes(String jo_notes) {
		this.jo_notes = jo_notes;
	}
	public String getJo_status() {
		return jo_status;
	}
	public void setJo_status(String jo_status) {
		this.jo_status = jo_status;
	}
	public void setJo_contact_id(int jo_contact_id) {
		this.jo_contact_id = jo_contact_id;
		
	}
	
	
}
