package com.project.just_meet.web;

import com.project.just_meet.model.Event;
import com.project.just_meet.service.event.EventService;
import com.project.just_meet.validator.EventValidator;

import javax.transaction.Transactional;

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

		return "redirect:/myEvents?username=" + eventForm.getUsername();
	}


	@GetMapping("/events")
	public String eventsList(Model model) {
		model.addAttribute("sportList", eventService.findAllByCategory("Sport"));
		model.addAttribute("istrList", eventService.findAllByCategory("Istruzione"));
		model.addAttribute("giochiList", eventService.findAllByCategory("Giochi"));
		model.addAttribute("altroList", eventService.findAllByCategory("Altro"));
		model.addAttribute("allList", eventService.findAll());
		System.out.println(eventService.findAll());
		return "/events";
	}

	@GetMapping("/myEvents")
	public String findMyEvents(Model model, @RequestParam String username) {
		model.addAttribute("list", eventService.findAllByUsername(username));

		return "/myEvents";
	}
	
	@GetMapping("/event")
	public String getEvent(Model model, @RequestParam long id) {
		model.addAttribute("id", new Event());
		model.addAttribute("event", eventService.findById(id));

		return "event";
	}
	
	@Transactional 
	@PostMapping("/event")
	public String deleteEvent(@ModelAttribute("id") long id, BindingResult bindingResult) {
		if (bindingResult.hasErrors())
			return "event";
		Event event=eventService.findById(id);
		eventService.deleteById(id);

		return "redirect:/myEvents?username=" + event.getUsername();
	}
}