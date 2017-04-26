package kh.com.camarket.dao.impl;

import kh.com.camarket.dao.ProductDao;
import kh.com.camarket.model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Yuth on 3/13/2017.
 */
@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public List<Product> getProductList(Integer offset, Integer maxResults) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product");
        query.setFirstResult(offset!=null?offset:0);
        query.setMaxResults(maxResults!=null?maxResults:3);
        List<Product> productList = query.list();
        session.flush();
        return productList;
    }

    @Override
    public Product getProductById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Product product = (Product) session.get(Product.class, id);
        session.flush();

        return product;
    }

    @Override
    public void addProduct(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
    }

    @Override
    public void editProduct(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
    }

    @Override
    public void deleteProduct(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(product);
        session.flush();
    }

    @Override
    public Long countProducts() {
        return (Long) sessionFactory.openSession()
                .createCriteria(Product.class)
                .setProjection(Projections.rowCount())
                .uniqueResult();
    }
}
