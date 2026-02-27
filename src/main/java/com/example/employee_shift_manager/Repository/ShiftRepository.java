package com.example.employee_shift_manager.Repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.example.employee_shift_manager.entity.Shift;
import com.example.employee_shift_manager.entity.User;

import java.util.List;

public interface ShiftRepository extends JpaRepository<Shift, Long> {
    List<Shift> findByUser(User user);
}