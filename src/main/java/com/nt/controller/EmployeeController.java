package com.nt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nt.entity.Employee;

import jakarta.servlet.http.HttpSession;

@Controller
public class EmployeeController {

    @GetMapping("/employeeDashboard")
    public String employeeDashboard(Model model, HttpSession session) {

        Employee loggedInUser =
                (Employee) session.getAttribute("loggedInUser");

        if (loggedInUser == null) {
            return "redirect:/login";
        }

        if (!"Employee".equalsIgnoreCase(loggedInUser.getRole())) {
            return "redirect:/login";
        }

        model.addAttribute("loggedInUser", loggedInUser);

        System.out.println("Employee Dashboard Controller Called");

        return "employeeDashboard";
    }
}