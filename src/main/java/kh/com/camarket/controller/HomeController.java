package kh.com.camarket.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Yuth on 3/24/2017.
 */
@Controller
public class HomeController {
    /*
    * In this Home Controller, we gonna develop for only bootstrap our website to display home page
    * */
    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @RequestMapping("/login")
    public String login(@RequestParam(value = "error", required = false) String error,
                        @RequestParam(value = "logout", required = false) String logout,
                        Model model) {
        if (error!=null) {
            model.addAttribute("error", "Invalid username and password!");
        }

        if (logout!=null) {
            model.addAttribute("msg", "You have been logout successfully");
        }
        return "login";
    }

}
