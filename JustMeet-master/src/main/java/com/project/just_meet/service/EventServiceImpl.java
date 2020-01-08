package com.project.just_meet.service;

import com.project.just_meet.model.Event;
import com.project.just_meet.repository.EventDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	EventDao eventDao;

	@Override
	@Transactional
	public void insertEvent(Event event) {
		eventDao.insertEvent(event);
	}

	@Override
	@Transactional
	public void deleteEventById(int id) {
		eventDao.deleteEventById(id);
	}

	@Override
	@Transactional
	public Event findByTitle(String title) {
		return eventDao.findByTitle(title);
	}

}
