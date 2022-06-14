package com.management.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.management.entity.Product;
import com.management.service.ProductService;

@Controller
public class DemoController {
	
//	   @Autowired
//	   private ProductService productService;
//	   
	  @Autowired
	  private ProductService productService;
	
	
	  @RequestMapping(value = "/hello", method = RequestMethod.GET)
	  public String hello() {
	    return "hello";
	  }
	
	  @RequestMapping("")
	  public String productLisPage(Model model){
	      List<Product> productList = productService.selectAllProduct();
	      model.addAttribute("products", productList);//truyền dữ liệu vào file jsp
	      return "product-list";
	  }
	  
	  @RequestMapping("/create")
	  public String showCreateForm(Model model) {
		  model.addAttribute("product", new Product());
	      return "create";
	  }
	  
	  @RequestMapping(path = "/create", method = RequestMethod.POST)
	  public String createProduct(@ModelAttribute("product") Product product) {
		  product.setDelete(false);
		  productService.insertProduct(product);
	      return "redirect:/";
	  }
	  
	  @RequestMapping("/edit-product/{id}")
	  public String showEditForm(@PathVariable Long id, Model model) {
	     Product product = productService.selectProductById(id);
	     String viewName = "";
	      if (product != null) {
	          viewName = "edit";
	          model.addAttribute("product", product);
	      } else {
	    	     viewName = "error404";
	      }
	      return viewName;
	  }
	  
	  @RequestMapping(path = "/edit-product", method = RequestMethod.POST)
	  public String updateProduct(@ModelAttribute("product") Product product) {
	      Product productCurrent = productService.selectProductById(product.getId());
	      product.setDelete(productCurrent.getDelete());
	      productService.updateProduct(product);
//	      return "redirect:edit-product/" + product.getId();
	      return "redirect:/";
	  }
	  
	  @RequestMapping( path="/delete-product/{id}")
	  public String showSuspended(@PathVariable Long id, Model model) {
	      Product product = productService.selectProductById(id);
	     String viewName = "";
	      if (product != null) {
	    	  viewName = "/delete-form";
	    	  model.addAttribute("product", product);
	      } else {
	         viewName = "error404";
	      }
	      return viewName;
	  }

	  @RequestMapping( path="/delete-product")
	  public String deleteCustomer(@ModelAttribute("product") Product product) {
	      productService.deleteProductById(product.getId());
	      return "redirect:/";
	  }

}
