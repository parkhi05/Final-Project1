package com.niit.trendystore.DAO.Impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.trendystore.DAO.CustomerDAO;
import com.niit.trendystore.model.Authorities;
import com.niit.trendystore.model.Cart;
import com.niit.trendystore.model.Customer;
import com.niit.trendystore.model.User;

@Repository
@Transactional
public class CustomerDAOImpl implements CustomerDAO {

    @Autowired
    private SessionFactory sessionFactory;

	public void addCustomer(Customer customer) {
		 Session session = sessionFactory.openSession();

	        customer.getBillingAddress().setCustomer(customer);
	        customer.getShippingAddress().setCustomer(customer);

	        session.saveOrUpdate(customer);
	        session.saveOrUpdate(customer.getBillingAddress());
	        session.saveOrUpdate(customer.getShippingAddress());

	        User newUser = new User();
	        newUser.setUsername(customer.getUsername());
	        newUser.setPassword(customer.getPassword());
	        newUser.setEnabled(true);
	        newUser.setCustomerId(customer.getCutomerId());

	        Authorities newAuthorities = new Authorities();
	        newAuthorities.setUsername(customer.getUsername());
	        newAuthorities.setAuthority("ROLE_USER");

	        session.saveOrUpdate(newUser);
	        session.saveOrUpdate(newAuthorities);

	        Cart newCart = new Cart();
	        newCart.setCustomer(customer);
	        customer.setCart(newCart);

	        session.saveOrUpdate(customer);
	        session.saveOrUpdate(newCart);

	        session.flush();
		
	}

	public Customer getCustomerById(int customerId) {
	
		Session session = sessionFactory.getCurrentSession();
        return (Customer) session.get(Customer.class, customerId);
	}

	public List<Customer> getAllCustomers() {
		  Session session = sessionFactory.getCurrentSession();
	        Query query = session.createQuery("from Customer");
	        List<Customer> customerList = query.list();

	        return customerList;
	
	}

	public Customer getCustomerByUsername(String username) {
		 Session session = sessionFactory.getCurrentSession();
	        Query query = session.createQuery("from Customer where username = ?");
	        query.setString(0, username);


	        return (Customer) query.uniqueResult();
		
	}

}
