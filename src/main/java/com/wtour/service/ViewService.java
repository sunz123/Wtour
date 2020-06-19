package com.wtour.service;

import com.wtour.pojo.View;
import com.wtour.unit.Result;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

public interface ViewService {

	/**
	 * 分页查询
	 * @param page
	 * @param limit
	 * @return
	 */
	Result getViewList(Integer page, Integer limit);

	/**
	 * 上传
	 * @param uploadFile
	 * @param parentName
	 * @param request
	 * @return
	 */
	Result uploadFile(MultipartFile uploadFile, String parentName, HttpServletRequest request);

	/**
	 * 删除上传
	 * @param removeTarget
	 * @param request
	 * @return
	 */
	Result removeFile(String removeTarget, HttpServletRequest request);

	Result addView(View view);
}
