package com.bookstore.service;

import com.bookstore.dao.BooksMapper;
import com.bookstore.dao.OrderMapper;
import com.bookstore.pojo.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class OrderServiceImpl implements OrderService {
    private OrderMapper orderMapper;
@Autowired
    public void setOrderMapper(OrderMapper orderMapper) {
        this.orderMapper = orderMapper;
    }

   // @Autowired
    @Override
    public List<Orders> queryOrders() {
        return orderMapper.queryOrders();
    }

    @Override
    public List<Orders> queryOrdersById(Orders orders) {
        return orderMapper.queryOrdersById(orders);
    }

    @Override
    public boolean delCarBookByid (Orders orders) {
        return orderMapper.delCarBookByid(orders);
    }

    @Override
    public boolean toPayById(Orders orders) {
        return orderMapper.toPayById(orders);
    }

    @Override
    public boolean toAddCar(Orders orders) {
        return orderMapper.toAddCar(orders);
    }

    @Override
    public boolean toSendObjById(Orders orders) {
        return orderMapper.toSendObjById(orders);
    }

    @Override
    public List<Orders> queryOrdersByState(Orders orders) {
        return orderMapper.queryOrdersByState(orders);
    }
}
