package com.project.just_meet.service;

public interface SecurityService {
	String findLoggedInUsername();

	void autoLogin(String username, String password);
}