package com.project.just_meet.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.project.just_meet.model.Event;

public interface EventRepository extends JpaRepository<Event, Long> {
	Event findByTitle(String title);

	List<Event> findAllByCategory(String category);
}