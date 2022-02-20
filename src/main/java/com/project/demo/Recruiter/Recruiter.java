package com.project.demo.Recruiter;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Recruiter {
	@Id
	String recEmail;
	String comName;
	String recName;
	String password;
	public String getRecName() {
		return recName;
	}
	public void setRecName(String recName) {
		this.recName = recName;
	}
	
	public String getRecEmail() {
		return recEmail;
	}
	public void setRecEmail(String recEmail) {
		this.recEmail = recEmail;
	}
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Recruiter [recEmail=" + recEmail + ", comName=" + comName + ", recName=" + recName + ", password="
				+ password + "]";
	}
	
}
