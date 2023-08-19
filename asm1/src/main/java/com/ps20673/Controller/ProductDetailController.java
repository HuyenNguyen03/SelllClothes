package com.ps20673.Controller;

import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps20673.entity.Product;
import com.ps20673.dao.AccountDAO;
import com.ps20673.dao.ProductDAO;
import com.ps20673.entity.Account;
import com.ps20673.utils.CookieService;
import com.ps20673.utils.ParamService;
import com.ps20673.utils.SessionService;

@Controller
@RequestMapping("home")
public class ProductDetailController {

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

	@RequestMapping("single")
	public String Product() {
		return "home/single";
	}

	@RequestMapping(value = "single/detail/{id}")
	public String view(Model model, @PathVariable("id") int id) {
		Product product = new Product();
		List<Product> products = proDAO.findAll();
		for (Product pr : products) {
			if (pr.getId() == id) {
				product = pr;
				break;
			}
		}
		model.addAttribute("product", products);
		model.addAttribute("pr", product);
		return "home/single";
	}
}
