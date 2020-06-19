package com.wtour.service;

import com.wtour.dao.ViewMapper;
import com.wtour.pojo.View;
import com.wtour.unit.FileUploadUtil;
import com.wtour.unit.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;

@Service
@Transactional
public class ViewServiceImpl implements ViewService {

	@Autowired
	public ViewMapper viewMapper;

	@Override
	public Result getViewList(Integer page, Integer limit) {
		Integer start = (page - 1) * limit;
		Result result = new Result();
		List<View> views = viewMapper.getViewListById(start,limit);
		Integer count = viewMapper.selectCount();
		result.setItem(views);
		result.setTotal(count);
		return result;
	}

	@Override
	public Result uploadFile(MultipartFile uploadFile, String parentName, HttpServletRequest request){
		Result result = new Result();
		try{
			String filePath = FileUploadUtil.uploadFile(uploadFile, parentName, request);
			result.setStatus(200);
			result.setItem(filePath);//返回文件相对路径
		}catch (Exception e){
			e.printStackTrace();
			result.setStatus(500);
		}
		return result;
	}

	@Override
	public Result removeFile(String removeTarget,HttpServletRequest request){
		Result result = new Result();
		//获取项目路径
		String basePath = request.getServletContext().getRealPath("/WEB-INF/");
		//项目路径/WEB-INF/img/
		File removeFile = new File(basePath + removeTarget);
		try{
			removeFile.delete();//删除文件
			result.setStatus(200);
			result.setMessage("删除成功");
		}catch (Exception e){
			e.printStackTrace();
			result.setStatus(500);
			result.setMessage("删除失败");
		}
		return result;
	}

	@Override
	public Result addView(View view){
		Result result = new Result();
		view.setVideoPath("");
		try{
			viewMapper.insert(view);
			result.setStatus(200);
			result.setMessage("添加成功");
		}catch (Exception e) {
			e.printStackTrace();
			result.setStatus(500);
			result.setMessage("网络延迟，添加失败");
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
		}
		return result;
	}
}
