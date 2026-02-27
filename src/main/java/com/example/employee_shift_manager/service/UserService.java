package com.example.employee_shift_manager.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.employee_shift_manager.Repository.UserRepository;
import com.example.employee_shift_manager.entity.User;

@Service
public class UserService {

    @Autowired
    private UserRepository repo;

    public User register(User user){
        return repo.save(user);
    }

    public User login(String email, String password){
        User user = repo.findByEmail(email);
        if(user != null && user.getPassword().equals(password)){
            return user;
        }
        return null;
    }

    public List<User> getEmployees(){
        return repo.findByRole("EMPLOYEE");
    }

    public User getById(Long userId) {
        return repo.findById(userId).orElse(null);
    }
}