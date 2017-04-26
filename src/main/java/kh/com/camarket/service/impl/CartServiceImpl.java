package kh.com.camarket.service.impl;

import kh.com.camarket.dao.CartDao;
import kh.com.camarket.model.Cart;
import kh.com.camarket.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Yuth on 3/29/2017.
 */
@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartDao cartDao;

    @Override
    public Cart getCartById(int cartId) {
        return cartDao.getCartById(cartId);
    }

    @Override
    public void update(Cart cart) {
        cartDao.update(cart);
    }
}
