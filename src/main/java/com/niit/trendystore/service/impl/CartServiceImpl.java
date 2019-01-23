package com.niit.trendystore.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.trendystore.DAO.CartDAO;
import com.niit.trendystore.model.Cart;
import com.niit.trendystore.service.CartService;

@Service
public class CartServiceImpl implements CartService{
	 @Autowired
	    private CartDAO cartDao;

	public Cart getCartById(int cartId) {
		
		   return cartDao.getCartById(cartId);
	}

	public void update(Cart cart) {
		 cartDao.update(cart);
		
	}

}
