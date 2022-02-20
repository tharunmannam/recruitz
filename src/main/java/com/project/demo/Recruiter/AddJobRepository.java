package com.project.demo.Recruiter;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface AddJobRepository extends JpaRepository<AddJob,String>{
	public List<AddJob> findByJobId(String id);
	
	@Modifying
	@Transactional
	@Query(value = "delete from add_job where job_id=?1",nativeQuery = true)
	int deleteByJobId(String id);
}
