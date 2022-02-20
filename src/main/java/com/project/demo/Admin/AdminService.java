package com.project.demo.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class AdminService {
	@Autowired
	AdminRepository adminrepository;
	
	public boolean loginadmin(Admin admin) {
		List<Admin> std= adminrepository.findByEmailAndPassword(admin.getEmail(),admin.getPassword());
		return !std.isEmpty();
	}
}
