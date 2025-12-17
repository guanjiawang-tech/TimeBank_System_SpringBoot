package com.timebank_system_springboot.mapper;

import com.timebank_system_springboot.pojo.Ideabox;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface IdeaboxMapper {
    @Select("SELECT * FROM `ideasbox` ORDER BY dateInfo DESC")
    public List<Ideabox> getIdeabox();

    @Delete("DELETE FROM `ideasbox` WHERE dateInfo = #{dateInfo} AND userid = #{userid}")
    public int deleteIdeabox(String dateInfo, String userid);
}
