package kh.com.camarket.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Yuth on 3/17/2017.
 */
@Entity
public class CartItem implements Serializable{


    private static final long serialVersionUID = 163888645447869209L;

    @Id
    @GeneratedValue
    private int cartItemId;

    @ManyToOne
    // It's mean CartItem table is many and Cart table is one. That is Many to one relationship
    @JoinColumn(name = "cartId") //It's mean we gonna create one cardId field in cartItem table to refer to Cart table
    @JsonIgnore
    //when we try to tell spring to convert this class object into json format, then this field gonna be excepted
    private Cart cart;

    @ManyToOne
    // It's mean CartItem table is many and Product table is one. That is Many to one relationship
    @JoinColumn(name = "productId") //It's mean we gonna create one productId field in cartItem table to refer to Product table
    private Product product;

    private int quantity; // the number of product we gonna add to the cart
    private double totalPrice; // total price of this cart item



    public int getCartItemId() {
        return cartItemId;
    }

    public void setCartItemId(int cartItemId) {
        this.cartItemId = cartItemId;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
}
