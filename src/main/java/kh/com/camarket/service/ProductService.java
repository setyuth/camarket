package kh.com.camarket.service;

import kh.com.camarket.model.Product;

import java.util.List;

/**
 * Created by Yuth on 3/24/2017.
 */
public interface ProductService {
    List<Product> getProductList(Integer offset, Integer maxResults);

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);

    Long countProducts();
}
