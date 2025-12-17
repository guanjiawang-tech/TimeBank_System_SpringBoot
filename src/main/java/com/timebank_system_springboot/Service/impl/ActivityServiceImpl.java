package com.timebank_system_springboot.Service.impl;

import com.timebank_system_springboot.Service.ActivityService;
import com.timebank_system_springboot.mapper.ActivityMapper;
import com.timebank_system_springboot.pojo.Activity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ActivityServiceImpl implements ActivityService {
    @Autowired
    private ActivityMapper activityMapper;

    @Override
    public int insertActivity(Activity activity) {
        return activityMapper.insertActivity(activity);
    }
}
