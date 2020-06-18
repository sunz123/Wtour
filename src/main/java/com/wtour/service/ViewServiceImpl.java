package com.wtour.service;

import com.wtour.dao.ViewMapper;
import com.wtour.pojo.View;
import com.wtour.unit.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ViewServiceImpl implements ViewService {

	@Autowired
	public ViewMapper viewMapper;

	@Override
	public Result getViewList() {
		Result result = new Result();
		List<View> views = viewMapper.selectAll();
		result.setItem(views);
		result.setTotal(views.size());
		return result;
	}
}
