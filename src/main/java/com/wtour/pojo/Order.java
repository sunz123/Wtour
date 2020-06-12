package com.wtour.pojo;

import java.io.Serializable;

public class Order implements Serializable {
    private Integer orderid;

    private String name;

    private Integer amount;

    private String spot;

    private Integer sumPrice;

    private Integer userid;

    private Integer viewid;

    private static final long serialVersionUID = 1L;

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public String getSpot() {
        return spot;
    }

    public void setSpot(String spot) {
        this.spot = spot == null ? null : spot.trim();
    }

    public Integer getSumPrice() {
        return sumPrice;
    }

    public void setSumPrice(Integer sumPrice) {
        this.sumPrice = sumPrice;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getViewid() {
        return viewid;
    }

    public void setViewid(Integer viewid) {
        this.viewid = viewid;
    }
}