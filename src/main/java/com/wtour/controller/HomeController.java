package com.wtour.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
