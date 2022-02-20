package com.project.demo.Student;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class JobIdentity implements Serializable{
	static final long serialVersionUID = 1L;
	String studEmail;
	String jid;
	
	public JobIdentity() {
		
	}
	
	public JobIdentity(String studEmail, String jid) {
		super();
		this.studEmail = studEmail;
		this.jid = jid;
	}
	
	public String getStudEmail() {
		return studEmail;
	}
	public void setStudEmail(String studEmail) {
		this.studEmail = studEmail;
	}
	public String getJid() {
		return jid;
	}
	public void setJid(String jid) {
		this.jid = jid;
	}

	@Override
	public String toString() {
		return "JobIdentity [studEmail=" + studEmail + ", jid=" + jid + "]";
	}
}
