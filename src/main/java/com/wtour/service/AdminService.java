package com.wtour.service;

import com.wtour.unit.Result;

import javax.servlet.http.HttpServletRequest;

public interface AdminService {
	/**
	 * 登录管理员
	 * @param username
	 * @param password
	 * @return
	 */
	Result login(String username, String password, String code, HttpServletRequest request);
}
