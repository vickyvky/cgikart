package com.cgikart.bean;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.CascadeType;


public class Order {
	
	private int  cust_id;
	private int  index;

	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	private int  prod_id;
	private  int ordId;
	private int totalCost;
	
	public int getCust_id() {
		return cust_id;
	}
	public void setCust_id(int cust_id) {
		this.cust_id = cust_id;
	}
	
	public int getProd_id() {
		return prod_id;
	}
	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}
	public int getOrdId() {
		return ordId;
	}
	public void setOrdId(int ordId) {
		this.ordId = ordId;
	}
	public int getTotalCost() {
		return totalCost;
	}
	public void setTotalCost(int totalCost) {
		this.totalCost = totalCost;
	}

	
}
