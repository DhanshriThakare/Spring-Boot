package com.used.cars.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.used.cars.entity.usedCar;
import com.used.cars.repository.carRepo;

@Service
public class carServices {
	@Autowired 
	private carRepo carrepo;
	
	public List<usedCar> getcar()// show all car for db
	{
		return carrepo.findAll();
	}

	public String addNewCar(usedCar C) //save that add car into db
	{
		carrepo.save(C);
		return"sucess";
	}
	
	public usedCar getCarById(Integer id) //find car on basis of id
	{
		 return  carrepo.findById(id).orElse(null);
	    
	}
	
	public usedCar updateCar(usedCar car) //update filed
	{

        usedCar existingCar = carrepo.findById(car.getId())
                .orElseThrow(() -> new RuntimeException("Car Not Found"));

        existingCar.setTitle(car.getTitle());
        existingCar.setBrand(car.getBrand());
        existingCar.setModel(car.getModel());
        existingCar.setYear(car.getYear());
        existingCar.setPrice(car.getPrice());
        existingCar.setMileage(car.getMileage());
        existingCar.setFuel_type(car.getFuel_type());
        existingCar.setTransmission(car.getTransmission());
        existingCar.setEngine_size(car.getEngine_size());
        existingCar.setColor(car.getColor());
        existingCar.setCar_condition(car.getCar_condition());
        existingCar.setDescription(car.getDescription());
        existingCar.setSeller_name(car.getSeller_name());
        existingCar.setSeller_phone(car.getSeller_phone());
        existingCar.setLocation(car.getLocation());

        return carrepo.save(existingCar);
    }
	
	public void deleteCar(Integer id) //delete car base on id
	{
	    carrepo.deleteById(id);
	}
}

