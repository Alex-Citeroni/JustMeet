package com.project.just_meet.service;

import com.project.just_meet.model.Event;

public interface EventService {
	void save(Event event);

	Event findByTitle(String title);
}
