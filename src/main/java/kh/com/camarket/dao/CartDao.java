package kh.com.camarket.dao;

import kh.com.camarket.model.Cart;

import java.io.IOException;

/**
 * Created by Yuth on 3/20/2017.
 */
public interface CartDao {

    Cart getCartById(int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);

}

