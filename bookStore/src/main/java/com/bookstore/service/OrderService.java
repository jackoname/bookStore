package com.bookstore.service;

import com.bookstore.pojo.Orders;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface OrderService {
    List<Orders> queryOrders();
    List<Orders> queryOrdersById(Orders orders);
    boolean delCarBookByid(Orders orders);
    boolean toPayById(Orders orders);
    boolean toAddCar(Orders orders);
   boolean  toSendObjById(Orders orders);
    List<Orders> queryOrdersByState(Orders orders);
}
