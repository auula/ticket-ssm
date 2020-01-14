package com.java.ssm.ticket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.java.ssm.ticket.dao.ScenicDao;
import com.java.ssm.ticket.model.Scenic;

/**
 * scenic服务业务层
 */
@Component
public class ScenicService {
	
	
	@Autowired
	ScenicDao sd;
	
	/**
	 * 获取所有scenic信息
	 * @return 集合scenic
	 */
	public List<Scenic> getAll(){
		return sd.getAllScenic();
	}
}
