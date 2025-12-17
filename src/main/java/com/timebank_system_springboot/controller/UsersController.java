package com.timebank_system_springboot.controller;

import com.timebank_system_springboot.Service.UsersService;
import com.timebank_system_springboot.pojo.Users;
import com.timebank_system_springboot.pojo.UsersDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
public class UsersController {
    @Autowired
    private UsersService usersService;

    @GetMapping("/getAllUsers")
    public List<Users> getAllUsers() {
        return usersService.findAllByStatus();
    }

    @PostMapping("/updateStatusToVolunteer")
    public int updateStatusToVolunteer(@RequestBody Users user) {
        return usersService.updateStatusToVolunteer(user.getUserId());
    }

    @PostMapping("/updateStatusReBack")
    public int updateStatusReBack(@RequestBody Users user) {
        return usersService.updateStatusReBack(user.getUserId());
    }

    @GetMapping("/findAll")
    public List<Users> findAll() {
        return usersService.findAll();
    }

    @PostMapping("/findByStatus")
    public List<Users> findByStatus(@RequestBody Users user) {
        return usersService.findByStatus(user.getStatus());
    }

    @PostMapping("/updateStatusRe")
    public int updateStatusRe(@RequestBody Users user) {
        return usersService.updateStatusRe(user.getUserId(), user.getStatus());
    }

    @PostMapping("/deleteById")
    public int deleteById(@RequestBody Users user) {
        return usersService.deleteById(user.getUserId());
    }

    @PostMapping("/updatePassword")
    public int updatePassword(@RequestBody Users user) {
        return usersService.updatePassword(user.getUserId(),user.getPassword());
    }

    @PostMapping("/updateVolunteerTime")
    public int updateVolunteerTime(@RequestBody UsersDTO user) {
        return usersService.updateVolunteerTime(user.getUserId(),user.getHours(),user.getMinutes(),user.getSeconds());
    }

    @PostMapping("/updateVolunteerRe/{userId}/{volCurrecy}")
    public int updateVolunteerRe(@PathVariable String userId,@PathVariable  int volCurrecy) {
        return usersService.updateVolunteerRe(userId,volCurrecy);
    }

    @PostMapping("/updateVolunteerReBack/{userId}/{volCurrecy}")
    public int updateVolunteerReBack(@PathVariable String userId,@PathVariable  int volCurrecy) {
        return usersService.updateVolunteerReBack(userId,volCurrecy);
    }

    @PostMapping("/toLogin")
    public Users toLogin(@RequestBody Users user){
        return usersService.toLogin(user.getUserId(),user.getPassword());
    }
    
    @PostMapping("/insert")
    public int insert(@RequestBody Users user){
        return usersService.insert(user);
    }
}
