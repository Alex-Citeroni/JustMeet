package com.project.just_meet.service.event;

import com.project.just_meet.model.Event;

public interface EventService {
	void save(Event event);
	
	void delete(Event event);

	Event findByTitle(String title);
}
