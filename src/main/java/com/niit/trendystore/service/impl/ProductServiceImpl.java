package com.niit.trendystore.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.trendystore.DAO.ProductDAO;
import com.niit.trendystore.model.Product;
import com.niit.trendystore.service.ProductService;

import java.util.List;

import javax.transaction.Transactional;

@Service
public class ProductServiceImpl  implements ProductService {
	
		
		
	@Autowired
	ProductDAO productDao;
	public List<Product>getAllProducts()
	{
		return productDao.getAllProducts();
	}
	public Product getProductById(int id) {
	
		  return productDao.getProductById(id);
	}
	public void addProducts(Product product)
	{
		 productDao.addProducts(product);
	}
	public boolean updateProduct(Product updateProducts) {
		
		return productDao.updateProduct(updateProducts);
	}
	public void deleteProduct(int id) {
		productDao.deleteProduct(id);
		
	}


	

	

}
