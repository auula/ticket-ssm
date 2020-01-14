package com.java.ssm.ticket.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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
	@Select("SELECT * FROM scenic_table WHERE sid = #{sid}")
	Scenic findScenicBySid(long sid);
	
	/**
	 * 保持Scenic
	 * @param scenic
	 * @return int > 0  插入成功
	 */
	@Options(useGeneratedKeys = true,keyProperty = "sid")
	@Insert("INSERT INTO `ticket`.`scenic_table`(`scenic_name`, `scenic_price`, `scenic_address`, `scenic_details`, `scenic_pic`, `scenic_star`, `createTime`) VALUES (#{scenicName}, #{scenicPrice}, #{scenicAddress},#{scenicDetails}, #{scenicPic}, #{scenicStar}, #{createTime})")
	int saveScenic(Scenic scenic);
	
	/**
	 * 更新Scenic
	 * @param scenic
	 * @return int > 0  更新成功
	 */
	@Update("UPDATE scenic_table SET scenic_name = #{scenicName},scenic_price = #{scenicPrice},scenic_address = #{scenicAddress},scenic_details = #{scenicDetails},scenic_pic = #{scenicPic},scenic_star = #{scenicStar},createTime = #{createTime} WHERE sid = #{sid}")
	int UpdateScenic(Scenic scenic);
	
	/**
	 * 获取全部的Scenic
	 * @return 集合scenic
	 */
	@Select("SELECT * FROM `ticket`.`scenic_table`")
	List<Scenic> getAllScenic();
	
}
