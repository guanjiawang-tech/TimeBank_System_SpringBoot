package com.timebank_system_springboot.pojo;

import lombok.Data;

@Data
public class Activity {
    private String activityId;
    private String activityName;
    private String activityLocationNo;
    private String activityUserId;
    private String activityStartTime;
    private String activityOverTime;
    private int activityVolunteerNumber;
    private String activityLocationInfo;
    private String signinCode;
    private String stage;
}
