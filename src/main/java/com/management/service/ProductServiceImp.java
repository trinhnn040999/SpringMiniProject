package com.management.service;//triển khai interface ProductService

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.management.entity.Product;
import com.management.mapper.ProductMapper;
@Service
public class ProductServiceImp implements ProductService{

	  @Autowired
	  private ProductMapper productMapper;

	    public int insertProduct(Product product) {
	        return productMapper.insertProduct(product);
	    }

	    public int updateProduct(Product product) {
	        return productMapper.updateProduct(product);
	    }

	    public int deleteProductById(long productId) {
	        return productMapper.deleteProductById(productId);
	    }

	    public List<Product> selectAllProduct() {
	        return productMapper.selectAllProduct();
	    }

	    public Product selectProductById(long productId) {
	        return productMapper.selectProductById(productId);
	    }
}
