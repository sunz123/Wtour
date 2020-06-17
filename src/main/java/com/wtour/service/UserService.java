package com.wtour.service;

import com.wtour.unit.Result;

public interface UserService {
	/**
	 * 获取user列表的方法
	 * 分页查询
	 * @param page
	 * @param limit
	 * @return
	 */
	public Result getUserList(Integer page, Integer limit);

	/**
	 * 批量删除
	 * @param ids
	 * @return
	 */
	public Result deleteBatch(Integer[] ids);

	/**
	 * 删除一个用户
	 * @param id
	 * @return
	 */
	Result deleteUser(Integer id);
}
