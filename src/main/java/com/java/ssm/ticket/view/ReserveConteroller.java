package com.java.ssm.ticket.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.ssm.ticket.model.Scenic;
import com.java.ssm.ticket.service.ScenicService;

/**
 * 预定控制器
 *
 */
@Controller
@RequestMapping("/")
public class ReserveConteroller {
	
	@Autowired
	ScenicService ss;
	
	/**
	 * 渲染reserve页面数据
	 */
	@GetMapping("/reserve/{sid}")
	public String reserve(@PathVariable String sid,Model md) {
		if(sid.isEmpty() || sid == null) {
			//空的话就初始化
			sid = "1";
		}
		Scenic sc = ss.getScenicBySid(sid);
		md.addAttribute("sc", sc);
		return "reserve";
	}
}
