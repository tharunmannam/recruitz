package com.project.demo.Admin;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminRepository extends JpaRepository<Admin,String>{
	public List<Admin> findByEmailAndPassword(String email,String password);
}
