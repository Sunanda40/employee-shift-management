package com.example.employee_shift_manager.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.example.employee_shift_manager.entity.Shift;
import com.example.employee_shift_manager.entity.User;
import com.example.employee_shift_manager.service.ShiftService;
import com.example.employee_shift_manager.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ShiftController {

    @Autowired
    private ShiftService shiftService;

    @Autowired
    private UserService userService;

    @GetMapping("/createShift")
    public String createShiftPage(Model model){
        model.addAttribute("employees", userService.getEmployees());
        return "createShift";
    }

    @PostMapping("/saveShift")
    public String saveShift(@RequestParam Long userId,
                            @RequestParam String shiftDate,
                            @RequestParam String startTime,
                            @RequestParam String endTime){

        User user = userService.getById(userId); // better method

        Shift shift = new Shift();
        shift.setUser(user);
        shift.setShiftDate(java.time.LocalDate.parse(shiftDate));
        shift.setStartTime(java.time.LocalTime.parse(startTime));
        shift.setEndTime(java.time.LocalTime.parse(endTime));

        shiftService.saveShift(shift);

        return "dashboard";
    }

    @GetMapping("/viewShifts")
    public String viewShifts(Model model, HttpSession session){

        User user = (User) session.getAttribute("user");

        if(user == null){
            return "login";
        }

        model.addAttribute("shifts", shiftService.getUserShifts(user));

        return "viewShifts";
    }
}
