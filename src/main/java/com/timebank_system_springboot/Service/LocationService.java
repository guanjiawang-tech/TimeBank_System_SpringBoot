package com.timebank_system_springboot.Service;

import com.timebank_system_springboot.pojo.Location;

import java.util.List;

public interface LocationService {
    List<Location> locationInfoProvinces();
    List<Location> locationInfoCities(String province);
    List<Location> locationInfo();
}
