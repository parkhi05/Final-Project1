package com.niit.trendystore.service;

import com.niit.trendystore.model.CustomerOrder;

public interface CustomerOrderService {
	 void addCustomerOrder(CustomerOrder customerOrder);

	    double getCustomerOrderGrandTotal(int cartId);

}
