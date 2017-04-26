package kh.com.camarket.service;

import kh.com.camarket.model.CustomerOrder;

/**
 * Created by Yuth on 4/6/2017.
 */
public interface CustomerOrderService {
    void addCustomerOrder(CustomerOrder customerOrder);
    double getCustomerOrderGrandTotal(int cartId);
}
