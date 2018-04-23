package com.cgikart.dao;
import com.cgikart.util.*;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;


import com.cgikart.util.HibernateUtil;
import com.cgikart.bean.*;

//add products
public class ProductDaoImpl implements ProductDaoInterface {

	@Override
	public int createProduct(Product p) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		int id = 0;
		try {
			transaction = session.beginTransaction();
			
			id = (int) session.save(p);
			transaction.commit();
			
		} catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return id;
		}
	
	
// list product by category
	public List<Product>  getProductByCategory(String category)
	{
		
		
//		// select * from Product where category=?
//		String hql = "FROM Employee E WHERE E.id = 10";
//		Query query = session.createQuery(hql);
//		List results = query.list();
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		//int id = 0;
		List<Product> results=null;
		try {
			transaction = session.beginTransaction();
			String hql = "FROM Product  WHERE prod_category =:cat";
			Query query = session.createQuery(hql);
			query.setParameter("cat", category);//    setParameter("cat", category);   
			
		 results=query.getResultList();

		
		} catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return results;
		}
	
	public List<Product>  getAllProduct()
	{
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		List<Product> results=null;
		try {
			transaction = session.beginTransaction();
			String hql = "FROM Product";
			Query query = session.createQuery(hql);  
			
		 results=query.getResultList();

		
		} catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return results;
		}
	

	//Search product
	public Product  searchProductByName(String prod_name)
	{		
	
	Session session = HibernateUtil.getSessionFactory().openSession();
	Transaction transaction = null;
	Product result=null;
	try {
		transaction = session.beginTransaction();
		String hql = "FROM Product  WHERE prod_name like :prod_name";
		Query query = session.createQuery(hql);
		query.setParameter("prod_name", prod_name);
		
	 result=(Product) query.getSingleResult();
	
	} catch (HibernateException e) {
		transaction.rollback();
		e.printStackTrace();
	} finally {
		session.close();
	}
	return result;
	}


// product list with delete
	public int deleteProductById(int id)
	{
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		int result=0;
		try {
			transaction = session.beginTransaction();
			String hql = "DELETE Product WHERE prod_id =:pid";
			Query query = session.createQuery(hql);
			query.setParameter("pid", id);
		  result=query.executeUpdate();
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
			return result;
	}


	@Override
	public int updateProductById(Product p) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		int result=0;
		try {
			transaction = session.beginTransaction();
			session.update(p);
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
			return result;
	}


	@Override
	public Product searchProductById(int prod_id) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		Product result=null;
		try {
			transaction = session.beginTransaction();
			String hql = "FROM Product  WHERE prod_id = :prod_id";
			Query query = session.createQuery(hql);
			query.setParameter("prod_id", prod_id);//    setParameter("cat", category);   
			
		 result=(Product) query.getSingleResult();
		
		} catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}


	public List<Product> viewCart(ArrayList<Integer> cart_prd_ids) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		List<Product> cartProducts=null;
		try {
			transaction = session.beginTransaction();
			String hql = "FROM Product  WHERE prod_id IN :prod_ids";
			Query query = session.createQuery(hql);
			query.setParameter("prod_ids", cart_prd_ids);
			cartProducts=query.getResultList();
			
		}
		catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return cartProducts;
	}

}
