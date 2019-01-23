package com.niit.trendystore.DAO.Impl;

import java.io.IOException;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.trendystore.DAO.CartDAO;
import com.niit.trendystore.model.Cart;
import com.niit.trendystore.service.CustomerOrderService;

@Repository
@Transactional
public class CartDAOImpl implements CartDAO {

    @Autowired
    private SessionFactory sessionFactory;
    @Autowired
    private CustomerOrderService customerOrderService;


	public Cart getCartById(int cartId) {
		 Session session = sessionFactory.getCurrentSession();
	        return (Cart) session.get(Cart.class, cartId);
	}

	public Cart validate(int cartId) throws IOException {
		Cart cart = getCartById(cartId);
        if(cart == null || cart.getCartItems().size() == 0){
            throw new IOException(cartId + "");
	
	}
        update(cart);
        return cart;
	}

	public void update(Cart cart) {
		int cartId = cart.getCartId();
        double grandTotal = customerOrderService.getCustomerOrderGrandTotal(cartId);
        cart.setGrandTotal(grandTotal);
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cart);
		
	}

}
