package com.niit.trendystore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.trendystore.DAO.CustomerDAO;
import com.niit.trendystore.model.Customer;
import com.niit.trendystore.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {
	 @Autowired
	    private CustomerDAO customerDao;

	public void addCustomer(Customer customer) {
		 customerDao.addCustomer(customer);
		
	}

	public Customer getCustomerById(int customerId) {
		
		 return customerDao.getCustomerById(customerId);
	}

	public List<Customer> getAllCustomers() {
		 return customerDao.getAllCustomers();
	
	}

	public Customer getCustomerByUsername(String username) {
		 return customerDao.getCustomerByUsername(username);
	}

}
