package com.timebank_system_springboot.Service;

import com.timebank_system_springboot.pojo.Users;

import java.util.List;

public interface UsersService {
    List<Users> findAllByStatus();
    int updateStatusToVolunteer(String userId);
    int updateStatusReBack(String userId);
    List<Users> findAll();
    List<Users> findByStatus(String status);
    int updateStatusRe(String userId, String status);
    int deleteById(String userId);
    int updatePassword(String userId, String password);
    int updateVolunteerTime(String userId, int hours, int minutes, int seconds);
    int updateVolunteerRe(String userId, int volCurrecy);
    int updateVolunteerReBack(String userId, int volCurrecy);
    Users toLogin(String userId, String password);
    int insert(Users users);
}
