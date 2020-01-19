package com.project.just_meet.service.user;

import com.project.just_meet.model.User;

public interface UserService {
	void save(User user);
	
	void delete(User user);

	User findByUsername(String username);
}