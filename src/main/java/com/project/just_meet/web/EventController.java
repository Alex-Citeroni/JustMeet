package com.project.just_meet.web;

import com.project.just_meet.model.Event;
import com.project.just_meet.service.event.EventService;
import com.project.just_meet.validator.EventValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
public class EventController {
	@Autowired
	private EventService eventService;

	@Autowired
	private EventValidator eventValidator;

	@GetMapping("/eventCreation")
	public String eventCreation(Model model) {
		model.addAttribute("eventForm", new Event());
		
		return "eventCreation";
	}

	@PostMapping("/eventCreation")
	public String eventCreation(@ModelAttribute("eventForm") Event eventForm, BindingResult bindingResult) {
		eventValidator.validate(eventForm, bindingResult);
		
		if (bindingResult.hasErrors())
			return "eventCreation";
		
		eventService.save(eventForm);
		
		return "redirect:/events";
	}

	@GetMapping("/event")
	public String event(Model model, String error, String delete) {
		if (error != null)
			model.addAttribute("error", "There was an error creating the event");
		
		if (delete != null)
			model.addAttribute("message", "You have been deleted event successfully");
		
		return "event";
	}

	@GetMapping("/events")
	public String events(Model model) {
		return "events";
	}
}