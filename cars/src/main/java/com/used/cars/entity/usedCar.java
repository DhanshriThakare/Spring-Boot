package com.used.cars.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="used_cars")
public class usedCar {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
	@Column(nullable=false)
	private String title;
	@Column(nullable=false)
	private String brand ;
	@Column(nullable=false)
    private String model ;
	@Column(nullable=false)
    private Integer year ;
	@Column(nullable=false)
    private float price;
	@Column(nullable=false)
    private String mileage ;
	@Column(nullable=false)
    private String fuel_type;
	@Column(nullable=false)
    private String transmission ;
	@Column(nullable=false)
    private String engine_size  ;
	@Column(nullable=false)
    private String color;
	@Column(nullable=false)
    private String car_condition ;
	@Column(nullable=false)
    private String  description ;
	@Column(nullable=false)
    private String seller_name;
	@Column(nullable=false)
    private String seller_phone ;
	@Column(nullable=false)
    private String  location;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public Integer getYear() {
		return year;
	}
	public void setYear(Integer year) {
		this.year = year;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getMileage() {
		return mileage;
	}
	public void setMileage(String mileage) {
		this.mileage = mileage;
	}
	public String getFuel_type() {
		return fuel_type;
	}
	public void setFuel_type(String fuel_type) {
		this.fuel_type = fuel_type;
	}
	public String getTransmission() {
		return transmission;
	}
	public void setTransmission(String transmission) {
		this.transmission = transmission;
	}
	public String getEngine_size() {
		return engine_size;
	}
	public void setEngine_size(String engine_size) {
		this.engine_size = engine_size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getCar_condition() {
		return car_condition;
	}
	public void setCar_condition(String car_condition) {
		this.car_condition = car_condition;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getSeller_name() {
		return seller_name;
	}
	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}
	public String getSeller_phone() {
		return seller_phone;
	}
	public void setSeller_phone(String seller_phone) {
		this.seller_phone = seller_phone;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
}
