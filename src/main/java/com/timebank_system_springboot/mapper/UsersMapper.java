package com.timebank_system_springboot.mapper;

import com.timebank_system_springboot.pojo.Users;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface UsersMapper {
    @Select("SELECT * FROM `users` WHERE users.volunteerTime != '' AND users.`status` = '用户'")
    List<Users> findAllByStatus();

    @Update("UPDATE users SET users.`status` = '志愿者' WHERE users.userId = #{userId}")
    int updateStatusToVolunteer(String userId);

    @Update("UPDATE users SET users.volunteerTime = '', users.volunteerText = '' WHERE users.userId = #{userId}")
    int updateStatusReBack(String userId);

    @Select("SELECT * FROM `users` WHERE `status` != '管理员'")
    List<Users> findAll();

    @Select("SELECT * FROM `users` WHERE `status` = #{status}")
    List<Users> findByStatus(String status);

    @Update("UPDATE users SET users.`status` = #{status} WHERE users.userId = #{userId}")
    int updateStatusRe(String userId, String status);

    @Delete("DELETE FROM users WHERE users.userId = #{userId}")
    int deleteById(String userId);

    @Update("UPDATE users SET users.`password` = #{password} WHERE users.userId = #{userId}")
    int updatePassword(String userId, String password);

    @Update("UPDATE users u " +
            "JOIN (" +
            "    SELECT userId, " +
            "    CONCAT(" +
            "        LPAD(CAST(SUBSTRING_INDEX(volTime, ':', 1) AS SIGNED) + #{hours}, 2, '0'), " +
            "        ':', " +
            "        LPAD(" +
            "            CASE " +
            "                WHEN CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(volTime, ':', 2), ':', -1) AS SIGNED) + #{minutes} >= 60 " +
            "                THEN (CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(volTime, ':', 2), ':', -1) AS SIGNED) + #{minutes}) % 60 " +
            "                ELSE CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(volTime, ':', 2), ':', -1) AS SIGNED) + #{minutes} " +
            "            END, " +
            "            2, '0' " +
            "        ), " +
            "        ':', " +
            "        LPAD((CAST(SUBSTRING_INDEX(volTime, ':', -1) AS SIGNED) + #{seconds}) % 60, 2, '0') " +
            "    ) AS new_volTime " +
            "    FROM users " +
            "    WHERE userId = #{userId} " +
            ") AS time_update " +
            "ON u.userId = time_update.userId " +
            "SET u.volTime = time_update.new_volTime " +
            "WHERE u.userId = #{userId}")
    int updateVolunteerTime(String userId, int hours, int minutes, int seconds);

    @Update("UPDATE users SET users.volCurrecy = CAST(users.volCurrecy AS UNSIGNED) + #{volCurrecy} WHERE users.userId = #{userId}")
    int updateVolunteerRe(String userId, int volCurrecy);

    @Update("UPDATE users SET users.volCurrecy = CAST(users.volCurrecy AS UNSIGNED) - #{volCurrecy} WHERE users.userId = #{userId}")
    int updateVolunteerReBack(String userId, int volCurrecy);

    @Select("SELECT * FROM `users` WHERE userId = (SELECT userId FROM `users` WHERE userId = #{userId} OR phone = #{userId}) AND `password` = #{password} AND `status` = '管理员'")
    Users toLogin(String userId, String password);

    @Insert("INSERT INTO `users` VALUES (#{userId},#{username},#{phone},#{status},'--',#{password},'--','--','留下些什么东西吧~','','')")
    int insert(Users users);
}
