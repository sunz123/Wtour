package com.wtour.service;

import com.wtour.unit.Result;

public interface ViewService {

	/**
	 * 分页查询
	 * @param page
	 * @param limit
	 * @return
	 */
	Result getViewList(Integer page, Integer limit);
}
