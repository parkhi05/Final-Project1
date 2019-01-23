package com.niit.trendystore.service;

import java.util.List;

import com.niit.trendystore.model.Product;

public interface ProductService  {
	public List<Product> getAllProducts();
	public Product getProductById(int id);
	public void addProducts(Product product);
	public boolean updateProduct(Product updateProducts);
	public void deleteProduct(int id);
	

}
