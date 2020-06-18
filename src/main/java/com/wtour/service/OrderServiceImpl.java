package com.wtour.service;

import com.wtour.dao.OrderMapper;
import com.wtour.pojo.Order;
import com.wtour.unit.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

	@Autowired
	public OrderMapper orderMapper;

	@Override
	public Result getOrderList(Integer page, Integer limit) {
		Integer start = (page - 1)*limit;
		Result result = new Result();
		List<Order> orders = orderMapper.getOrderListById(start, limit);
		Integer count = orderMapper.selectCount();
		result.setItem(orders);
		result.setTotal(count);
		return result;
	}
}
