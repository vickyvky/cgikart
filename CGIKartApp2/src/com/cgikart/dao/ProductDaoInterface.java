package com.cgikart.dao;
import java.util.ArrayList;
import java.util.List;

import com.cgikart.bean.*;
public interface ProductDaoInterface {
public int createProduct(Product p);


public List<Product>  getProductByCategory(String category);

public Product searchProductByName(String prod_name);
public Product searchProductById(int prod_id);
public int deleteProductById(int prod_id);
public int updateProductById(Product p);
public List<Product> getAllProduct();
public List<Product> viewCart(ArrayList<Integer> cart_prd_ids);

}
