package com.java.ssm.ticket.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 用户试图处理器
 * @author hgy
 */
@Controller
@RequestMapping("/")
public class IndexController {
	
	//首页处理器
	@GetMapping(value = {"/index.html","/"})
	public String index() {
		return "index";
	}
	
	//登录处理器
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	
	//注册处理器
	@RequestMapping("/register")
	public String register(){
		return "register";
	}
}