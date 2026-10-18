package com.nt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nt.entity.Employee;
import com.nt.entity.Team;
import com.nt.service.ProjectService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ManagerController {

	@Autowired
	private ProjectService projectService;

	@GetMapping("/managerDashboard")
	public String managerDashboard(Model model, HttpSession session) {

		Employee loggedInUser = (Employee) session.getAttribute("loggedInUser");

		System.out.println("================================");
		System.out.println("MANAGER DASHBOARD CALLED");
		System.out.println("SESSION ID = " + session.getId());
		System.out.println("LOGGED IN USER = " + loggedInUser);

		if (loggedInUser == null) {
			System.out.println("USER IS NULL");
			return "redirect:/login";
		}

		System.out.println("USER ID = " + loggedInUser.getId());
		System.out.println("USER NAME = " + loggedInUser.getName());
		System.out.println("USER ROLE = " + loggedInUser.getRole());

		if (!"Manager".equalsIgnoreCase(loggedInUser.getRole())) {
			System.out.println("INVALID ROLE");
			return "redirect:/login";
		}

		model.addAttribute("loggedInUser", loggedInUser);

		List<Team> teams = projectService.getTeamsByManager(loggedInUser.getId());

		System.out.println("==============================");
		System.out.println("MANAGER DASHBOARD");
		System.out.println("Manager ID = " + loggedInUser.getId());
		System.out.println("Teams Size = " + teams.size());

		for (Team team : teams) {
			System.out.println("Team ID = " + team.getId() + " | Team Name = " + team.getTeamName() + " | Created By = "
					+ team.getCreatedBy());
		}

		model.addAttribute("loggedInUser", loggedInUser);
		model.addAttribute("teams", teams);

		return "managerDashboard";
	}
}