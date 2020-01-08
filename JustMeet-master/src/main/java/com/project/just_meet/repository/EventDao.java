package com.project.just_meet.repository;

import com.project.just_meet.model.Event;

public interface EventDao {
	void insertEvent(Event evento);
	
	void deleteEventById(int Id);
	
	Event findByTitle(String title);
}