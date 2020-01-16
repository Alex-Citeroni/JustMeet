package com.project.just_meet.web;

import com.project.just_meet.model.Event;
import com.project.just_meet.service.event.EventService;
import com.project.just_meet.validator.EventValidator;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView eventsList() {
		List<Event> list = eventService.findAllByCategory("Sport");
		List<String> eventsList = new ArrayList<String>();
		eventsList.add(list.get(0).getTitle());
		ModelAndView map = new ModelAndView("events");
		map.addObject("eventsList", eventsList);
		return map;
	}

	@GetMapping("/myEvents")
	public void myEvents(@ModelAttribute("searchForm") String searchForm, BindingResult bindingResult) {
	}
}