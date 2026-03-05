package com.used.cars.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.used.cars.entity.usersEntity;


@Repository
public interface usersRepo extends JpaRepository<usersEntity, Long> {
usersEntity findByUsername(String username);
}
