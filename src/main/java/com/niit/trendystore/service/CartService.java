package com.niit.trendystore.service;

import com.niit.trendystore.model.Cart;

public interface CartService {
	Cart getCartById(int cartId);

    void update(Cart cart);

}
