package com.nt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.entity.Department;
import com.nt.entity.Employee;
import com.nt.service.HomeService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

	@Autowired
	private HomeService homeService;

	@GetMapping("/")
	public String index() {
		return "index";
	}

	@PostMapping("/registerUser")
	public String registerUser(@ModelAttribute Employee e, Model model) {

		if (e.getDepartment() == null) {
			e.setDepartment(new Department());
		}

		boolean isAdded = homeService.registerUser(e);

		if (isAdded) {
			model.addAttribute("successMsg", "Record added successfully...!");
		} else {
			model.addAttribute("errorMsg", "Unable to add record");
		}

		return "login";
	}

	@GetMapping("/registerUser")
	public String registerPage() {
		return "register";
	}

	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@GetMapping("/adminLogin")
	public String showAdminLogin() {
		return "adminLogin";
	}

	@RequestMapping("/loginUser")
	public String loginUser(@RequestParam("userName") String userName, @RequestParam("password") String password,
			HttpSession session, Model model) {

		Employee employee = homeService.loginUser(userName, password);

		if (employee != null) {

			session.setAttribute("loggedInUser", employee);
			session.setAttribute("userName", employee.getUserName());

			System.out.println("Login Success..!");
			System.out.println("User Role : " + employee.getRole());

			if ("Admin".equalsIgnoreCase(employee.getRole())) {
				return "redirect:/admin/dashboard";

			} else if ("HR".equalsIgnoreCase(employee.getRole())) {
				return "redirect:/hrDashboard";

			} else if ("Manager".equalsIgnoreCase(employee.getRole())) {
				return "redirect:/managerDashboard";

			} else if ("Employee".equalsIgnoreCase(employee.getRole())) {
				return "redirect:/employeeDashboard";

			} else {
				model.addAttribute("errorMsg", "Invalid user role.");
				return "login";
			}
		}

		model.addAttribute("errorMsg", "Invalid username or password.");

		return "login";
	}

	@PostMapping("/adminLogin")
	public String adminLogin(@RequestParam("userName") String userName, @RequestParam("password") String password,
			HttpSession session, Model model) {

		boolean login = homeService.adminLogin(userName, password);

		if (login) {

			Employee admin = new Employee();

			admin.setUserName(userName);
			admin.setRole("Admin");
			admin.setName("Administrator");

			session.setAttribute("loggedInUser", admin);
			session.setAttribute("adminUserName", userName);

			System.out.println("Admin Login Success..!");
			System.out.println("Admin Username : " + userName);
			System.out.println("Admin Role : " + admin.getRole());

			return "redirect:/admin/dashboard";
		}

		model.addAttribute("errorMsg", "Invalid administrator credentials.");

		return "adminLogin";
	}

	@GetMapping("/dashboard")
	public String dashboard(HttpSession session) {

		if (session.getAttribute("userName") == null) {
			return "redirect:/login";
		}

		return "dashboard";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {

		session.invalidate();

		return "redirect:/";
	}
}