package com.wtour.service;

import com.wtour.unit.Result;

public interface UserService {
	/**
	 * 获取user列表的方法
	 * @param page
	 * @param limit
	 * @return
	 */
	public Result getUserList();
}
