package kh.com.camarket.controller.admin;

import kh.com.camarket.model.Customer;
import kh.com.camarket.model.Product;
import kh.com.camarket.service.CustomerService;
import kh.com.camarket.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Yuth on 3/24/2017.
 */
@Controller
@RequestMapping("/admin")
public class AdminHome {
    @Autowired
    private ProductService productService;

    @Autowired
    private CustomerService customerService;

    @RequestMapping
    public String adminPage() {
        return "admin";
    }

    @RequestMapping("/productInventory")
    public String productInventory(Model model, Integer offset, Integer maxResults) {
        List<Product> products = productService.getProductList(offset, maxResults);
        model.addAttribute("products", products);
        model.addAttribute("count", productService.countProducts());
        model.addAttribute("offset", offset);

        return "productInventory";
    }

    @RequestMapping("/customer")
    public String customerManagement(Model model, Integer offset, Integer maxResults) {
        List<Customer> customerList = customerService.getAllCustomers(offset, maxResults);
        model.addAttribute("customerList", customerList);
        model.addAttribute("count", customerService.countCustomers());
        model.addAttribute("offset", offset);

        return "customerManagement";
    }
}
