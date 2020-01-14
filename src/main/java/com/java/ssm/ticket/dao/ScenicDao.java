package com.java.ssm.ticket.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.java.ssm.ticket.model.Scenic;

/**
 *景点数据访问接口
 */
@Mapper
public interface ScenicDao {
	
	/**
	 * 通过sid查询
	 * @param sid
	 * @return scenic
	 */
	Scenic findScenicBySid(long sid);
	
	/**
	 * 保持Scenic
	 * @param scenic
	 * @return int > 0  插入成功
	 */
	int saveScenic(Scenic scenic);
	
	/**
	 * 更新Scenic
	 * @param scenic
	 * @return int > 0  更新成功
	 */
	int UpdateScenic(Scenic scenic);
	
	/**
	 * 获取全部的Scenic
	 * @return 集合scenic
	 */
	@Select("SELECT * FROM `ticket`.`scenic_table`")
	List<Scenic> getAllScenic();
	
}
