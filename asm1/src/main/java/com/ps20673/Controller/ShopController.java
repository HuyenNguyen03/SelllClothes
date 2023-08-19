package com.ps20673.Controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps20673.dao.AccountDAO;
import com.ps20673.dao.ProductDAO;
import com.ps20673.entity.Account;
import com.ps20673.entity.Product;
import com.ps20673.utils.CookieService;
import com.ps20673.utils.ParamService;
import com.ps20673.utils.SessionService;

@Controller
@RequestMapping("home")
public class ShopController {
	
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
	
	@RequestMapping("categories")
	public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {
		
		Pageable pageable = PageRequest.of(p.orElse(0), 12);
		Page<Product> page = proDAO.findAll(pageable);
		int currentPage = 1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		return "home/categories";
	}
	
	//filter theo giá
	@RequestMapping("price")
	public String filterPrice(Model model, @RequestParam("min") Optional<Integer> min,
			@RequestParam("max") Optional<Integer> max, @RequestParam("p") Optional<Integer> p) {
		Integer minPrice = min.orElse(Integer.MIN_VALUE);
		Integer maxPrice = max.orElse(Integer.MAX_VALUE);
		sessionService.set("max", maxPrice);
		sessionService.set("min", minPrice);
		Pageable pageable = PageRequest.of(p.orElse(0), 999);
		Page<Product> page = proDAO.findByPrice(minPrice, maxPrice, pageable);
		model.addAttribute("page", page);
		return "home/priceshop";
	}
	
	@RequestMapping("search")
	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(sessionService.get("keywords"));
		sessionService.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Product> page = proDAO.findByKeywords("%" + kwords + "%", pageable);
		model.addAttribute("page", page);
		return "home/searchshop";
	}
}
