package com.timebank_system_springboot.mapper;

import com.timebank_system_springboot.pojo.Location;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface LocationMapper {
    @Select("SELECT locationinfo.locationInfoProvinces FROM locationinfo GROUP BY locationInfoProvinces")
    List<Location> locationInfoProvinces();

    @Select("SELECT locationinfo.locationInfoCities, locationinfo.locationInfoCounties FROM locationinfo WHERE locationInfoProvinces = #{province} GROUP BY locationInfoCities,locationinfo.locationInfoCounties")
    List<Location> locationInfoCities(String province);

    @Select("SELECT * FROM `locationinfo`")
    List<Location> locationInfo();
}
