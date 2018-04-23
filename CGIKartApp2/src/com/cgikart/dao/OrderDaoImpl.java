package com.cgikart.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cgikart.bean.Customer;
import com.cgikart.bean.Order;
import com.cgikart.bean.Product;
import com.cgikart.util.HibernateUtil;

public class OrderDaoImpl implements OrderDaoInterface{
	

	@Override
	public boolean checkoutCart(ArrayList<Integer> prod_ids, int cust_id) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		List<Product> prodList=null;
		List<Order> orderList =new ArrayList<Order>();
		try {
			transaction = session.beginTransaction();
			String hql = "FROM Product  WHERE prod_id IN :prod_ids";
			Query query = session.createQuery(hql);  
			query.setParameter("prod_ids", prod_ids);
			prodList = query.getResultList();
			int sum=0;
			for(Product prd:prodList){
				sum=prd.getProd_price()+sum;
			}
			System.out.println("cust_id "+cust_id+"prod_list"+prodList.hashCode());
			for(int prod_id:prod_ids){
				Order order= new Order();
				order.setOrdId(cust_id+(((int)prodList.hashCode() < 0) ?  (-1*(int)prodList.hashCode()):(int)prodList.hashCode()));
				order.setCust_id(cust_id);
				order.setProd_id(prod_id);
				order.setTotalCost(sum);				
				session.save(order);
				}
			
			
			transaction.commit();
		

		} catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return true;
	}
	public List<Order>  viewOrders(int cust_id)
	{
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		List<Order> results=null;
		List<Product> prods=null;
		List<Product> resultProducts=null;
		ArrayList<Integer> prod_ids= new ArrayList<Integer>();
		try {
			transaction = session.beginTransaction();
			String hql = "FROM Order WHERE cust_id = :cust_id";
			Query query = session.createQuery(hql);  
			query.setParameter("cust_id", cust_id);
			results=query.getResultList();
//			for (Order order:results){
//				prod_ids.add(order.getProd_id());
//			}
//			
//			String hql1 = "FROM Product  WHERE prod_id IN :prod_ids";
//			Query query1 = session.createQuery(hql1); 
//			query1.setParameter("prod_ids", prod_ids);
//
//			resultProducts=query.getResultList();
			transaction.commit();

		} catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return results;
		}
	

	
	


}
