package com.timebank_system_springboot.Service.impl;

import com.timebank_system_springboot.Service.LocationService;
import com.timebank_system_springboot.mapper.LocationMapper;
import com.timebank_system_springboot.pojo.Location;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LocationServiceImpl implements LocationService {
    @Autowired
    private LocationMapper locationMapper;


    @Override
    public List<Location> locationInfoProvinces() {
        return locationMapper.locationInfoProvinces();
    }

    @Override
    public List<Location> locationInfoCities(String province) {
        return locationMapper.locationInfoCities(province);
    }

    @Override
    public List<Location> locationInfo() {
        return locationMapper.locationInfo();
    }
}
