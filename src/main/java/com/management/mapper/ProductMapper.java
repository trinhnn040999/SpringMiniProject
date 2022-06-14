package com.management.mapper;  //interface khai báo phương thức thao tác với db, map với mapper.xml

import java.util.List;

import com.management.entity.Product;

public interface ProductMapper {
	public int insertProduct(Product product);
    public int updateProduct(Product product);
    public int deleteProductById(long productId);
    public List<Product> selectAllProduct();
    public Product selectProductById(long productId);
}
