package kh.com.camarket.service;

import kh.com.camarket.model.Cart;

/**
 * Created by Yuth on 3/29/2017.
 */
public interface CartService {

    Cart getCartById(int cartId);
    void update(Cart cart);
}
