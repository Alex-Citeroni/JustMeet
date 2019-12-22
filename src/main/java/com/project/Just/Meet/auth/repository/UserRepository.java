package com.project.Just.Meet.auth.repository;

import com.project.Just.Meet.auth.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
	User findByUsername(String username);
}