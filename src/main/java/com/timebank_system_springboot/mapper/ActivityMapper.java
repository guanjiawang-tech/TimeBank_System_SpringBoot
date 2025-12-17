package com.timebank_system_springboot.mapper;

import com.timebank_system_springboot.pojo.Activity;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ActivityMapper {
    @Insert("INSERT INTO `activities` VALUES (#{activityId},#{activityName},#{activityLocationNo},#{activityUserId},#{activityStartTime},#{activityOverTime},#{activityVolunteerNumber},#{activityLocationInfo},'','未开始')")
    public int insertActivity(Activity activity);
}
