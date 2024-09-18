package com.product.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.product.dao.ProductDAO;
import com.product.model.Product;

@Controller
public class MainController {
	@Autowired
	private ProductDAO productDAO;
	
	
	@RequestMapping("/**")
	public String noUrl()
	{
		return "nopage";
	}
	@RequestMapping("/")
	public String home(Model m)
	{
		List<Product> products = productDAO.getAllProducts();
		m.addAttribute("products",products);
		return "index";
	}
	
	@RequestMapping("/addProduct")
	public String addProduct(Model m)
	{
		m.addAttribute("title","Add Product");
		return "addProductForm";
	}
	
	@RequestMapping(value="/handle-product",method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request)
	{
		productDAO.createProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
		
	}
	 @RequestMapping("/deleteProduct")
	 public RedirectView deleteProduct(@RequestParam("id") int id,HttpServletRequest request)
	 {
		 productDAO.deleteProduct(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView; 
	 }
	 @RequestMapping("/update")
	 public String updateProductForm(@RequestParam("id") int id,Model m)
	 {
		 Product product=productDAO.getProduct(id);
		 m.addAttribute("product",product);
		 return "update_form";
	 }
	

}
