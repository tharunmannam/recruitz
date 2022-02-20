package com.project.demo.Student;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;


@Entity
public class StudentStatus {
	 
	@EmbeddedId
	JobIdentity id;
	public StudentStatus() {
		super();
	}

	public StudentStatus(JobIdentity id) {
		super();
		this.id = id;
	}

	public JobIdentity getId() {
		return id;
	}

	public void setId(JobIdentity id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "StudentStatus [id=" + id + "]";
	}
	
	
}
