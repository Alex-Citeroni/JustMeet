package com.project.just_meet.service.user;

import com.project.just_meet.model.User;

public interface UserService {
	void save(User user);
	
	void delete(long id);

	User findByUsername(String username);
}