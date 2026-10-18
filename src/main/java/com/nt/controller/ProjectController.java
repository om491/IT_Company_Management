package com.nt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.nt.entity.Employee;
import com.nt.entity.Project;
import com.nt.entity.Team;
import com.nt.service.ProjectService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ProjectController {

	@Autowired
	private ProjectService projectService;

	@GetMapping("/addProject")
	public String showAddProjectPage(Model model) {

		model.addAttribute("project", new Project());

		return "addProject";
	}

	@PostMapping("/saveProject")
	public String saveProject(@ModelAttribute Project project, HttpSession session) {

		Employee loggedInUser = (Employee) session.getAttribute("loggedInUser");

		System.out.println("========== SAVE PROJECT ==========");

		if (loggedInUser == null) {

			System.out.println("ERROR: loggedInUser is NULL");

			return "redirect:/login";
		}

		System.out.println("Logged User ID   = " + loggedInUser.getId());
		System.out.println("Logged User Name = " + loggedInUser.getName());
		System.out.println("Logged User Role = " + loggedInUser.getRole());

		// Automatically assign logged-in manager
		project.setManagerId(loggedInUser.getId());

		System.out.println("Project Name = " + project.getProjectName());
		System.out.println("Description  = " + project.getDescription());
		System.out.println("Start Date   = " + project.getStartDate());
		System.out.println("End Date     = " + project.getEndDate());
		System.out.println("Status       = " + project.getStatus());
		System.out.println("Manager ID   = " + project.getManagerId());

		boolean result = projectService.addProject(project);

		System.out.println("INSERT RESULT = " + result);

		if (result) {
			return "redirect:/listProject";
		}

		return "redirect:/addProject";
	}

	@GetMapping("/listProject")
	public String getAllProjects(Model model) {

		List<Project> projects = projectService.getAllProjects();

		model.addAttribute("projects", projects);

		return "projectList";
	}

	@GetMapping("/manageTeam")
	public String manageTeam(Model model, HttpSession session) {

		Employee loggedInUser = (Employee) session.getAttribute("loggedInUser");

		System.out.println("================================");
		System.out.println("MANAGE TEAM CALLED");
		System.out.println("LOGGED IN USER = " + loggedInUser);

		if (loggedInUser != null) {
			System.out.println("USER ID   = " + loggedInUser.getId());
			System.out.println("USER NAME = " + loggedInUser.getName());
			System.out.println("USER ROLE = " + loggedInUser.getRole());
		} else {
			System.out.println("LOGGED IN USER IS NULL");
		}

		List<Project> projects = projectService.getAllProjects();

		List<Employee> employees = projectService.getAllEmployees();

		System.out.println("PROJECTS SIZE  = " + projects.size());
		System.out.println("EMPLOYEES SIZE = " + employees.size());

		model.addAttribute("projects", projects);
		model.addAttribute("employees", employees);
		model.addAttribute("team", new Team());
		model.addAttribute("manager", loggedInUser);

		return "manageTeam";
	}

	@PostMapping("/createTeam")
	public String createTeam(@ModelAttribute Team team, HttpSession session) {

		System.out.println("========== CREATE TEAM ==========");

		System.out.println("Team Name  = " + team.getTeamName());

		Employee loggedInUser = (Employee) session.getAttribute("loggedInUser");

		if (loggedInUser == null) {
			System.out.println("LOGGED IN USER IS NULL");
			return "redirect:/login";
		}

		team.setCreatedBy(loggedInUser.getId());

		System.out.println("Created By = " + team.getCreatedBy());

		int[] employeeIds = team.getEmployeeIds();

		if (employeeIds != null) {

			System.out.println("Selected Employees:");

			for (int employeeId : employeeIds) {
				System.out.println("Employee ID = " + employeeId);
			}

		} else {

			System.out.println("NO EMPLOYEES SELECTED");
		}

		int teamId = projectService.createTeam(team);

		System.out.println("Created Team ID = " + teamId);

		return "redirect:/manageTeam";
	}
}