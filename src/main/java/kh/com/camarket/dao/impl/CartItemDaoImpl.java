package kh.com.camarket.dao.impl;

import kh.com.camarket.dao.CartItemDao;
import kh.com.camarket.model.Cart;
import kh.com.camarket.model.CartItem;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Yuth on 3/29/2017.
 */
@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addCartItem(CartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cartItem);
        session.flush();

    }

    @Override
    public void removeCartItem(CartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(cartItem);
        session.flush();
    }

    @Override
    public void removeAllCartItems(Cart cart) {
        List<CartItem> cartItems = cart.getCartItems(); // list all cart items from the cart

        // loop through each of them
        for (CartItem item : cartItems) {
            removeCartItem(item);
        }

    }

    @Override
    public CartItem getCartItemByProductId(int productId) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from CartItem where productId = ?");
        query.setInteger(0, productId);
        session.flush();

        return (CartItem) query.uniqueResult();
        /*return (CartItem) query.setMaxResults(1).uniqueResult();*/
    }
}
