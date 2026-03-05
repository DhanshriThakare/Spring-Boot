package com.used.cars.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.used.cars.entity.usersEntity;
import com.used.cars.services.usersServices;

@Controller
public class userControlller {
	@Autowired
	private usersServices usersservices;
	@GetMapping("/")
	public String loginpg() {
		return "index.jsp";
	}
	@PostMapping("/home")
	public String login(@RequestParam String username,
	                    @RequestParam String password){

	    usersEntity user = usersservices.login(username, password);

	    if(user != null){
	        return "home.jsp";   
	    }

	    return "reg.jsp";   
	}

}
