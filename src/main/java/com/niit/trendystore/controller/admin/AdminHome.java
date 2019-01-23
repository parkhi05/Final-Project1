package com.niit.trendystore.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.trendystore.model.Customer;
import com.niit.trendystore.model.Product;
import com.niit.trendystore.service.CustomerService;
import com.niit.trendystore.service.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminHome {
@Autowired
private ProductService productService;
@Autowired
private CustomerService customerService;

@RequestMapping("/adminHome")
public String AdminPage()
{
	return "admin";
}

@RequestMapping("/productInventory")
public String productInventory(Model model){
    List<Product> products = productService.getAllProducts();
    model.addAttribute("products", products);

    return "allProducts";
}
@RequestMapping("/customer")
public String customerManagerment(Model model){

    List<Customer> customerList = customerService.getAllCustomers();
    model.addAttribute("customerList", customerList);

    return "customerManagement";
}

}
