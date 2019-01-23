package com.niit.trendystore.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.trendystore.DAO.CustomerOrderDAO;
import com.niit.trendystore.model.Cart;
import com.niit.trendystore.model.CartItem;
import com.niit.trendystore.model.CustomerOrder;
import com.niit.trendystore.service.CustomerOrderService;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {
	@Autowired
    private CustomerOrderDAO customerOrderDao;

	public void addCustomerOrder(CustomerOrder customerOrder) {
		customerOrderDao.addCustomerOrder(customerOrder);
   
		
	}

	public double getCustomerOrderGrandTotal(int cartId) {
		
      return 0;
	
	}



}
