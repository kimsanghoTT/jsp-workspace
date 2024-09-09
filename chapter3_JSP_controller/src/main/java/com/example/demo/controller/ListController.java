package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
class ListController {

	@GetMapping("/list")
	public String getListJsp() {
		//.jsp로 끝나느 파일 중에 가져오길 원하는 파일명 작성
		return "listExample";
	}
}
