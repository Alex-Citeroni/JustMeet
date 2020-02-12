package com.project.just_meet.web;

import com.project.just_meet.model.Event;
import com.project.just_meet.model.User;
import com.project.just_meet.service.event.EventService;
import com.project.just_meet.service.user.UserService;
import com.project.just_meet.validator.EventValidator;

import java.security.Principal;
import java.util.HashSet;
import java.util.Set;

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
	private UserService userService;

	@Autowired
	private EventValidator eventValidator;

	@GetMapping("/eventCreation")
	public String eventCreation(Model model) {
		model.addAttribute("eventForm", new Event());

		return "eventCreation";
	}

	@PostMapping("/eventCreation")
	public String eventCreation(@ModelAttribute("eventForm") Event eventForm, Principal user,
			BindingResult bindingResult) {
		eventValidator.validate(eventForm, bindingResult);

		if (bindingResult.hasErrors())
			return "eventCreation";

		User u = userService.findByUsername(user.getName());
		
		eventForm.getUsers().add(u);
		u.getEvents().add(eventForm);
		eventService.save(eventForm);

		return "redirect:/myEvents";
	}

	@GetMapping("/events")
	public String eventsList(Model model) {
		model.addAttribute("sportList", eventService.findAllByCategory("Sport"));
		model.addAttribute("istrList", eventService.findAllByCategory("Istruzione"));
		model.addAttribute("giochiList", eventService.findAllByCategory("Giochi"));
		model.addAttribute("altroList", eventService.findAllByCategory("Altro"));
		model.addAttribute("allList", eventService.findAll());

		return "/events";
	}

	@GetMapping("/myEvents")
	public String myEvents(Model model, Principal user) {
		model.addAttribute("list", eventService.findAllByUsername(user.getName()));
		model.addAttribute("id", new Event());
		
		return "/myEvents";
	}

	@Transactional
	@PostMapping("/myEvents")
	public String deleteEvent(@ModelAttribute("id") long id, BindingResult bindingResult) {
		if (bindingResult.hasErrors())
			return "/myEvents";

		Event event = eventService.findById(id);

		for (User u : event.getUsers()) {
			u.getEvents().remove(event);
			userService.update(u);
		}

		eventService.deleteById(id);

		return "/myEvents";
	}

	@GetMapping("/updateEvent")
	public String updateEvent(Model model, @RequestParam long id) {
		model.addAttribute("event", eventService.findById(id));

		return "/updateEvent";
	}

	@PostMapping("/updateEvent")
	public String updateEvent(@ModelAttribute("event") Event event) {
		eventService.save(event);

		return "redirect:/event?id=" + event.getId();
	}

	@GetMapping("/event")
	public String getEvent(Model model, @RequestParam long id) {
		model.addAttribute("event", eventService.findById(id));
		model.addAttribute("id", new Event());

		return "event";
	}

	@PostMapping("/event")
	public String addParticipation(@ModelAttribute("id") long id, Principal user, BindingResult bindingResult) {
		User u = userService.findByUsername(user.getName());
		Event e = eventService.findById(id);
		
		e.getUsers().add(u);
		u.getEvents().add(e);
		
		eventService.save(e);
		userService.update(u);

		return "redirect:/participations";
	}

	@GetMapping("participations")
	public String partecipations(Model model, Principal user) {
		Set<Event> events = userService.findByUsername(user.getName()).getEvents();
		Set<Event> myEvents = new HashSet<Event>();

		for (Event e : events)
			if (e.getUsername().equals(user.getName()))
				myEvents.add(e);

		events.removeAll(myEvents);
		
		model.addAttribute("participations", events);
		
		return "/participations";
	}
}