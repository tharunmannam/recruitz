package com.project.demo.Recruiter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class AddJob {
	@Id
	String recEmail;
	String jobId;
	String companyName;
	String jobRole;
	String jobDesc;
	String loc;
	String ctc;
	String skills;
	String regDeadline;
	String driveStart;
	String driveEnd;
	@Lob
	@Column(columnDefinition = "MEDIUMBLOB")
	String comLogo;
	public String getRecEmail() {
		return recEmail;
	}
	public void setRecEmail(String recEmail) {
		this.recEmail = recEmail;
	}
	public String getJobId() {
		return jobId;
	}
	public void setJobId(String jobId) {
		this.jobId = jobId;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getJobRole() {
		return jobRole;
	}
	public void setJobRole(String jobRole) {
		this.jobRole = jobRole;
	}
	public String getJobDesc() {
		return jobDesc;
	}
	public void setJobDesc(String jobDesc) {
		this.jobDesc = jobDesc;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public String getCtc() {
		return ctc;
	}
	public void setCtc(String ctc) {
		this.ctc = ctc;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getRegDeadline() {
		return regDeadline;
	}
	public void setRegDeadline(String regDeadline) {
		this.regDeadline = regDeadline;
	}
	public String getDriveStart() {
		return driveStart;
	}
	public void setDriveStart(String driveStart) {
		this.driveStart = driveStart;
	}
	public String getDriveEnd() {
		return driveEnd;
	}
	public void setDriveEnd(String driveEnd) {
		this.driveEnd = driveEnd;
	}
	public String getComLogo() {
		return comLogo;
	}
	public void setComLogo(String comLogo) {
		this.comLogo = comLogo;
	}
	@Override
	public String toString() {
		return "AddJob [recEmail=" + recEmail + ", jobId=" + jobId + ", companyName=" + companyName + ", jobRole="
				+ jobRole + ", jobDesc=" + jobDesc + ", loc=" + loc + ", ctc=" + ctc + ", skills=" + skills
				+ ", regDeadline=" + regDeadline + ", driveStart=" + driveStart + ", driveEnd=" + driveEnd
				+ ", comLogo=" + comLogo + "]";
	}
	
}
