package com.ps20673.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class ContactController {
	@RequestMapping("contact")
	public String contact() {
		return "/home/contact";
	}
}
