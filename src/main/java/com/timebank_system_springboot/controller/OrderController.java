package com.timebank_system_springboot.controller;

import com.timebank_system_springboot.Service.OrderService;
import com.timebank_system_springboot.pojo.OrderDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrderService orderService;

    @GetMapping("/selectAllOrders")
    public List<OrderDTO> selectAllOrders() {
        return orderService.selectAllOrders();
    }

    @PostMapping("/updateOrders")
    public int updateOrders(@RequestBody OrderDTO orderDTO) {
        return orderService.updateOrders(orderDTO.getStage(),orderDTO.getOrderId());
    }
}
