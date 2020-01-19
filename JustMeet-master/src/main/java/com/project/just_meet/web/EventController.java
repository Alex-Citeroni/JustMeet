package com.project.just_meet.web;

import com.project.just_meet.model.Event;
import com.project.just_meet.service.event.EventService;
import com.project.just_meet.validator.EventValidator;

import java.util.List;

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

		return "redirect:/myEvents";
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
	public String eventsList(Model model) {
		List<Event> sportList = eventService.findAllByCategory("Sport");
		List<Event> istrList = eventService.findAllByCategory("Istruzione");
		List<Event> giochiList = eventService.findAllByCategory("Giochi");
		model.addAttribute("sportList", sportList);
		model.addAttribute("istrList", istrList);
		model.addAttribute("giochiList", giochiList);
	    return "/events";
	}

	@GetMapping("/myEvents")
	public String myEvents(Model model) {
		List<Event> list = eventService.findAllByUser(user);
		model.addAttribute("list", list);
		return "/myEvents";
	}
}