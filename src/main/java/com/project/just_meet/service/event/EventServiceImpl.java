package com.project.just_meet.service.event;

import com.project.just_meet.model.Event;
import com.project.just_meet.repository.EventRepository;

import java.util.List;

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

	@Override
	public List<Event> findAllByCategory(String category) {
		return eventRepository.findAllByCategory(category);
	}

	@Override
	public List<Event> findAllByUsername(String username) {
		return  eventRepository.findAllByUsername(username);
	}
	
	@Override
	public List<Event> findAll(){
		return eventRepository.findAll();
	}
}