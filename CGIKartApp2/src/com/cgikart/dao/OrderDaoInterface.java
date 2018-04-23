package com.cgikart.dao;

import java.util.ArrayList;
import java.util.List;

import com.cgikart.bean.Order;
import com.cgikart.bean.Product;

public interface OrderDaoInterface {


	public boolean checkoutCart(ArrayList<Integer> cart_prd_ids, int cust_id);

	public List<Order> viewOrders(int cust_id);
	
}
