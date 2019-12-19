package com.project.Just.Meet.auth.service;

public interface SecurityService {
	String findLoggedInUsername();

	void autoLogin(String username, String password);
}