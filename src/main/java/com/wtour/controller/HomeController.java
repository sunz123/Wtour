package com.wtour.controller;

import cn.dsna.util.images.ValidateCode;
import com.wtour.service.AdminService;
import com.wtour.service.UserService;
import com.wtour.unit.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class HomeController {

	@Autowired
	private AdminService adminService;
	@Autowired
	private UserService userService;
	/**
	 *
	 * @return
	 */
	@RequestMapping("/main")
	public String main(){
		return "main";
	}

	@RequestMapping("/login_page")
	public String login_page(){
		return "login";
	}

	@RequestMapping("/adminlogin_page")
	public String adminlogin_page(){
		return "adminlogin";
	}

	@RequestMapping("/adminlogin")
	public Result adminLogin(String username, String password, String code, HttpServletRequest request){
		Result result = adminService.login(username,password,code,request);
		System.out.println(username + "  " + password + "  " + code);
		System.out.println(result.getMessage() + "  " + result.getStatus());
		return result;
	}

	@RequestMapping("/getCode")
	public void getCode(HttpServletResponse response, HttpServletRequest request){
		//生成验证码 ValidateCode.jar
		ValidateCode validateCode = new ValidateCode(120,40,5,10);
		String code = validateCode.getCode();
		// 将系统生成的验证码存放在session中
		HttpSession session = request.getSession();
		session.setAttribute("code",code);
		// 生成的验证码传到前端界面
		try {
			validateCode.write(response.getOutputStream());
		}catch (Exception e){
			e.printStackTrace();
		}
	}
}
