package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.JSPUser;
import com.example.demo.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	public void addUser(JSPUser user) {
		userRepository.save(user);
	}
	
	public List<JSPUser> getAllUsers(){
		return userRepository.findAll();
	}
}
