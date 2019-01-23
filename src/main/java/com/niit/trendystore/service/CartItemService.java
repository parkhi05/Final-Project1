package com.niit.trendystore.service;

import com.niit.trendystore.model.Cart;
import com.niit.trendystore.model.CartItem;

public interface CartItemService {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);

}
