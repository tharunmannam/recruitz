package com.project.demo.Student;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class StudentEducationalService {
	@Autowired
	StudentEducationalRepo studrepository1;
	
	
	public void savestudeducational(StudentEducational studedu,MultipartFile file) {
		    try {
		    	String docname = file.getOriginalFilename();
		    System.out.println(docname);
		      studedu.setResumeName(docname);
		      studedu.setResumeType(file.getContentType());
		      studedu.setResume(file.getBytes());
		      //sSystem.out.println(studedu);
		      studrepository1.save(studedu);
		    }
		    catch(Exception e) {
		      e.printStackTrace();
		 }
	}
	public void insertEmail(String email) {
		StudentEducational se=new StudentEducational();
		se.setStudEmail(email);
		studrepository1.save(se);
	}
	
//	public Optional<StudentEducational> getFile(String email) {
//	    return studrepository1.findByStudEmail(email);
//	  }
//	public List<StudentEducational> getFiles(){
//	    return studrepository1.findAll();
//	  }
	public List<StudentEducational> findByEmailEdu(String email){
		return studrepository1.findByStudEmail(email);
	}
	
}
