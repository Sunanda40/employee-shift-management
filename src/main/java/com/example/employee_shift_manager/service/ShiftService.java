package com.example.employee_shift_manager.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.employee_shift_manager.Repository.ShiftRepository;
import com.example.employee_shift_manager.entity.Shift;
import com.example.employee_shift_manager.entity.User;
import java.util.List;

@Service
public class ShiftService {

    @Autowired
    private ShiftRepository repo;

    public Shift saveShift(Shift shift){
        return repo.save(shift);
    }

    public List<Shift> getUserShifts(User user){
        return repo.findByUser(user);
    }
}