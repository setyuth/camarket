package kh.com.camarket.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import javax.validation.constraints.Min;
import java.io.Serializable;
import java.util.List;

/**
 * Created by Yuth on 3/9/2017.
 */
@Entity
public class Product implements Serializable{
    /*
    The later section we will use the webflow to check our checkout process.
    Spring WebFlow is a framework that can create it's own seft-content in Work flow process, so in that case
    we gonna make every models in the web flow as Serializable.
    That's why we implements the Serializable interface for the model.
     */

    private static final long serialVersionUID = 4212746801248751883L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int productId;

    @NotEmpty(message = "The product name must not be empty!")
    private String productName;
    private String productCategory;
    private String productDescription;

    @Min(value = 0, message = "The product price must not be less than Zero!")
    private double productPrice;
    private String productCondition;
    private String productStatus;

    @Min(value = 0, message = "The product unit must not be less than Zero!")
    private int unitInStock;
    private String productManufacturer;

    @Transient
    // hibernate will ignore to save the product image into database table field
    private MultipartFile productImage;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    /*
    - It's mean Product table is one and CartItem table is many. That is OneToMany relationship
    - mappedby product is mean we gonna create the product field in CartItem table for refer to Product Table
    - CascadeType all is mean if we gonna delete any product in Product table, then it's gonna automatically get deleted in CartItem table too
    - FetchType eager is mean we gonna fetch data every time for get data to compare. Default is fetchType is lazy
    */
    @JsonIgnore
    //when we try to tell spring to convert this class object into json format, then this field gonna be excepted
    private List<CartItem> cartItemList;

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductCondition() {
        return productCondition;
    }

    public void setProductCondition(String productCondition) {
        this.productCondition = productCondition;
    }

    public String getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(String productStatus) {
        this.productStatus = productStatus;
    }

    public int getUnitInStock() {
        return unitInStock;
    }

    public void setUnitInStock(int unitInStock) {
        this.unitInStock = unitInStock;
    }

    public String getProductManufacturer() {
        return productManufacturer;
    }

    public void setProductManufacturer(String productManufacturer) {
        this.productManufacturer = productManufacturer;
    }

    public MultipartFile getProductImage() {
        return productImage;
    }

    public void setProductImage(MultipartFile productImage) {
        this.productImage = productImage;
    }

    public List<CartItem> getCartItemList() {
        return cartItemList;
    }

    public void setCartItemList(List<CartItem> cartItemList) {
        this.cartItemList = cartItemList;
    }
}
