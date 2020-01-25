package com.project.just_meet.web;

import com.project.just_meet.model.User;
import com.project.just_meet.service.SecurityService;
import com.project.just_meet.service.event.EventService;
import com.project.just_meet.service.user.UserService;
import com.project.just_meet.validator.UserValidator;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@Autowired
	private SecurityService securityService;

	@Autowired
	private UserValidator userValidator;
	
	@Autowired
	private EventService eventService;
	

	@GetMapping("/registration")
	public String registration(Model model) {
		model.addAttribute("userForm", new User());

		return "registration";
	}

	@PostMapping("/registration")
	public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
		userValidator.validate(userForm, bindingResult);

		if (bindingResult.hasErrors())
			return "registration";

		userService.save(userForm);

		securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

		return "redirect:/home";
	}

	@GetMapping("/login")
	public String login(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("error", "Your username and password is invalid.");

		if (logout != null)
			model.addAttribute("message", "You have been logged out successfully.");

		return "login";
	}

	@GetMapping({ "/", "/home" })
	public String home(Model model) {
		return "home";
	}

	@GetMapping("/account")
	public String account(Model model) {
		model.addAttribute("username", new User());
		
		return "account";
	}

	@Transactional 
	@PostMapping("/account")
	public String account(@ModelAttribute("username") String username, BindingResult bindingResult) {
		if (bindingResult.hasErrors())
			return "account";
		
		eventService.deleteByUsername(username);
		userService.deleteByUsername(username);

		return "redirect:/login";
	}
}