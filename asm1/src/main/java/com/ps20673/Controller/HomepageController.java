package com.ps20673.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps20673.dao.AccountDAO;
import com.ps20673.dao.OrderDetailDAO;
import com.ps20673.dao.ProductDAO;
import com.ps20673.utils.CookieService;
import com.ps20673.utils.ParamService;
import com.ps20673.utils.SessionService;
import com.ps20673.entity.Category;
import com.ps20673.entity.Product;
import com.ps20673.entity.Top10;

@Controller
public class HomepageController {
	
	@Autowired
	CookieService cookieService;
	
	@Autowired
	ParamService paramService;
	
	@Autowired
	SessionService sessionService;
	
	@Autowired
	AccountDAO accDAO;
	
	@Autowired 
	ProductDAO proDAO;
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	@RequestMapping("home/index")
	public String shop(Model model) {
		Pageable pageable = PageRequest.of(0, 10); 
		Page<Top10> topList = orderDetailDAO.getTop10(pageable);
		List<Product> wmList = proDAO.findByCategoryHome("0000");
		model.addAttribute("WMitems", wmList);
		List<Product> mList = proDAO.findByCategoryHome("1111");
		model.addAttribute("Mitems", mList);
		model.addAttribute("topList", topList);
		
		return "home/index";
	}
	
//	@RequestMapping("home/index")
//	public String shop1(Model model, @RequestParam("p") Optional<Integer> p) {
//		Pageable pageable = PageRequest.of(p.orElse(0), 10);
//		Page<Product> page = proDAO.findAll(pageable);
//		model.addAttribute("page", page);
//		return "home/index";
//	}
}
