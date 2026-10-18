package com.nt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.entity.Employee;
import com.nt.service.AdminService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminService adminService;

	@GetMapping("/dashboard")
	public String adminDashboard(Model model, HttpSession session) {

		System.out.println("===== ADMIN DASHBOARD CALLED =====");

		Employee loggedInUser = (Employee) session.getAttribute("loggedInUser");

		System.out.println("LOGGED IN USER = " + loggedInUser);

		if (loggedInUser == null) {
			System.out.println("USER IS NULL");
			return "redirect:/adminLogin";
		}

		System.out.println("USER NAME = " + loggedInUser.getName());
		System.out.println("USER ROLE = " + loggedInUser.getRole());

		if (!"Admin".equalsIgnoreCase(loggedInUser.getRole())) {
			System.out.println("ROLE IS NOT ADMIN");
			return "redirect:/adminLogin";
		}

		System.out.println("ADMIN AUTHENTICATED");

		List<Employee> users = adminService.getAllUsers();

		List<Employee> employees = adminService.getUsersByRole("EMPLOYEE");

		List<Employee> hrList = adminService.getUsersByRole("HR");

		List<Employee> managers = adminService.getUsersByRole("MANAGER");

		System.out.println("USERS SIZE = " + users.size());
		System.out.println("EMPLOYEES SIZE = " + employees.size());
		System.out.println("HR SIZE = " + hrList.size());
		System.out.println("MANAGERS SIZE = " + managers.size());

		model.addAttribute("loggedInUser", loggedInUser);

		model.addAttribute("users", users);
		model.addAttribute("employees", employees);
		model.addAttribute("hrList", hrList);
		model.addAttribute("managers", managers);

		model.addAttribute("totalUsers", adminService.getTotalUsers());

		model.addAttribute("totalEmployees", adminService.getTotalEmployees());

		model.addAttribute("totalHR", adminService.getTotalHR());

		model.addAttribute("totalManagers", adminService.getTotalManagers());

		model.addAttribute("totalAdmins", adminService.getTotalAdmins());

		return "adminDashboard";
	}

	@GetMapping("/user")
	public String viewUser(@RequestParam("id") int id, Model model, HttpSession session) {

		Employee loggedInUser = (Employee) session.getAttribute("loggedInUser");

		if (loggedInUser == null || !"Admin".equalsIgnoreCase(loggedInUser.getRole())) {

			return "redirect:/adminLogin";
		}

		Employee user = adminService.getUserById(id);

		model.addAttribute("user", user);

		return "adminUserDetails";
	}

	@GetMapping("/deleteUser")
	public String deleteUser(@RequestParam("id") int id, HttpSession session) {

		Employee loggedInUser = (Employee) session.getAttribute("loggedInUser");

		if (loggedInUser == null || !"Admin".equalsIgnoreCase(loggedInUser.getRole())) {

			return "redirect:/adminLogin";
		}

		adminService.deleteUser(id);

		return "redirect:/admin/dashboard";
	}
}