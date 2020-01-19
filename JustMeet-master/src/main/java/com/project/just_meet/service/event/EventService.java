package com.project.just_meet.service.event;

import java.util.List;
import com.project.just_meet.model.Event;
import com.project.just_meet.model.User;

public interface EventService {
	void save(Event event);

	void delete(Event event);

	Event findByTitle(String title);

	List<Event> findAllByCategory(String category);
	
	List<Event> findAllByUser(User user);
}
