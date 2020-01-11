package com.java.ssm.ticket.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 用户请求处理器
 * 
 * @author hgy
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	HttpServletResponse resp;

	@Autowired
	HttpServletRequest req;

	@PostMapping("/reg")
	public String register(String username,String idcard, String password, String captcha, Model md) {
		// 检查表单是否为空 长度是否为6位和8位

		// 开关
		boolean flag = true;
		if (username == null || username.isBlank()) {
			md.addAttribute("usermsg", "请填写你的名字!");
			flag = false;
		}
		if (username == null || idcard.getBytes().length < 18) {
			md.addAttribute("idmsg", "身份证号错误!");
			flag = false;
		}
		if (password == null || password.getBytes().length < 8) {
			md.addAttribute("pwdmsg", "密码长度是为8位!");
			flag = false;
		}
		
		if (captcha == null || captcha.getBytes().length < 4) {
			md.addAttribute("codemsg", "验证码错误!");
			flag = false;
		}
		//如果表单验证不成功则转发到register页面
		return !flag ? "forward:/register" : "index";
	}

	@PostMapping("/login")
	public String login(String idcard, String password, String captcha, Model md) {
		// 检查表单是否为空 长度是否为6位和8位
		// 开关
		boolean flag = true;
		if (idcard == null || idcard.getBytes().length < 18) {
			md.addAttribute("idmsg", "请检查你的身份证账号!");
			flag = false;
			
		}
		if (password == null || password.getBytes().length < 8) {
			md.addAttribute("pwdmsg", "请检查你的密码!");
			flag = false;
			
		}
		if (captcha == null|| captcha.getBytes().length < 4) {
			md.addAttribute("codemsg", "验证码错误!");
			flag = false;
			
		}
		//如果表单验证不成功则转发到login页面
		return !flag ? "forward:/login" : "index";
	}
}
