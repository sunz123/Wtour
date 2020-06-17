package com.wtour.controller;

import com.wtour.service.UserService;
import com.wtour.unit.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	public UserService userService;

	@RequestMapping("/userlist_page")
	public String userList_page() {
		return "userlist";
	}

	@RequestMapping("/userlist")
	@ResponseBody
	public Result userlist(Integer page, Integer limit) {
		Result result = userService.getUserList(page, limit);
		return result;
	}

	@RequestMapping("/deleteBatch")
	@ResponseBody
	public Result deleteBatch(Integer[] ids){
		Result result = userService.deleteBatch(ids);
		return result;
	}

	@RequestMapping("/delete")
	@ResponseBody
	public Result deleteUser(Integer id){
		Result result = userService.deleteUser(id);
		return result;
	}

	@RequestMapping("/adduser_page")
	public String addUserPage()	{
		return "addUser";
	}

}
