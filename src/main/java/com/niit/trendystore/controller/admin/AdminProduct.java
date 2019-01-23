package com.niit.trendystore.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import javax.validation.Valid;
import java.io.File;
import java.nio.file.Files;

import com.niit.trendystore.model.Product;
import com.niit.trendystore.service.ProductService;

import javax.servlet.http.HttpServletRequest;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
@Controller
@RequestMapping("/admin")
public class AdminProduct {
	private Path path;

    @Autowired
    private ProductService productService;



	@RequestMapping("/addProducts")
	public String addProductPost(Model model) {
		Product product = new Product();
		model.addAttribute("product", product);
		return "addProducts";

	}

	@RequestMapping(value = "/addProducts", method = RequestMethod.POST)
	public String addProducts(@ModelAttribute("product") Product product, BindingResult result, Model model,HttpServletRequest request) {
		productService.addProducts(product);
		MultipartFile productImage = product.getProductImage();
		Path path;
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		System.out.println("Product ID = "+product.getProductID());
		path = Paths.get(rootDirectory + "/WEB-INF/resources/image/" + product.getProductID() + ".png");

		System.out.println("Path = " + path);

		System.out.println("File name = " + product.getProductImage().getOriginalFilename());

		if (productImage != null && !productImage.isEmpty())

		{
			try

			{
				// filename=p.getImage().getOriginalFilename();
				productImage.transferTo(new File(path.toString()));
				System.out.println("Image uploaded");
			} catch (Exception ex) {

				System.out.println(ex.getMessage());

			}
		}
		return "redirect:/allProducts";
	}

	@RequestMapping("/updateProduct/{id}")
	public String updateProduct(@PathVariable("id") int id, Model model)

	{
		Product product = productService.getProductById(id);
		model.addAttribute("product", product);
		return "updateProduct";

	}

	@RequestMapping(value = "/updateProduct", method = RequestMethod.POST)
	public String updateProducts(@ModelAttribute("product") Product product, BindingResult result, Model model,HttpServletRequest request) {
		productService.updateProduct(product);
		MultipartFile productImage = product.getProductImage();
		Path path;
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		System.out.println("Product ID = "+product.getProductID());
		path = Paths.get(rootDirectory + "/WEB-INF/resources/image/" + product.getProductID() + ".png");

		System.out.println("Path = " + path);

		System.out.println("File name = " + product.getProductImage().getOriginalFilename());

		if (productImage != null && !productImage.isEmpty())

		{
			try

			{
				// filename=p.getImage().getOriginalFilename();
				productImage.transferTo(new File(path.toString()));
				System.out.println("Image uploaded");
			} catch (Exception ex) {

				System.out.println(ex.getMessage());

			}
		}
		return "redirect:/allProducts";
	}

	@RequestMapping("/deleteProduct/{id}")
	public String deleteProduct(@PathVariable("id") int id) {
		this.productService.deleteProduct(id);
		return "redirect:/allProducts";
	}
	
}
