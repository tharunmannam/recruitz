package com.project.demo.Recruiter;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface RecFeedbackRepository extends JpaRepository<RecFeedback,String>{
	
	@Query(value = "select sum(rf.skcount) from RecFeedback rf")
	int getSkSum();
	
	
	@Query(value = "select sum(rf.cpcount) from RecFeedback rf")
	int getCpSum();
	
	
	@Query(value = "select sum(rf.aptitudecount) from RecFeedback rf")
	int getApSum();
	
	@Query(value = "select sum(rf.overallcount) from RecFeedback rf")
	int getOverallSum();
}
