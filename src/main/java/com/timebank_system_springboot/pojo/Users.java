package com.timebank_system_springboot.pojo;

import lombok.Data;

@Data
public class Users {
    private String userId;
    private String username;
    private String phone;
    private String status;
    private String coefficient;
    private String password;
    private String volTime;
    private String volCurrecy;
    private String userText;
    private String volunteerTime;
    private String volunteerText;
}
