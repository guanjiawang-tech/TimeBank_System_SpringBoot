package com.timebank_system_springboot.Service.impl;

import com.timebank_system_springboot.Service.UsersService;
import com.timebank_system_springboot.mapper.UsersMapper;
import com.timebank_system_springboot.pojo.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UsersServiceImpl implements UsersService {
    @Autowired
    private UsersMapper usersMapper;

    @Override
    public List<Users> findAllByStatus() {
        return usersMapper.findAllByStatus();
    }

    @Override
    public int updateStatusToVolunteer(String userId) {
        return usersMapper.updateStatusToVolunteer(userId);
    }

    @Override
    public int updateStatusReBack(String userId) {
        return usersMapper.updateStatusReBack(userId);
    }

    @Override
    public List<Users> findAll() {
        return usersMapper.findAll();
    }

    @Override
    public List<Users> findByStatus(String status) {
        return usersMapper.findByStatus(status);
    }

    @Override
    public int updateStatusRe(String userId, String status) {
        return usersMapper.updateStatusRe(userId,status);
    }

    @Override
    public int deleteById(String userId) {
        return usersMapper.deleteById(userId);
    }

    @Override
    public int updatePassword(String userId, String password) {
        return usersMapper.updatePassword(userId,password);
    }

    @Override
    public int updateVolunteerTime(String userId, int hours, int minutes, int seconds) {
        return usersMapper.updateVolunteerTime(userId,hours,minutes,seconds);
    }

    @Override
    public int updateVolunteerRe(String userId, int volCurrecy) {
        return usersMapper.updateVolunteerRe(userId,volCurrecy);
    }

    @Override
    public int updateVolunteerReBack(String userId, int volCurrecy) {
        return usersMapper.updateVolunteerReBack(userId,volCurrecy);
    }

    @Override
    public Users toLogin(String userId, String password) {
        return usersMapper.toLogin(userId,password);
    }

    @Override
    public int insert(Users users) {
        return usersMapper.insert(users);
    }
}
