package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.entity.Hamburger;
import com.example.demo.service.HamburgerService;

@Controller
public class HamburgerController {

	@Autowired
	private HamburgerService hamburgerService;
	
	@PostMapping("/addBurger")
	public String addBurger(Hamburger burger) {
		hamburgerService.addBurger(burger);
		return "redirect:/burgers";
	}
	
	@GetMapping("/burgers")
	public String getAllBurgers(Model model) {
		List<Hamburger> burgers = hamburgerService.getAllBurgers();
		model.addAttribute("burgers", burgers);
		return "hamburgerList";
	}
}
