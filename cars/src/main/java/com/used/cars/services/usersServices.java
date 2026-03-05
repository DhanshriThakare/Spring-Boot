package com.used.cars.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.used.cars.entity.usersEntity;
import com.used.cars.repository.usersRepo;
@Service
public class usersServices {

    @Autowired
    private usersRepo usersrepo;
    
    public usersEntity login(String username, String password){

        usersEntity user = usersrepo.findByUsername(username);

        if(user != null && user.getPassword().equals(password)){
            return user;   
        }
        

        return null; 
    }
}