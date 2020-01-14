package com.java.ssm.ticket.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.ssm.ticket.service.ScenicService;

/**
 * 景点详情和购买控制器
 */
@Controller
@RequestMapping("/Scenic")
public class ScenicController {

	
	@Autowired
	ScenicService ss;
	
	/**
	 * 详情请求
	 * @param id 景点id
	 * @return 详情视图
	 */
	@GetMapping("/detdils/{id}")
	public String detdils(@PathVariable String id) {
		if (id == null || id.isBlank()) {
			id = String.valueOf(1);
		}
		return "detdils";
	}
}
