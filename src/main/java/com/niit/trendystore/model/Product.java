package com.niit.trendystore.model;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

    @Entity
	public class Product implements Serializable{

		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		private int productID;
		private String ProductName;
		private double ProductPrice;
		private int productQty;
		@Transient //tells the database that this column will not be created and its value will be stored separately
		private MultipartFile productImage;
		private String productDesc;
		
		public int getProductID() {
			return productID;
		}
		public void setProductID(int productID) {
			this.productID = productID;
		}
		public String getProductName() {
			return ProductName;
		}
		public void setProductName(String productName) {
			ProductName = productName;
		}
		public double getProductPrice() {
			return ProductPrice;
		}
		public void setProductPrice(double productPrice) {
			ProductPrice = productPrice;
		}
		public int getProductQty() {
			return productQty;
		}
		public void setProductQty(int productQty) {
			this.productQty = productQty;
		}
		public MultipartFile getProductImage() {
			return productImage;
		}
		public void setProductImage(MultipartFile productImage) {
			this.productImage = productImage;
		}
		public String getProductDesc() {
			return productDesc;
		}
		public void setProductDesc(String productDesc) {
			this.productDesc = productDesc;
		}
	
		

}
