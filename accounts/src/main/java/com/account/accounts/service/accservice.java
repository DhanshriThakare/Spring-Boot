package com.account.accounts.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.account.accounts.Entity.Account;
import com.account.accounts.repository.accRepo;

@Service 

public class accservice {
	@Autowired
private accRepo accountRepo;
	public List<Account>getAllAccount(){
		return accountRepo.findAll();
	}
}
