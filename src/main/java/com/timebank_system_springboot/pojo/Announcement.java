package com.timebank_system_springboot.pojo;

import lombok.Data;

@Data
public class Announcement {
    private String announcementId;
    private String announcementTitle;
    private String announcementFromtime;
    private String announcementText;

}
