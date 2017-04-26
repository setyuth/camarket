package kh.com.camarket.service.impl;

import kh.com.camarket.dao.CustomerOrderDao;
import kh.com.camarket.model.Cart;
import kh.com.camarket.model.CartItem;
import kh.com.camarket.model.CustomerOrder;
import kh.com.camarket.service.CartService;
import kh.com.camarket.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Yuth on 4/6/2017.
 */
@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Autowired
    private CartService cartService;

    @Override
    public void addCustomerOrder(CustomerOrder customerOrder) {
        customerOrderDao.addCustomerOrder(customerOrder);
    }

    @Override
    public double getCustomerOrderGrandTotal(int cartId) {
        double grandTotal = 0;
        Cart cart = cartService.getCartById(cartId); // retrieve the cart using cart service
        List<CartItem> cartItems = cart.getCartItems(); // list of cart items

        // Loop through the cart items list
        for (CartItem item : cartItems) {
            grandTotal+=item.getTotalPrice();
        }

        return grandTotal;
    }
}
