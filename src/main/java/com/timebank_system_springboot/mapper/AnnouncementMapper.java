package com.timebank_system_springboot.mapper;

import com.timebank_system_springboot.pojo.Announcement;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AnnouncementMapper {
    @Insert("INSERT INTO announcement VALUES (#{announcementId},#{announcementTitle},#{announcementFromtime},#{announcementText})")
    int addAnnouncement(Announcement announcement);
}
