package com.project.just_meet.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.project.just_meet.exception.ApiRequestException;

@Controller
public class ErrorController {
	@GetMapping("/error")
	public String error() {
		return "/error";
	}

	@PostMapping("/error")
	public String errore() {
		throw new ApiRequestException("Errore");
	}
}