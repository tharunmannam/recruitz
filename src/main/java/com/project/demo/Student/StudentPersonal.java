package com.project.demo.Student;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class StudentPersonal {
	@Id
	String studEmail;
	long studId;
	String studFName;
	String studLName;
	long studPhone;
	String studLocation;
	String studPassword;
	@Lob
	@Column(columnDefinition = "MEDIUMBLOB")
	private String image;
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getStudEmail() {
		return studEmail;
	}
	public void setStudEmail(String studEmail) {
		this.studEmail = studEmail;
	}
	public long getStudId() {
		return studId;
	}
	public void setStudId(long studId) {
		this.studId = studId;
	}
	public String getStudFName() {
		return studFName;
	}
	public void setStudFName(String studFName) {
		this.studFName = studFName;
	}
	public String getStudLName() {
		return studLName;
	}
	public void setStudLName(String studLName) {
		this.studLName = studLName;
	}
	public long getStudPhone() {
		return studPhone;
	}
	public void setStudPhone(long studPhone) {
		this.studPhone = studPhone;
	}
	public String getStudLocation() {
		return studLocation;
	}
	public void setStudLocation(String studLocation) {
		this.studLocation = studLocation;
	}
	public String getStudPassword() {
		return studPassword;
	}
	public void setStudPassword(String studPassword) {
		this.studPassword = studPassword;
	}
	@Override
	public String toString() {
		return "StudentPersonal [studEmail=" + studEmail + ", studId=" + studId + ", studFName=" + studFName
				+ ", studLName=" + studLName + ", studPhone=" + studPhone + ", studLocation=" + studLocation
				+ ", studPassword=" + studPassword + ", image=" + image + "]";
	}
	
}
