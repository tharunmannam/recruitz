package com.project.demo.Student;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentEducationalRepo extends JpaRepository<StudentEducational,String>{
	public List<StudentEducational> findByStudEmail(String email);
}
