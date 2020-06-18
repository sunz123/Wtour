package com.wtour.dao;

import com.wtour.pojo.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderMapper {
    int deleteByPrimaryKey(Integer orderid);

    int insert(Order record);

    Order selectByPrimaryKey(Integer orderid);

    List<Order> selectAll();

    int updateByPrimaryKey(Order record);

    /**
     * 分页查询
     * @param start
     * @param limit
     * @return
     */
	List<Order> getOrderListById(@Param("start") Integer start, @Param("limit") Integer limit);

    /**
     * 查询总条数
     * @return
     */
    Integer selectCount();
}