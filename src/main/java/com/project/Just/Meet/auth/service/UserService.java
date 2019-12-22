package com.project.Just.Meet.auth.service;

import com.project.Just.Meet.auth.model.User;

public interface UserService {
	void save(User user);

	User findByUsername(String username);
}