package com.niit.trendystore.DAO;

import com.niit.trendystore.model.Cart;
import com.niit.trendystore.model.CartItem;

public interface CartItemDAO {
	void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);

}
