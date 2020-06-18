package com.wtour.controller;

import com.wtour.service.ViewService;
import com.wtour.unit.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/view")
public class ViewController {

	@Autowired
	public ViewService viewService;

	@RequestMapping("/viewlist_page")
	public String viewList_Page() {
		return "viewList";
	}

	@RequestMapping("/viewlist")
	@ResponseBody
	public Result viewList() {
		Result result = viewService.getViewList();
		return result;
	}
}
