package com.java.ssm.ticket.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 预定控制器
 *
 */
@Controller
@RequestMapping("/")
public class ReserveConteroller {
	
	@GetMapping("/reserve")
	public String reserve() {
		
		return "reserve";
	}
}
