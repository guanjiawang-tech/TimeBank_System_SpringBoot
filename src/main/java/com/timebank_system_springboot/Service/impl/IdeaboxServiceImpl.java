package com.timebank_system_springboot.Service.impl;

import com.timebank_system_springboot.Service.IdeaboxService;
import com.timebank_system_springboot.mapper.IdeaboxMapper;
import com.timebank_system_springboot.pojo.Ideabox;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IdeaboxServiceImpl implements IdeaboxService {
    @Autowired
    private IdeaboxMapper ideaboxMapper;

    @Override
    public List<Ideabox> getIdeabox() {
        return ideaboxMapper.getIdeabox();
    }

    @Override
    public int deleteIdeabox(String dateInfo, String userid) {
        return ideaboxMapper.deleteIdeabox(dateInfo,userid);
    }
}
