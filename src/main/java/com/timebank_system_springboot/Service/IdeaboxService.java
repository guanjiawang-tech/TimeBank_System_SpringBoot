package com.timebank_system_springboot.Service;

import com.timebank_system_springboot.pojo.Ideabox;

import java.util.List;

public interface IdeaboxService {
    List<Ideabox> getIdeabox();
    int deleteIdeabox(String dateInfo, String userid);
}
