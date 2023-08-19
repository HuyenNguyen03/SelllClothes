package com.ps20673.AdminController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@RequestMapping("admin/index")
	public String index() {
		return "admin/index";
	}
	
}
