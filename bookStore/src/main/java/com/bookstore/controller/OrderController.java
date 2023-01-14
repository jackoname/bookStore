package com.bookstore.controller;

import com.bookstore.pojo.Books;
import com.bookstore.pojo.Orders;
import com.bookstore.service.BooksService;
import com.bookstore.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class OrderController {
    @Autowired
    @Qualifier("BooksServiceImpl")
    private BooksService booksService;
    @Autowired
    @Qualifier("OrderServiceImpl")
    private OrderService orderService;

    @RequestMapping("/toScar")
    public String toScarByID( Model model,Orders orders,String id) {
        System.out.println(id+"id的值");
        orders.setUserid(id);
        orders.setState(0);
        List<Orders> ord =orderService.queryOrdersById(orders);
        model.addAttribute("list",ord);
        double total=0.0;
        for(int i=0;i<ord.size();i++){
            if (ord.get(i).getState()==0)
            total+=ord.get(i).getBookprice();
        }
        model.addAttribute("all",total);
        model.addAttribute("id",id);
        System.out.println(ord+" "+total);
        return "sCar";
    }

    @RequestMapping("/reobj")
    public String delCar(Orders orders) {
        orders.setState(3);
        if(orderService.toSendObjById(orders));
        return "redirect:/toOrder1?id="+orders.getUserid()+"&flag=3";
    }
    @RequestMapping("/delcar")
    public String delCarO(Orders orders,String id) {
        System.out.println(orders);
        if(orderService.delCarBookByid(orders))
        return "redirect:/toScar?id="+id;
        else return "00";
    }
    @RequestMapping("/pay")
    public String toPay(String id) {
        Orders orders=new Orders();
        orders.setState(1);
        orders.setUserid(id);
        orderService.toPayById(orders);
        return "redirect:/toOrder1?id="+id+"&flag=1";
    }

    @RequestMapping("/addCar")
    public String toAddCar(Orders orders,String id) {
        System.out.println("---------"+id);
        orders.setUserid(id);
        orders.setState(0);
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        orders.setCreattime(new Date());
        System.out.println((formatter.format(new Date())).toString());
        System.out.println(orders+" ");
        orderService.toAddCar(orders);
        return "redirect:/toScar?id="+id;
    }
    @RequestMapping("/tosend")
    public String toSend(Orders orders) {
        orders.setState(2);
        System.out.println(orders.getOrderid()+"订单号 ");
        orderService.toSendObjById(orders);
        return "redirect:/toOrder2?flag=2";
    }

    @RequestMapping("/toOrder1")
    public String toMyOrder( Model model,Orders orders,String id,String flag) {
        String caption = null;
        System.out.println(id+"id的值  flag:"+flag);
        orders.setUserid(id);
        if(flag.equals("1")){
            System.out.println(id);
        orders.setState(1);
        caption="待发货订单";
            List<Orders> ord =orderService.queryOrdersById(orders);
            model.addAttribute("list",ord);
            model.addAttribute("order",caption);
            model.addAttribute("id",id);
            model.addAttribute("msg","等待发货");
            return "MyOrder1";
        }
        else  if(flag.equals("2")){
            orders.setState(2);
            caption="已发货订单";

        }
        else if(flag.equals("3"))
        {
            orders.setState(3);
            caption="已完成订单";
            List<Orders> ord =orderService.queryOrdersById(orders);
            model.addAttribute("list",ord);
            model.addAttribute("order",caption);
            model.addAttribute("id",id);
            model.addAttribute("msg","交易完成");
            return "MyOrder1";
        }
        List<Orders> ord =orderService.queryOrdersById(orders);
        model.addAttribute("list",ord);
        Double total=0.0;
        for(int i=0;i<ord.size();i++){
            if (ord.get(i).getState()==0)
                total+=ord.get(i).getBookprice();
        }
        model.addAttribute("all",total);
        model.addAttribute("order",caption);
        model.addAttribute("id",id);
        System.out.println(ord+" "+total);
        return "MyOrder";
    }


    @RequestMapping("/toOrder2")
    public String toMagerOrder( Model model,Orders orders,String id,String flag) {
        String caption = null;

        System.out.println(id+"id的值  flag:"+flag);
        orders.setUserid(id);
        if(flag.equals("1")){
            orders.setState(1);
            caption="待发货订单";
        }
        else if (flag.equals("2")){

            orders.setState(2);
            List<Orders> ord =orderService.queryOrdersByState(orders);
            caption = "已发货的订单";
            model.addAttribute("order",caption);
            model.addAttribute("id",id);
            model.addAttribute("list",ord);
            model.addAttribute("msg","等待买家收货");
            return "oderMager1";
        }
            else if (flag.equals("3")) {
            orders.setState(3);
            List<Orders> ord =orderService.queryOrdersByState(orders);
            caption = "已完成的订单";
            model.addAttribute("order",caption);
            model.addAttribute("id",id);
            model.addAttribute("list",ord);
            model.addAttribute("msg","交易完成");
            return "oderMager1";
        }
        else if (flag.equals("4")){
            caption = "销售统计";
            model.addAttribute("order",caption);
            List<Books> book=booksService.queryBooks();
            model.addAttribute("id",id);
            model.addAttribute("list",book);
            return "oderMager2";
        }

         else  if (flag.equals("5")){
            caption = "管理商品";
            model.addAttribute("order",caption);
            List<Books> book=booksService.queryBooks();
            model.addAttribute("id",id);
           model.addAttribute("list",book);
            return "OrderMager3";
        }
        else  if (flag.equals("6")){
          //  List<Books> book=booksService.queryBooks();
            model.addAttribute("id",id);
            // model.addAttribute("list", book);
            return "addBook";
        }
        else  if (flag.equals("7")){
            List<Books> book=booksService.queryBooks();
            model.addAttribute("id",id);
            model.addAttribute("list",book);
            return "OrderMager4";
        }

        else  if (flag.equals("8")){
            List<Books> book=booksService.queryBooks();
            model.addAttribute("id",id);
            model.addAttribute("list",book);
            return "OrderMager5";
        }
        List<Orders> ord =orderService.queryOrdersByState(orders);
        model.addAttribute("order",caption);
        model.addAttribute("id",id);
        model.addAttribute("list",ord);
        return "OrderMager";
    }

}
