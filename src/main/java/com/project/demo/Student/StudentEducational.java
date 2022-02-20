package com.project.demo.Student;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class StudentEducational {
	@Id
	String studEmail;
	String ugcollegename;
	String ugbranch;
	String ugcgpa;
	String ugyear;
	String sscollegename;
	String ssbranch;
	String sscgpa;
	String ssyear;
	String psschoolname;
	String psbranch;
	String pscgpa;
	String psyear;
	String skills;
	private String resumeName;
	private String resumeType;
	@Lob
	byte[] resume;
	public String getStudEmail() {
		return studEmail;
	}
	public void setStudEmail(String studEmail) {
		this.studEmail = studEmail;
	}
	public String getUgcollegename() {
		return ugcollegename;
	}
	public void setUgcollegename(String ugcollegename) {
		this.ugcollegename = ugcollegename;
	}
	public String getUgbranch() {
		return ugbranch;
	}
	public void setUgbranch(String ugbranch) {
		this.ugbranch = ugbranch;
	}
	public String getUgcgpa() {
		return ugcgpa;
	}
	public void setUgcgpa(String ugcgpa) {
		this.ugcgpa = ugcgpa;
	}
	public String getUgyear() {
		return ugyear;
	}
	public void setUgyear(String ugyear) {
		this.ugyear = ugyear;
	}
	public String getSscollegename() {
		return sscollegename;
	}
	public void setSscollegename(String sscollegename) {
		this.sscollegename = sscollegename;
	}
	public String getSsbranch() {
		return ssbranch;
	}
	public void setSsbranch(String ssbranch) {
		this.ssbranch = ssbranch;
	}
	public String getSscgpa() {
		return sscgpa;
	}
	public void setSscgpa(String sscgpa) {
		this.sscgpa = sscgpa;
	}
	public String getSsyear() {
		return ssyear;
	}
	public void setSsyear(String ssyear) {
		this.ssyear = ssyear;
	}
	public String getPsschoolname() {
		return psschoolname;
	}
	public void setPsschoolname(String psschoolname) {
		this.psschoolname = psschoolname;
	}
	public String getPsbranch() {
		return psbranch;
	}
	public void setPsbranch(String psbranch) {
		this.psbranch = psbranch;
	}
	public String getPscgpa() {
		return pscgpa;
	}
	public void setPscgpa(String pscgpa) {
		this.pscgpa = pscgpa;
	}
	public String getPsyear() {
		return psyear;
	}
	public void setPsyear(String psyear) {
		this.psyear = psyear;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getResumeName() {
		return resumeName;
	}
	public void setResumeName(String resumeName) {
		this.resumeName = resumeName;
	}
	public String getResumeType() {
		return resumeType;
	}
	public void setResumeType(String resumeType) {
		this.resumeType = resumeType;
	}
	public byte[] getResume() {
		return resume;
	}
	public void setResume(byte[] resume) {
		this.resume = resume;
	}
	@Override
	public String toString() {
		return "StudentEducational [studEmail=" + studEmail + ", ugcollegename=" + ugcollegename + ", ugbranch="
				+ ugbranch + ", ugcgpa=" + ugcgpa + ", ugyear=" + ugyear + ", sscollegename=" + sscollegename
				+ ", ssbranch=" + ssbranch + ", sscgpa=" + sscgpa + ", ssyear=" + ssyear + ", psschoolname="
				+ psschoolname + ", psbranch=" + psbranch + ", pscgpa=" + pscgpa + ", psyear=" + psyear + ", skills="
				+ skills + ", resumeName=" + resumeName + ", resumeType=" + resumeType + ", resume="
				+ Arrays.toString(resume) + "]";
	}
	
}
