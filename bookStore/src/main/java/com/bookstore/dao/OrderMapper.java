package com.bookstore.dao;

import com.bookstore.pojo.Orders;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface OrderMapper {
    List<Orders> queryOrders();
    List<Orders> queryOrdersById(Orders orders);
    boolean delCarBookByid(Orders orders);
    boolean toPayById(Orders orders);
    boolean toAddCar(Orders orders);
    boolean toSendObjById(Orders orders);
    List<Orders> queryOrdersByState(Orders orders);

}
