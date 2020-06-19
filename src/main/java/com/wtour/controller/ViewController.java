package com.wtour.controller;

import com.wtour.pojo.View;
import com.wtour.service.ViewService;
import com.wtour.unit.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

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
	public Result viewList(Integer page, Integer limit) {
		Result result = viewService.getViewList(page, limit);
		return result;
	}

	/**
	 * 上传图片页面
	 */
	@RequestMapping("/add_view_page")
	public String addPhotoPage(){
		return "addView";
	}
	/**
	 * 上传文件
	 * uploadFile:对应layui里面的file
	 */
	@RequestMapping("/upload")
	@ResponseBody
	public Result uploadFile(MultipartFile uploadFile, String parentName, HttpServletRequest request){
		Result result = viewService.uploadFile(uploadFile,parentName,request);
		return result;
	}
	/**
	 * 删除上传文件
	 * removeTarget:被删除文件的相对路径
	 */
	@RequestMapping("/removeFile")
	@ResponseBody
	public Result removeFile(String removeTarget, HttpServletRequest request){
		Result result = viewService.removeFile(removeTarget,request);
		System.out.println(removeTarget + "  " + result.getStatus());
		return result;
	}
	/**
	 * 添加视频
	 * springmvc:直接使用对象接收参数
	 *      实体类属性根参数标签的name一致
	 *      实体类有get set方法
	 */
	@RequestMapping("/addView")
	@ResponseBody
	public Result addView(View view){
		Result result = viewService.addView(view);
		return result;
	}
}
