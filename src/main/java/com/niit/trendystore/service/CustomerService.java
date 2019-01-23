package com.niit.trendystore.service;

import java.util.List;

import com.niit.trendystore.model.Customer;

public interface CustomerService {
	void addCustomer(Customer customer);

    Customer getCustomerById(int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);

}
