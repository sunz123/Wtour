package com.wtour.service;

import com.wtour.dao.UserMapper;
import com.wtour.pojo.User;
import com.wtour.unit.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public Result login(String username, String password, String code, HttpServletRequest request) {
		Result result = new Result();
		//从session中获取验证码
		HttpSession session = request.getSession();
		String codeValue = (String) session.getAttribute("code");
		if (!codeValue.equalsIgnoreCase(code)){
			result.setStatus(500);
			result.setMessage("验证码输入有误，请重新输入！");
		}else {
			// 从数据库中查询数据
			User user = userMapper.getByName(username,password);
			if (user == null){
				result.setMessage("账号或者密码错误，请重新输入！");
				result.setStatus(500);
			}else {
				// 将用户信息传到session
				session.setAttribute("user",user);
				result.setStatus(200);
				result.setMessage("登录成功");
			}
		}
		return result;
	}
}
