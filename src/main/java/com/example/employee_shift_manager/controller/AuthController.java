package com.example.employee_shift_manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.employee_shift_manager.entity.User;
import com.example.employee_shift_manager.service.UserService;

import jakarta.servlet.http.HttpSession;


@Controller
public class AuthController {

    @Autowired
    private UserService service;

    @GetMapping("/")
    public String home(){
        return "login";
    }

    @GetMapping("/login")
    public String loginPage(){
        return "login";
    }

    @GetMapping("/register")
    public String registerPage(){
        return "register";
    }

    @PostMapping("/register")
    public String register(User user){
        service.register(user);
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String email,
                        @RequestParam String password,
                        HttpSession session){

        User user = service.login(email,password);

        if(user != null){
            session.setAttribute("user", user);
            return "dashboard";
        }

        return "login";
    }

    @GetMapping("/dashboard")
    public String dashboard(){
        return "dashboard";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "login";
    }
}