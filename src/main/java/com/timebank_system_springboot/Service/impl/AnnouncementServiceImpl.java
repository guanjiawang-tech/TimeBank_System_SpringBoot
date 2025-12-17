package com.timebank_system_springboot.Service.impl;

import com.timebank_system_springboot.Service.AnnouncementService;
import com.timebank_system_springboot.mapper.AnnouncementMapper;
import com.timebank_system_springboot.pojo.Announcement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AnnouncementServiceImpl implements AnnouncementService {
    @Autowired
    private AnnouncementMapper announcementMapper;


    @Override
    public int addAnnouncement(Announcement announcement) {
        return announcementMapper.addAnnouncement(announcement);
    }
}
