package com.java.ssm.ticket.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.java.ssm.ticket.dao.UserDao;
import com.java.ssm.ticket.model.User;


/**
 * 用户服务业务层   Component 标明这是一个Service
 */
@Component 
public class UserService {
	
	@Autowired
	UserDao userDao;
	
	
	/**
	 * 注册用户
	 * @param user
	 * @return true 新插入用户成功
	 */
	public Boolean registerOneUserInfo(User user) {
		return userDao.saveUser(user) > 0  ? true : false;
	}
	/**
	 * 查询用户是否被注册
	 * @param idcard
	 * @return flase 身份证已经被注册
	 */
	public Boolean checkUserIdCard(String idcard) {
		return userDao.findUserByIdCard(idcard) != null ? false : true;
	}
}
