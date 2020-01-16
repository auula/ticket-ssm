package com.java.ssm.ticket.view.admin;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.code.kaptcha.Constants;
import com.java.ssm.ticket.model.Admin;
import com.java.ssm.ticket.service.AdminService;
import com.java.ssm.ticket.service.OrderService;
import com.java.ssm.ticket.service.UserService;

/**
 * 管理员控制器
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	AdminService as;
	
	@Autowired
	UserService us;
	
	@Autowired
	OrderService os;
	
	@Autowired
	HttpServletRequest req;
	
	
	@GetMapping("/login")
	public String admin() {
		return "admin/login";
	}
	
	@GetMapping("/main")
	public String main() {
		return "admin/main";
	}
	
	@GetMapping("/userList")
	public String userList(Model ui) {
		ui.addAttribute("us", us.getAllUsers());
		return "admin/userList";
	}
	@GetMapping("/orderList")
	public String orderList(Model ui) {
		ui.addAttribute("os", os.allOrders());
		return "admin/orderList";
	}
	@ResponseBody
	@PostMapping("/form")
	public Map<String,Object> form(String code,Admin admin){
		Map<String, Object> rs = new HashMap<String, Object>();
		// 从session里面取Kaptcha里面生成的值并且强转成String
		String cpaText = (String) req.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
		if (!code.equals(cpaText)) {
			rs.put("code", "500");
			rs.put("msg", "验证码错误!");
			return rs;
		}
		if(as.checkAdmin(admin)) {
			rs.put("code", 200);
			rs.put("msg", "登录成功~");
			return rs;
		}
		rs.put("code", 500);
		rs.put("msg", "账号或者密码错误!");
		return rs;
	}
}
