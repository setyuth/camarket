package kh.com.camarket.dao;

import kh.com.camarket.model.Product;

import java.util.List;

/**
 * Created by Yuth on 3/13/2017.
 */
public interface ProductDao {
    List<Product> getProductList(Integer offset, Integer maxResults);

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);

    Long countProducts();
}
