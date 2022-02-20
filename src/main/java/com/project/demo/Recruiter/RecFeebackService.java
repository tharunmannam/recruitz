package com.project.demo.Recruiter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecFeebackService {
	
	@Autowired
	RecFeedbackRepository recfeedbackrepo;
	public void addFeedback(RecFeedback recfeedback) {
		recfeedbackrepo.save(recfeedback);
	}
	
	public List<RecFeedback> getAllRecFeedback(){
		return recfeedbackrepo.findAll();
	}
	public int sksum() {
		return recfeedbackrepo.getSkSum();
	}
	public int cpsum() {
		return recfeedbackrepo.getCpSum();
	}
	public int apsum() {
		return recfeedbackrepo.getApSum();
	}
	public int overallsum() {
		return recfeedbackrepo.getOverallSum();
	}
}	
