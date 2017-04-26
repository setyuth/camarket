package kh.com.camarket.dao.impl;

import kh.com.camarket.dao.CartDao;
import kh.com.camarket.model.Cart;
import kh.com.camarket.service.CustomerOrderService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;

/**
 * Created by Yuth on 3/29/2017.
 */
@Repository
@Transactional
public class CartDaoImpl implements CartDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private CustomerOrderService customerOrderService;

    @Override
    public Cart getCartById(int cartId) {
        Session session = sessionFactory.getCurrentSession();

        return (Cart) session.get(Cart.class, cartId);
    }

    @Override
    public Cart validate(int cartId) throws IOException {
        Cart cart = getCartById(cartId);
        /**
         * if the cart doesn't exist or there is not cart item in the cart, then throw IOException for our cart
         */
        if (cart == null || cart.getCartItems().size() == 0) {
            throw new IOException(cartId+"");
        }
        update(cart);
        return cart;
    }

    @Override
    public void update(Cart cart) {
        int cartId = cart.getCartId();
        double grandTotal = customerOrderService.getCustomerOrderGrandTotal(cartId);
        cart.setGrandTotal(grandTotal);

        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cart);

    }
}
