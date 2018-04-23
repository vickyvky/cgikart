package com.cgikart.dao;
import java.util.List;

import com.cgikart.bean.*;
public interface CustomerDaoInterface {
public int createCustomer(Customer c);
public int loginCustomer(String username, String password);



}
