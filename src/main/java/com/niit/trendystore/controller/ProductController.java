package com.niit.trendystore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.trendystore.model.Product;
import com.niit.trendystore.service.ProductService;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

@Controller
public class ProductController {

	 private Path path;

	@Autowired
	ProductService productService;

	@RequestMapping("/allProducts")
	public String getAllProducts(Model m) {
		List<Product> allProducts;
		allProducts = productService.getAllProducts();
		for (Product p : allProducts) {
			System.out.println(p.getProductID() + "  " + p.getProductName());
		}
		m.addAttribute("allProducts", allProducts);
		return "allProducts";

	}

	@RequestMapping("/viewProduct/{id}")
	public String viewProduct(@PathVariable("id") int id, Model model) {
		model.addAttribute("product", this.productService.getProductById(id));

		return "viewProduct";

	}

	/*@RequestMapping("/addProducts")
	public String addProductPost(Model model) {
		Product product = new Product();
		model.addAttribute("product", product);
		return "addProducts";

	}*/


	/*@RequestMapping(value = "/addProducts", method = RequestMethod.POST)
	public ModelAndView insertProduct(@ModelAttribute("insertProductCommand") Product product,
			HttpServletRequest request, BindingResult result) {
		String filename = null;
		int res = 0;
		ServletContext context = request.getServletPath();
		String path = context.getRealPath("./resources/" + product.getProductID() + ".jpg");
		System.out.println("Path= " + path);
		System.out.println("File name = " + product.getProductImage().getOriginalFilename());
		File f = new File(path);
		if (!product.getProductImage().isEmpty()) {
			try {
				byte[] bytes = product.getProductImage().getBytes();
				BufferedOutputStream bs = new BufferedOutputStream(new

				FileOutputStream(f));

				bs.write(bytes);
				bs.close();
				System.out.println("Image uploaded");
			} catch (Exception ex) {
				System.out.println(ex.getMessage());
			}

		}
	}*/

}
