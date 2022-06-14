package com.management.service;//trung gian giữa controller và mapper

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.management.entity.Product;

@Component
public interface ProductService {
	    public int insertProduct(Product product);
	    public int updateProduct(Product product);
	    public int deleteProductById(long productId);
	    public List<Product> selectAllProduct();
	    public Product selectProductById(long productId);
}
