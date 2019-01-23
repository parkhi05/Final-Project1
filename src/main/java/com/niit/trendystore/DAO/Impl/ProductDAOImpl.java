package com.niit.trendystore.DAO.Impl;

import com.niit.trendystore.model.Product;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.trendystore.DAO.ProductDAO;
import java.util.ArrayList;
import java.util.List;

@Repository
@org.springframework.transaction.annotation.Transactional
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	SessionFactory sessionFactory;

	  public List<Product> getAllProducts() {
		List<Product> allProducts = new ArrayList<Product>();
		allProducts = sessionFactory.openSession().createQuery("from Product").list();
		return allProducts;

	}

	public Product getProductById(int id) {

		return (Product) sessionFactory.openSession().get(Product.class, id);
	}

	public void addProducts(Product product) {
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(product);
		session.flush();

	}
	public boolean updateProduct(Product product)
	{
		System.out.println("Product Name = "+product.getProductID());
		Session session = sessionFactory.openSession();
		session.update(product);
		session.flush();
		return true;
	}
	public void deleteProduct(int id)
	{
		Product p=getProductById(id);
		sessionFactory.getCurrentSession().delete(p);
	}

}
