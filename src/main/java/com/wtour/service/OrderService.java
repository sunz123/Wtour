package com.wtour.service;

import com.wtour.unit.Result;

public interface OrderService {
	/**
	 * 分页显示订单列表
	 * @param page
	 * @param limit
	 * @return
	 */
	Result getOrderList();
}
