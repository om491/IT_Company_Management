package com.nt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nt.entity.Employee;

import jakarta.servlet.http.HttpSession;

@Controller
public class HRController {

	@GetMapping("/hrDashboard")
	public String hrDashboard(Model model, HttpSession session) {

		Employee loggedInUser = (Employee) session.getAttribute("loggedInUser");

		if (loggedInUser == null) {
			return "redirect:/login";
		}

		if (!"HR".equalsIgnoreCase(loggedInUser.getRole())) {
			return "redirect:/login";
		}

		model.addAttribute("loggedInUser", loggedInUser);

		return "hrDashboard";
	}
}