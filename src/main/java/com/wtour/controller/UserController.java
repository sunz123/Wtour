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
	public String userList_page(){
		return "userlist";
	}

	@RequestMapping("userlist")
	@ResponseBody
	public Result userlist(){
		Result result = userService.getUserList();
		return result;
	}
}
