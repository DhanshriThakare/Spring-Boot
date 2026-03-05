package com.used.cars.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.used.cars.entity.Admin;
import com.used.cars.services.adminService;

@Controller
public class adminController {
	@Autowired
	private adminService adminservice;
	@GetMapping("/admin")
	public String adminlogin() {
		return"admin.jsp";
	}
	
	@PostMapping("/adminpg")
	public String adminLogin(@RequestParam String name,
	                         @RequestParam String password){
		System.out.println(name + " " + password);

	    Admin admin = adminservice.login(name, password);

	    if(admin != null){
	        return "dashboard.jsp";   
	    }

	    return "reg.jsp";   
	}

}
