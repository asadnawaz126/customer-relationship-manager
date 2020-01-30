package springdemo.controller;


import org.springframework.web.bind.annotation.*;
import springdemo.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import springdemo.service.CustomerService;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @GetMapping("/list")
    public String listCustomers(Model model){

        List<Customer> customers = customerService.getCustomers();

        model.addAttribute("customers", customers);

        return "list-customers";
    }


    @GetMapping("/showFormAddCustomer")
    public String showFormAdCustomer(Model model){

        Customer customer = new Customer();

        model.addAttribute("customer", customer);

        return "customer-form";
    }

    @PostMapping("/saveCustomer")
    public String saveCustomer(@ModelAttribute("customer") Customer customer){

        customerService.saveCustomer(customer);

        return "redirect:/customer/list";
    }

    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("customerId") int id, Model model){

        Customer customer = customerService.getCustomer(id);

        model.addAttribute("customer", customer);

        return "customer-form";
    }

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("customerId") int id){

        customerService.deleteCustomer(id);

        return "redirect:/customer/list";
    }
}
