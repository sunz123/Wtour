package com.wtour.controller;

import cn.dsna.util.images.ValidateCode;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;

@Controller
public class HomeController {
	/**
	 *
	 * @return
	 */
	@RequestMapping("/main")
	public String main(){
		return "main";
	}

	@RequestMapping("/login_page")
	public String login(){
		return "login";
	}

	@RequestMapping("/getCode")
	public void getCode(HttpServletResponse response){
		//生成验证码 ValidateCode.jar
		ValidateCode validateCode = new ValidateCode(150,150,5,10);
		// 生成的验证码传到前端界面
		try {
			validateCode.write(response.getOutputStream());
		}catch (Exception e){
			e.printStackTrace();
		}
	}
}
