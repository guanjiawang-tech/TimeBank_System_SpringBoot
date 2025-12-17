package com.timebank_system_springboot.pojo;

import lombok.Data;

@Data
public class UsersDTO {
    private int hours;
    private int minutes;
    private int seconds;
    private String userId;
}
