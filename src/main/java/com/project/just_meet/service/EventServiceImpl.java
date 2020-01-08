package com.project.just_meet.service;

import com.project.just_meet.model.Event;
import com.project.just_meet.repository.EventRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EventServiceImpl implements EventService {
	@Autowired
	private EventRepository eventRepository;

	@Override
	public void save(Event event) {
		eventRepository.save(event);
	}

	@Override
	public void delete(Event event) {
		eventRepository.delete(event);
	}

	@Override
	public Event findByTitle(String title) {
		return eventRepository.findByTitle(title);
	}
}