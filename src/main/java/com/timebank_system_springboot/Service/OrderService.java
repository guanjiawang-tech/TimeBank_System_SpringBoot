package com.timebank_system_springboot.Service;

import com.timebank_system_springboot.pojo.OrderDTO;

import java.util.List;

public interface OrderService {
    public List<OrderDTO> selectAllOrders();
    public int updateOrders(String stage, String orderId);
}
