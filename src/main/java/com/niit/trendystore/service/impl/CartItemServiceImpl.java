package com.niit.trendystore.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.trendystore.DAO.CartItemDAO;
import com.niit.trendystore.model.Cart;
import com.niit.trendystore.model.CartItem;
import com.niit.trendystore.service.CartItemService;

@Service
public class CartItemServiceImpl implements CartItemService {
	 @Autowired
	    private CartItemDAO cartItemDao;

	public void addCartItem(CartItem cartItem) {
		cartItemDao.addCartItem(cartItem);
	}

	public void removeCartItem(CartItem cartItem) {
		cartItemDao.removeCartItem(cartItem);
		
	}

	public void removeAllCartItems(Cart cart) {
		  cartItemDao.removeAllCartItems(cart);
		
	}

	public CartItem getCartItemByProductId(int productId) {
		 return cartItemDao.getCartItemByProductId(productId);
	}

}
