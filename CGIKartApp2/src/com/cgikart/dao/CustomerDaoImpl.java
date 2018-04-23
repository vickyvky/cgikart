package com.cgikart.dao;
import com.cgikart.util.*;
import javax.persistence.Query;


import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


import com.cgikart.bean.Customer;
import com.cgikart.bean.Product;

public class CustomerDaoImpl implements CustomerDaoInterface {

	@Override
	public int createCustomer(Customer c) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		int id = 0;
		try {
			transaction = session.beginTransaction();
			
			id = (int) session.save(c);
			transaction.commit();
			
		} catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		
		
		
		return id;
		}

	@Override
	public int loginCustomer(String username, String password) {
		// TODO Auto-generated method stub
		boolean userFound = false;
		//Query using Hibernate Query Language
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		Customer result=null;
		try {
			transaction = session.beginTransaction();
		
		String hql =" FROM Customer  WHERE username=:username and password=:password";
		Query query = session.createQuery(hql);
		query.setParameter("username",username);
		query.setParameter("password",password);
		
		 result=(Customer) query.getSingleResult();
			if ((result != null)) {
				userFound= true;
				transaction.commit();
				return result.getId();
			}
			else{
				return -1;
			}
		}
		catch (javax.persistence.NoResultException e) {
			transaction.rollback();
			e.printStackTrace();
			return -1;
		} 
		catch(HibernateException e){
			transaction.rollback();
			e.printStackTrace();
			return -1;
		}
		
		finally {
		session.close();
		}
		
	}

	

}
