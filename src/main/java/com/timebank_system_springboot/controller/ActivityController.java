package com.timebank_system_springboot.controller;

import com.timebank_system_springboot.Service.ActivityService;
import com.timebank_system_springboot.pojo.Activity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/activity")
public class ActivityController {
    @Autowired
    private ActivityService activityService;

    @PostMapping("/insertActivity")
    public int insertActivity(@RequestBody Activity activity) {
        return activityService.insertActivity(activity);
    }
}
