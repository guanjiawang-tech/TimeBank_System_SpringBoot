package com.timebank_system_springboot.controller;

import com.timebank_system_springboot.Service.LocationService;
import com.timebank_system_springboot.pojo.Location;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/location")
public class LocationController {
    @Autowired
    private LocationService locationService;

    @GetMapping("/locationInfo")
    public List<Location> locationInfo() {
       return locationService.locationInfo();
    }

    @PostMapping("/locationInfoCities/{province}")
    public List<Location> locationInfoCities(@PathVariable String province) {
        return locationService.locationInfoCities(province);
    }

    @GetMapping("/locationInfoProvinces")
    public List<Location> locationInfoProvinces() {
        return locationService.locationInfoProvinces();
    }
}
