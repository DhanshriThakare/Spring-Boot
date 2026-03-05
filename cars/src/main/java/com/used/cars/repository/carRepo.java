package com.used.cars.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.used.cars.entity.usedCar;
@Repository
public interface carRepo extends JpaRepository<usedCar, Integer> {

}
