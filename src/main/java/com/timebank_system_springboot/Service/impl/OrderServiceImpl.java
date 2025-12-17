package com.timebank_system_springboot.Service.impl;

import com.timebank_system_springboot.Service.OrderService;
import com.timebank_system_springboot.mapper.OrderMapper;
import com.timebank_system_springboot.pojo.OrderDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;


    @Override
    public List<OrderDTO> selectAllOrders() {
        return orderMapper.selectAllOrders();
    }

    @Override
    public int updateOrders(String stage, String orderId) {
        return orderMapper.updateOrders(stage, orderId);
    }


}
