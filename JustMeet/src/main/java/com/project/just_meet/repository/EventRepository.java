package com.project.just_meet.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.project.just_meet.model.Event;

@Repository
public interface EventRepository extends JpaRepository<Event, Long> {
	Event findByTitle(String title);

	List<Event> findAllByCategory(String category);

	List<Event> findAllByUsername(String username);

	void deleteByUsername(String username);

	Event findById(long id);
	
}