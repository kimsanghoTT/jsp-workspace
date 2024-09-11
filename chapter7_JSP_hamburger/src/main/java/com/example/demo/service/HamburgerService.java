package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Hamburger;
import com.example.demo.repository.HamburgerRepository;

@Service
public class HamburgerService {

	@Autowired
	private HamburgerRepository hamburgerRepository;
	
	public void addBurger(Hamburger burger) {
		hamburgerRepository.save(burger);
	}
	
	public List<Hamburger> getAllBurgers(){
		return hamburgerRepository.findAll();
	}
}
