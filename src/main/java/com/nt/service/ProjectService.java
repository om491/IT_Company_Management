package com.nt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nt.dao.ProjectDao;
import com.nt.entity.Employee;
import com.nt.entity.Project;
import com.nt.entity.Team;

@Service
public class ProjectService {

	@Autowired
	private ProjectDao projectDao;

	public boolean addProject(Project project) {

		return projectDao.addProject(project);
	}

	public List<Project> getAllProjects() {

		return projectDao.getAllProjects();
	}

	public List<Employee> getAllEmployees() {

		return projectDao.getAllEmployees();
	}

	@Transactional
	public int createTeam(Team team) {

		int result = projectDao.createTeam(team);

		if (result <= 0) {
			return 0;
		}

		int teamId = projectDao.getLatestTeamId(team);

		System.out.println("Generated Team ID = " + teamId);

		int[] employeeIds = team.getEmployeeIds();

		if (employeeIds != null) {

			for (int employeeId : employeeIds) {

				System.out.println("Mapping Team ID = " + teamId + " Employee ID = " + employeeId);

				projectDao.addEmployeeToTeam(teamId, employeeId);
			}
		}

		return teamId;
	}

	public void addEmployeeToTeam(int teamId, int employeeId) {

		projectDao.addEmployeeToTeam(teamId, employeeId);
	}

	public List<Team> getTeamsByManager(int managerId) {
		
		return projectDao.getTeamsByManager(managerId);
	}
}