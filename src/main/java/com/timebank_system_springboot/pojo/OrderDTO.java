package com.timebank_system_springboot.pojo;

import lombok.Data;

@Data
public class OrderDTO {
    private String orderId;
    private String userId;
    private String orderType;
    private String orderText;
    private String volunteerUserId;
    private String dateInfo;
    private String stage;
    private String joinsId;
    private String username1;
    private String phone1;
    private String username2;
    private String phone2;
    private String coefficient;
    private String start_time;
    private String end_time;
    private String time_difference;
}
