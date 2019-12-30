package com.project.just_meet.service;

import com.project.just_meet.model.User;

public interface UserService {
	void save(User user);

	User findByUsername(String username);
}