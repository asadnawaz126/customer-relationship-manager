package springdemo.controller;


import springdemo.dao.CustomerDao;
import springdemo.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerDao customerDao;

    @RequestMapping("/list")
    public String listCustomers(Model model){

        List<Customer> customers = customerDao.getCustomers();

        model.addAttribute("customer", customers);

        System.out.println("This is being called");
        return "list-customers";
    }
}
