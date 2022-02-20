package com.project.demo.Recruiter;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class RecFeedback {
	@Id
	String recEmail;
	int skcount;
	int cpcount;
	int aptitudecount;
	int overallcount;
	public int getOverallcount() {
		return overallcount;
	}
	public void setOverallcount(int overallcount) {
		this.overallcount = overallcount;
	}
	public String getRecEmail() {
		return recEmail;
	}
	public void setRecEmail(String recEmail) {
		this.recEmail = recEmail;
	}
	public int getSkcount() {
		return skcount;
	}
	public void setSkcount(int skcount) {
		this.skcount = skcount;
	}
	public int getCpcount() {
		return cpcount;
	}
	public void setCpcount(int cpcount) {
		this.cpcount = cpcount;
	}
	public int getAptitudecount() {
		return aptitudecount;
	}
	public void setAptitudecount(int aptitudecount) {
		this.aptitudecount = aptitudecount;
	}
	@Override
	public String toString() {
		return "RecFeedback [recEmail=" + recEmail + ", skcount=" + skcount + ", cpcount=" + cpcount
				+ ", aptitudecount=" + aptitudecount + ", overallcount=" + overallcount + "]";
	}
	
}
