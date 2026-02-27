package com.example.employee_shift_manager.Repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.example.employee_shift_manager.entity.User;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
    List<User> findByRole(String role);
}