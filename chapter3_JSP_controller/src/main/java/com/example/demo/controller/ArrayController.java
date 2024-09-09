package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ArrayController {

	@GetMapping("/array")
	public String getArrayEx() {
		return "arrayEx";
	}
}
