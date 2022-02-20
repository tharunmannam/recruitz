package com.project.demo.Student;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentStatusRepository extends JpaRepository<StudentStatus,JobIdentity>{
	
	@Modifying
	@Transactional
	@Query(value = "delete from student_status where stud_email=?1 and jid=?2",nativeQuery = true)
	int deleteStudentStatus(String email,String id);
}
