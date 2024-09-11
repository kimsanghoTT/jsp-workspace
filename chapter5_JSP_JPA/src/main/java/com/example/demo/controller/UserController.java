package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.example.demo.entity.JSPUser;
import com.example.demo.service.UserService;


@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	@PostMapping("/addUser")
	public String addUser(JSPUser user) {
		userService.addUser(user);
		return "redirect:/users";
	}
	
	@GetMapping("/users")
	public String getAllUsers(Model model) {
		List<JSPUser> users= userService.getAllUsers();
		model.addAttribute("users", users);
		return "user"; //jsp 파일 이름
	}
	
}
