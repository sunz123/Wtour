package com.wtour.service;

import com.wtour.dao.ViewMapper;
import com.wtour.unit.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ViewServiceImpl implements ViewService {

	@Autowired
	public ViewMapper viewMapper;

	@Override
	public Result getViewList(Integer page, Integer limit) {
		return null;
	}
}
