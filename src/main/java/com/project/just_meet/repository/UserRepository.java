package com.project.just_meet.repository;

import com.project.just_meet.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	User findByUsername(String username);
}