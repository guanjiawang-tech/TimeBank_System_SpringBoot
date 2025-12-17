package com.timebank_system_springboot.mapper;

import com.timebank_system_springboot.pojo.OrderDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface OrderMapper {
    @Select("SELECT orders.*, u1.username username1, u1.phone phone1, u2.username username2, u2.phone phone2, u1.coefficient, SUBSTRING_INDEX(dateinfo, '-', 3) AS start_time, SUBSTRING_INDEX(SUBSTRING_INDEX(dateinfo, '-', -3), '-', -4) AS end_time, TIMEDIFF(STR_TO_DATE(SUBSTRING_INDEX(SUBSTRING_INDEX(dateinfo, '-', -3), '-', -4), '%Y-%m-%d %H:%i:%s'),STR_TO_DATE(SUBSTRING_INDEX(dateinfo, '-', 3), '%Y-%m-%d %H:%i:%s')) AS time_difference FROM `orders` JOIN users u1 ON (orders.userId = u1.userId)  JOIN users u2 ON (orders.volunteerUserId = u2.userId) WHERE orders.stage = '待审核'")
    public List<OrderDTO> selectAllOrders();

    @Update("UPDATE orders SET orders.stage = #{stage} WHERE orders.orderId = #{orderId}")
    public int updateOrders(String stage, String orderId);
}
