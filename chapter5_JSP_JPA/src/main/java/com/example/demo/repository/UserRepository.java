package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.JSPUser;

public interface UserRepository extends JpaRepository<JSPUser, Integer>{

}
