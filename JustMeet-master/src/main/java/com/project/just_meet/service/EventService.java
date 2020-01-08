package com.project.just_meet.service;

import com.project.just_meet.model.Event;

public interface EventService {
	void insertEvent(Event event);

	void deleteEventById(int id);

	Event findByTitle(String title);
}
