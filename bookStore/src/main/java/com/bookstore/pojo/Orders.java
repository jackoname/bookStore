package com.bookstore.pojo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Orders {
    int orderid,bookid,state;
    String userid,bookname,bookpricture;
    Date creattime,endtime;
    double bookprice;

    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    public int getBookid() {
        return bookid;
    }

    public void setBookid(int bookid) {
        this.bookid = bookid;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public String getBookpricture() {
        return bookpricture;
    }

    public void setBookpricture(String bookpricture) {
        this.bookpricture = bookpricture;
    }

    public Date getCreattime() {
        return creattime;
    }

    public void setCreattime(Date creattime) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        try {
            Date   newTime =formatter.parse(formatter.format(creattime));
            this.creattime = newTime;
        } catch (ParseException e) {
            e.printStackTrace();
        }

    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        try {
            Date   newTime =formatter.parse(formatter.format(endtime));
            this.endtime = endtime;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        this.endtime = endtime;
    }

    public double getBookprice() {
        return bookprice;
    }

    public void setBookprice(double bookprice) {
        this.bookprice = bookprice;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "orderid=" + orderid +
                ", bookid=" + bookid +
                ", state=" + state +
                ", userid='" + userid + '\'' +
                ", bookname='" + bookname + '\'' +
                ", bookpricture='" + bookpricture + '\'' +
                ", creattime=" + creattime +
                ", endtime=" + endtime +
                ", bookprice=" + bookprice +
                '}';
    }
}
