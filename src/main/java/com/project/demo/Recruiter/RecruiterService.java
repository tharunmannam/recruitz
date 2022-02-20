package com.project.demo.Recruiter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;





@Service
public class RecruiterService {
	@Autowired
	RecruiterRepository recrepository;
	public void registerrecruiter(Recruiter rec) {
		recrepository.save(rec);
	}
	
	public boolean loginrecruiter(Recruiter rec) {
		List<Recruiter> std= recrepository.findByRecEmailAndPassword(rec.getRecEmail(),rec.getPassword());
		return !std.isEmpty();
	}
	
	public List<Recruiter> getAllRecruiters()
	{
		return recrepository.findAll();
	}
	
	
	
	public List<Recruiter> getByRecruiterEmail(String email)
	{
		return recrepository.findByRecEmail(email);
	}
	
	public void updaterecruiter(Recruiter recruiter) {
		recrepository.updateRecruiter(recruiter.getComName(),recruiter.getRecName(),recruiter.getPassword(),recruiter.getRecEmail());
	}
	public void deleteByRecEmail(String email){
		recrepository.deleteRecruiter(email);
	}
	
}

