package com.wtour.service;

import com.wtour.dao.UserMapper;
import com.wtour.pojo.User;
import com.wtour.unit.Result;
import org.apache.ibatis.transaction.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	public UserMapper userMapper;

	@Override
	public Result getUserList(Integer page, Integer limit) {
		Integer start = (page - 1)*limit;
		Result result = new Result();
		List<User>  users = userMapper.findUserListByPage(start, limit);
		Integer count = userMapper.selectCount();
		result.setTotal(users.size());
		result.setItem(users);
		return result;
	}

	@Override
	public Result deleteBatch(Integer[] ids) {
		Result result = new Result();
		try {
			userMapper.deleteBatch(ids);
			result.setStatus(200);//自己响应状态码 200 表示成功
			result.setMessage("success");
		}catch (Exception e){
			e.printStackTrace();
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			result.setStatus(202);//
			result.setMessage("error");
		}
		return result;
	}

	@Override
	public Result deleteUser(Integer id) {
		Result result = new Result();
		try {
			userMapper.deleteByPrimaryKey(id);
			result.setStatus(200);
			result.setMessage("success");
		}catch (Exception e){
			e.printStackTrace();
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			result.setStatus(202);
			result.setMessage("error");
		}
		return result;
	}

	@Override
	public Result updateById(Integer id, String value, String field) {
		Result result = new Result();
		try {
			userMapper.updateById(id,value,field);
			result.setStatus(200);
			result.setMessage("success");
		}catch (Exception e){
			e.printStackTrace();;
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			result.setStatus(500);
			result.setMessage("error");
		}
		return result;
	}

	@Override
	public Result addUser(User user) {
		return null;
	}
}
