package com.example.Assignments;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class AssignmentsApplication {

	public static void main(String[] args) {

		SpringApplication.run(AssignmentsApplication.class, args);
	}

	@GetMapping
	public String hello() {
		return "Hello, my server";
	}

}
