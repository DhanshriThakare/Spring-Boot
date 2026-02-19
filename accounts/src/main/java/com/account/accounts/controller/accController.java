package com.account.accounts.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.account.accounts.Entity.Account;
import com.account.accounts.service.accservice;
//BackEnd GET Type of  API u can call this by URL = http://localhost:8080/bank/api/all 
@RestController
@RequestMapping("/bank/api")
public class accController {
	@Autowired
	private accservice accountservice;
	@CrossOrigin(origins="*")
	@GetMapping("/all")
	public List<Account>getAll(){
		return accountservice.getAllAccount();
	}
	

}
