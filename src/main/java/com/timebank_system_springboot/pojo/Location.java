package com.timebank_system_springboot.pojo;

import lombok.Data;

@Data
public class Location {
    private String locationNo;
    private String locationInfoProvinces;
    private String locationInfoCities;
    private String locationInfoCounties;
}
