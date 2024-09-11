package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class HelloController {

	//index.jsp의 기본주소 : "/"
	
	//Model을 사용해서 데이터 전달
	@GetMapping("/api/hello")
	public String getHello(Model model) {
		model.addAttribute("msg", "컨트롤러에서 데이터를 전달");
		return "hello";
	}
	
	@GetMapping("/api/food")
	public String getFoods() {
		return "forTokens";
	}
	
	@GetMapping("/api/remove")
	public String getRemove() {
		return "remove";
	}
	
	@GetMapping("/api/catch")
	public String getCatch() {
		return "catch";
	}
	
}
