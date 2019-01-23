package com.niit.trendystore.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.trendystore.model.Customer;
import com.niit.trendystore.model.User;
import com.niit.trendystore.service.CustomerService;

@Controller
@RequestMapping("/user/cart")
public class CartController {
	@Autowired
    private CustomerService customerService;

    @RequestMapping
    public String getCart(Principal p){
        Customer customer = customerService.getCustomerByUsername(p.getName());
        int cartId = customer.getCart().getCartId();

        return "redirect:/user/cart/" + cartId;
    }
    
    @RequestMapping("/{cartId}")
    public String getCartRedirect(@PathVariable (value = "cartId") int cartId, Model model){
        model.addAttribute("cartId", cartId);

        return "cart";
    }

}
