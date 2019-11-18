package springdemo.dao;


import springdemo.entity.Customer;

import java.util.List;

public interface CustomerDao {

    public List<Customer> getCustomers();
}
