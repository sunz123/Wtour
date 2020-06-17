package com.wtour.service;

import com.wtour.dao.UserMapper;
import com.wtour.pojo.User;
import com.wtour.unit.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	public UserMapper userMapper;

	@Override
	public Result getUserList() {
//		Integer start = (page - 1)*limit;
		Result result = new Result();
		List<User>  users = userMapper.selectAll();
		result.setTotal(users.size());
		result.setItem(users);
		return result;
	}
}
