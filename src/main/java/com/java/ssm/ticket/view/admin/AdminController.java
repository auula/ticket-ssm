package com.java.ssm.ticket.view.admin;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 管理员控制器
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@GetMapping("/login")
	public String admin() {
		return "admin/login";
	}
	
	@ResponseBody
	@PostMapping("/form")
	public Map<String,Object> form(String code,String username,String password){
		Map<String, Object> rs = new HashMap<String, Object>();
		rs.put("code", code);
		rs.put("username", username);
		rs.put("password", password);
		System.out.println(username+password+code);
		return rs;
	}
}
