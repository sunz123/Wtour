package com.wtour.service;

import com.wtour.unit.Result;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {
	@Override
	public Result getOrderList(Integer page, Integer limit) {
		return null;
	}
}
