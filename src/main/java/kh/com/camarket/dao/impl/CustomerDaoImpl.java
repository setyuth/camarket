package kh.com.camarket.dao.impl;

import kh.com.camarket.dao.CustomerDao;
import kh.com.camarket.model.Authorities;
import kh.com.camarket.model.Cart;
import kh.com.camarket.model.Customer;
import kh.com.camarket.model.Users;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Yuth on 3/28/2017.
 */
@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao {


    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public void addCustomer(Customer customer) {
        Session session = sessionFactory.getCurrentSession();

        customer.getBillingAddress().setCustomer(customer);
        customer.getShippingAddress().setCustomer(customer);

        session.saveOrUpdate(customer); // save customer here, in order to generate the customer id
        session.saveOrUpdate(customer.getBillingAddress());
        session.saveOrUpdate(customer.getShippingAddress());

        Users newUser = new Users();
        newUser.setUsername(customer.getUsername());
        newUser.setPassword(customer.getPassword());
        newUser.setEnabled(true);
        newUser.setCustomerId(customer.getCustomerId()); // then we can retrieve the customer id from the saved customer above

        Authorities newAuthority = new Authorities();
        newAuthority.setUsername(customer.getUsername());
        newAuthority.setAutority("ROLE_USER");

        session.saveOrUpdate(newUser);
        session.saveOrUpdate(newAuthority);

        //Generate cart to be binding to customer
        Cart newCart = new Cart();
        newCart.setCustomer(customer); // new cart set the customer as customer
        customer.setCart(newCart); // set cart from customer as new cart

        session.saveOrUpdate(customer); // we save it again because customer field set to this new cart
        session.saveOrUpdate(newCart);

        session.flush();
    }

    @Override
    public Customer getCustomerById(int customerId) {
        Session session = sessionFactory.getCurrentSession();
        return (Customer) session.get(Customer.class, customerId);
    }

    @Override
    public List<Customer> getAllCustomers(Integer offset, Integer maxResults) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Customer");
        query.setFirstResult(offset!=null?offset:0);
        query.setMaxResults(maxResults!=null?maxResults:3);

        List<Customer> customerList = query.list();

        return customerList;
    }

    public Long countCustomers() {
        return (Long) sessionFactory.openSession()
                .createCriteria(Customer.class)
                .setProjection(Projections.rowCount())
                .uniqueResult();
    }

    @Override
    public Customer getCustomerByUsername(String username) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Customer where username = ?");
        query.setString(0, username);

        return (Customer) query.uniqueResult();
    }
}
