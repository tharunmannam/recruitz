package com.project.demo.Student;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.project.demo.Student.*;


@Service
public class StudentService {
	@Autowired
	StudentRepository studrepository;
	
	@Autowired
	StudentEducationalRepo studentEducationalRepo;
	
	@Autowired
	StudentStatusRepository studstatusrepo;
	
	
	public void registerstudent(StudentPersonal stud) {
		studrepository.save(stud);
	}
	
	public List<StudentPersonal> getAllStudents()
	{
		return studrepository.findAll();
	}
	
	public int deleteByEmail(String email){
		return studrepository.deleteStudent(email);
	}
	
	public boolean loginstudent(StudentPersonal student) {
		List<StudentPersonal> std= studrepository.findByStudEmailAndStudPassword(student.getStudEmail(),student.getStudPassword());
		return !std.isEmpty();
	}
	
	public void savestudpersonal(StudentPersonal studentpersonal,MultipartFile file) {
		
		String fileName = StringUtils.cleanPath(file.getOriginalFilename());
		if(fileName.contains(".."))
		{
			System.out.println("not a a valid file");
		}
		try {
			studentpersonal.setImage(Base64.getEncoder().encodeToString(file.getBytes()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		studrepository.save(studentpersonal);
	}
	
	public List<StudentPersonal> findByEmail(String email)
	{
		return studrepository.findByStudEmail(email);
	}
	
	public List<JobIdentity> getAllStatus()
	{
		 List<StudentStatus> ss=studstatusrepo.findAll();
		 List<JobIdentity> temp=new ArrayList<JobIdentity>();
		 for(StudentStatus st: ss) {
			 temp.add(st.getId());
		 }
		 return temp;
	}
	public void applyJob(String id,String email){
		studstatusrepo.save(new StudentStatus(new JobIdentity(email,id)));
	}
	
	public void deleteByEmailAndJobId(String email,String id) {
		studstatusrepo.deleteStudentStatus(email,id);
	}
	
	public List<StudentPersonal> getByStudentId(long id)
	{
		return studrepository.findByStudId(id);
	}
	
	public void updatestudpersonal(StudentPersonal studper) {
		studrepository.updateStudPersonal(studper.getStudId(),studper.getStudPassword(),studper.getStudEmail());
	}
	
	public List<JobIdentity> getAllStudentStatus()
	{
		List<StudentStatus> ss=studstatusrepo.findAll();
		 List<JobIdentity> temp=new ArrayList<JobIdentity>();
		 for(StudentStatus st: ss) {
			 temp.add(st.getId());
		 }
		 return temp;
	}
	public List<StudentEducational> getAllStudentEducational()
	{
		return  studentEducationalRepo.findAll();
	}
	

}
