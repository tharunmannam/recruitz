package com.project.demo.Recruiter;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


@Repository
public interface RecruiterRepository extends JpaRepository<Recruiter,String>{
	public List<Recruiter> findByRecEmailAndPassword(String recEmail, String recPassword);
	
	public List<Recruiter> findByRecEmail(String email);
	
	@Modifying
	@Transactional
	@Query(value = "update recruiter set com_name=?1 ,rec_name=?2,password=?3 where rec_email=?4",nativeQuery = true)
	int updateRecruiter(String comName,String recName,String password,String recEmail);
	
	@Modifying
	@Transactional
	@Query(value = "delete from recruiter where rec_email=?1",nativeQuery = true)
	int deleteRecruiter(String email);
}
