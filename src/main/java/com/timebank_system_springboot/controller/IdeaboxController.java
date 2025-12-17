package com.timebank_system_springboot.controller;

import com.timebank_system_springboot.Service.IdeaboxService;
import com.timebank_system_springboot.pojo.Ideabox;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/ideabox")
public class IdeaboxController {
    @Autowired
    private IdeaboxService ideaboxService;

    @GetMapping("/getIdeabox")
    public List<Ideabox> getIdeabox() {
        return ideaboxService.getIdeabox();
    }

    @PostMapping("/deleteIdeabox")
    public int deleteIdeabox(@RequestBody Ideabox ideabox) {
        return ideaboxService.deleteIdeabox(ideabox.getDateInfo(),ideabox.getUserid());
    }
}
