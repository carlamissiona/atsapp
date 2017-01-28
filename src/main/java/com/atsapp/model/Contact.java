package com.atsapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

public class Contact {


	private int co_id;
	
	private String co_firstname;
	private String co_lastname;
	private String co_middlename;
	private String co_email;
	private String co_add;
	private String co_mobile;
	private String co_tel;
	
	
	public int getCo_id() {
		return co_id;
	}


	public void setCo_id(int co_id) {
		this.co_id = co_id;
	}


	public String getCo_firstname() {
		return co_firstname;
	}


	public void setCo_firstname(String co_firstname) {
		this.co_firstname = co_firstname;
	}


	public String getCo_lastname() {
		return co_lastname;
	}


	public void setCo_lastname(String co_lastname) {
		this.co_lastname = co_lastname;
	}


	public String getCo_middlename() {
		return co_middlename;
	}


	public void setCo_middlename(String co_middlename) {
		this.co_middlename = co_middlename;
	}


	public String getCo_email() {
		return co_email;
	}


	public void setCo_email(String co_email) {
		this.co_email = co_email;
	}


	public String getCo_add() {
		return co_add;
	}


	public void setCo_add(String co_add) {
		this.co_add = co_add;
	}


	public String getCo_mobile() {
		return co_mobile;
	}


	public void setCo_mobile(String co_mobile) {
		this.co_mobile = co_mobile;
	}


	public String getCo_tel() {
		return co_tel;
	}


	public void setCo_tel(String co_tel) {
		this.co_tel = co_tel;
	}

	@Override
	public String toString(){
		return "id="+ co_id +", name="+ co_firstname+"  "+ co_lastname +", email " + co_email;
	}
}