package com.project.just_meet.service;

import com.project.just_meet.model.Role;
import com.project.just_meet.model.User;

public interface RoleService {
	void save(Role role);

	void delete(Role role);

	Role admin(User user);

	Role manager(User user);

	Role company(User user);
}