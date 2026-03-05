package com.used.cars.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.used.cars.entity.Admin;

@Repository
public interface adminRepo extends JpaRepository<Admin, Integer> {
	Admin findByName(String Name);

}
