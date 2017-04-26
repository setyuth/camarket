package kh.com.camarket.service;

import kh.com.camarket.model.Customer;

import java.util.List;

/**
 * Created by Yuth on 3/28/2017.
 */
public interface CustomerService {

    void addCustomer(Customer customer);
    Customer getCustomerById(int customerId);
    List<Customer> getAllCustomers(Integer offset, Integer maxResults);
    Long countCustomers();
    Customer getCustomerByUsername(String username);
}
