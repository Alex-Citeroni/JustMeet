package com.project.Just.Meet.auth.repository;

import com.project.Just.Meet.auth.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {
}