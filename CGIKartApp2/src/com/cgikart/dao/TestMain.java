package com.cgikart.dao;



import java.util.Iterator;
import java.util.List;

import com.cgikart.bean.Customer;
import com.cgikart.bean.Product;

public class TestMain {
public static void main(String[] args) {
	
//	Customer c=new Customer();
//	c.setAddress("Bangalre");
//	c.setEmail("hello@gmail.com");
//	c.setMobile(93939393993L);
//	c.setName("mohan");
//	c.setPassword("secret");
//	c.setUsername("heljlonamke1");
//	
//	CustomerDaoInterface dao=new CustomerDaoImpl();
//	dao.createCustomer(c);
	
	ProductDaoInterface dao=new ProductDaoImpl();
	List <Product>l=dao.getProductByCategory("smartphone");
	
	//List<Product> pList=pService.getAllProducts();
	
	Iterator it=l.iterator();
	while(it.hasNext())
	{
		Product pr=(Product)it.next();
		System.out.println(pr.getProd_id());
		System.out.println(pr.getProd_name());
		System.out.println(pr.getPath());
		//System.out.println(pr.getDescription());
		System.out.println("-----------------------");
	}

	
}
}
