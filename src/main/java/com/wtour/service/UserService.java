package com.wtour.service;

import com.wtour.pojo.User;
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
	Result deleteBatch(Integer[] ids);

	/**
	 * 删除一个用户
	 * @param id
	 * @return
	 */
	Result deleteUser(Integer id);

	/**
	 * 根据id更改用户的一个属性
	 * @param id
	 * @param value
	 * @param field
	 * @return
	 */
	Result updateById(Integer id, String value, String field);

	/**
	 * 添加用户
	 * @param user
	 * @return
	 */
	Result addUser(User user);
}
