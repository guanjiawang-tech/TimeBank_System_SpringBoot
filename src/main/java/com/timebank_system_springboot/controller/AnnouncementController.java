package com.timebank_system_springboot.controller;

import com.timebank_system_springboot.Service.AnnouncementService;
import com.timebank_system_springboot.pojo.Announcement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/announcement")
public class AnnouncementController {
    @Autowired
    private AnnouncementService announcementService;

    @PostMapping("/addAnnouncement")
    public int addAnnouncement(@RequestBody Announcement announcement){
        return announcementService.addAnnouncement(announcement);
    }
}
