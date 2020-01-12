package com.java.ssm.ticket.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import com.java.ssm.ticket.model.User;

//用户数据访问
@Mapper
public interface UserDao {
	//通过id查询用户
	@Select("SELECT * FROM `ticket`.`user_table` WHERE uid = #{uid}")
	User findUserById(long uid);
	//保存用户
	@Options(useGeneratedKeys = true, keyProperty = "uid")
	@Insert("INSERT INTO `ticket`.`user_table`(username,password,createTime,idcard) VALUES (#{username},#{password},#{createTime},#{idcard})")
	int saveUser(User user);
}