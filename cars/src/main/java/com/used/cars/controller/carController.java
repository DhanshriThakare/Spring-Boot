package com.used.cars.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.used.cars.entity.usedCar;
import com.used.cars.services.carServices;



@Controller
public class carController {

    @Autowired
    private carServices carservice;

    @GetMapping("/view") //show all car
    public String home(Model model){

        System.out.println("Controller method executed");

        List<usedCar> list = carservice.getcar();

        System.out.println(list);

        model.addAttribute("cars", list);

        return "viewCars.jsp";
    }
    
    @PostMapping("/saveCar") // it save new car 
    public String saveCars(usedCar c) {
    	carservice.addNewCar(c);
    	return"saveCar.jsp";
    }
    
    @PostMapping("/editCar") // if u want to update it will update that
    public String editCar(@RequestParam Integer id, Model model){

        usedCar car = carservice.getCarById(id);

        if(car != null){
            model.addAttribute("car", car);
            return "editCar.jsp";   
        }

        return "notFound.jsp";  
    }
    
    @PostMapping("/updateCar") // save update car 
    public String updateCar(usedCar car){

        carservice.updateCar(car);

        return "updateDone.jsp";
    }
    
    @PostMapping("/deleteCar") // for delete car
    public String deleteCar(@RequestParam Integer id){

        carservice.deleteCar(id);

        return "recoDelete.jsp";
    }
}