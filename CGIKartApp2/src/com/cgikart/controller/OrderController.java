package com.cgikart.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cgikart.bean.Order;
import com.cgikart.bean.Product;
import com.cgikart.dao.OrderDaoImpl;
import com.cgikart.dao.OrderDaoInterface;
import com.cgikart.dao.ProductDaoImpl;
import com.cgikart.dao.ProductDaoInterface;

@Controller
public class OrderController {

	@RequestMapping(value="/checkoutCart")
	public String checkoutCart(ModelMap model,HttpServletRequest request)
	{
		
		HttpSession session= request.getSession();
		ArrayList<Integer> cart_prd_ids=(ArrayList<Integer>) session.getAttribute("ProductsInCart");
		OrderDaoInterface dao=new OrderDaoImpl();
		boolean result=dao.checkoutCart(cart_prd_ids,(int) session.getAttribute("userLoginSession"));
		if(result){
			session.removeAttribute("ProductsInCart");
		}
		model.addAttribute("order",result);
		return "redirect:/viewOrders";
	}
	@RequestMapping(value="/viewOrders")
	public String viewOrders(ModelMap model,HttpServletRequest request)
	{
		
		HttpSession session= request.getSession();
		OrderDaoInterface dao=new OrderDaoImpl();
		List<Order> result=dao.viewOrders((int) session.getAttribute("userLoginSession"));
		model.addAttribute("Orders",result);
		model.addAttribute("role",(String) session.getAttribute("role"));
		for(Order o:result){
			System.out.println("Cust ID vo"+o.getProd_id());
		}
		return "allOrders";
	}
}
