package com.used.cars.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.used.cars.entity.Admin;
import com.used.cars.repository.adminRepo;

@Service
public class adminService {
	@Autowired
	private adminRepo adminrepo;
	
	public Admin login(String name, String password){

	    Admin admin = adminrepo.findByName(name);

	    if(admin != null && admin.getPassword().equals(password)){
	        return admin;
	    }

	    return null;
	}

}
