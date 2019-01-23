package com.niit.trendystore.DAO;

import java.io.IOException;

import com.niit.trendystore.model.Cart;

public interface CartDAO {

    Cart getCartById(int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);

}
