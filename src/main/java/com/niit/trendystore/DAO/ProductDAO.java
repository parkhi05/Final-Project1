package com.niit.trendystore.DAO;
import com.niit.trendystore.model.Product;


import java.util.List;


public interface ProductDAO {
	
	public List<Product> getAllProducts();
	public Product getProductById(int id);
	public void addProducts(Product product);
	public boolean updateProduct(Product updateProducts);
	public void deleteProduct(int id);
	


}
