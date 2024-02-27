package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
	
	@GetMapping("/hello/{name}")
	public String get(@PathVariable("name") String name) {
		return String.format("<h1>Hello %s Welcome to DevOps World!</h1>", name);
	}

}
