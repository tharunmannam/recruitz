package com.project.demo.Student;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


@Repository
public interface StudentRepository extends JpaRepository<StudentPersonal,String>{
	
	public List<StudentPersonal> findByStudEmailAndStudPassword(String studEmail, String studPassword);

	@Modifying
	@Transactional
	@Query(value = "delete from student_personal where stud_email=?1",nativeQuery = true)
	int deleteStudent(String email);
	
	public List<StudentPersonal> findByStudEmail(String studEmail);
	
	public List<StudentPersonal> findByStudId(long id);
	
	@Modifying
	@Transactional
	@Query(value = "update student_personal set stud_id=?1 ,stud_password=?2 where stud_email=?3",nativeQuery = true)
	int updateStudPersonal(long id,String password,String email);
	
}
