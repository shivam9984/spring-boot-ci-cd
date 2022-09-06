package com.example.dockerdemonew;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DockerdemonewApplication {
	@GetMapping("/")
	public String getString()
	{
		return " Hello world";
	}

	public static void main(String[] args) {
		SpringApplication.run(DockerdemonewApplication.class, args);
	}

}
