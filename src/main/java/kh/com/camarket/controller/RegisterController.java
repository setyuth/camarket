package kh.com.camarket.controller;

import kh.com.camarket.model.BillingAddress;
import kh.com.camarket.model.Customer;
import kh.com.camarket.model.ShippingAddress;
import kh.com.camarket.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

/**
 * Created by Yuth on 3/28/2017.
 */
@Controller
public class RegisterController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/register")
    public String registerCustomer(Model model) {
        Customer customer = new Customer();
        BillingAddress billingAddress = new BillingAddress();
        ShippingAddress shippingAddress = new ShippingAddress();

        customer.setBillingAddress(billingAddress);
        customer.setShippingAddress(shippingAddress);

        model.addAttribute("customer", customer);

        return "registerCustomer";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerCustomerPost(@Valid @ModelAttribute("customer") Customer customer,
                                       BindingResult result,
                                       Model model,
                                       Integer offset, Integer maxResults) {

        if (result.hasErrors()) {
            return "registerCustomer";
        }

        List<Customer> customerList = customerService.getAllCustomers(offset, maxResults);
        for (int i=0; i< customerList.size(); i++) {
            if (customer.getCustomerEmail().equals(customerList.get(i).getCustomerEmail())) {
                model.addAttribute("emailMsg", "Email already existed");

                return "registerCustomer";
            }
            if (customer.getUsername().equals(customerList.get(i).getUsername())) {
                model.addAttribute("usernameMsg", "Username already existed");

                return "registerCustomer";
            }
        }

        customer.setEnabled(true);

        customerService.addCustomer(customer);

        return "registerCustomerSuccess";
    }
}
