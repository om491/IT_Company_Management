package com.nt.dao;

import java.sql.PreparedStatement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.mysql.cj.xdevapi.Statement;
import com.nt.entity.Employee;
import com.nt.entity.Project;
import com.nt.entity.Team;

@Repository
public class ProjectDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public boolean addProject(Project project) {

		String sql = "INSERT INTO project " + "(project_name, description, start_date, end_date, status, manager_id) "
				+ "VALUES (?, ?, ?, ?, ?, ?)";

		int result = jdbcTemplate.update(sql, project.getProjectName(), project.getDescription(),
				project.getStartDate(), project.getEndDate(), project.getStatus(), project.getManagerId());

		return result > 0;
	}

	public List<Project> getAllProjects() {

		String sql = "SELECT * FROM project ORDER BY project_id DESC";

		return jdbcTemplate.query(sql, (rs, rowNum) -> {

			Project project = new Project();

			project.setProjectId(rs.getInt("project_id"));
			project.setProjectName(rs.getString("project_name"));
			project.setDescription(rs.getString("description"));
			project.setStartDate(rs.getString("start_date"));
			project.setEndDate(rs.getString("end_date"));
			project.setStatus(rs.getString("status"));
			project.setManagerId(rs.getInt("manager_id"));

			return project;
		});
	}

	public List<Employee> getAllEmployees() {

		String sql = """
				SELECT id, name, salary, userName, role, password
				FROM user
				WHERE LOWER(TRIM(role)) = 'employee'
				ORDER BY name
				""";

		return jdbcTemplate.query(sql, (rs, rowNum) -> {

			Employee employee = new Employee();

			employee.setId(rs.getInt("id"));
			employee.setName(rs.getString("name"));
			employee.setSalary(rs.getFloat("salary"));
			employee.setUserName(rs.getString("userName"));
			employee.setRole(rs.getString("role"));
			employee.setPassword(rs.getString("password"));

			return employee;
		});
	}

	public int createTeam(Team team) {

		String sql = """
				INSERT INTO team(team_name, created_by)
				VALUES (?, ?)
				""";

		return jdbcTemplate.update(sql, team.getTeamName(), team.getCreatedBy());
	}

	public int getLatestTeamId(Team team) {

		String sql = """
				SELECT id
				FROM team
				WHERE team_name = ?
				  AND created_by = ?
				ORDER BY id DESC
				LIMIT 1
				""";

		return jdbcTemplate.queryForObject(sql, Integer.class, team.getTeamName(), team.getCreatedBy());
	}

	public void addEmployeeToTeam(int teamId, int employeeId) {

		String sql = """
				INSERT INTO team_employee(team_id, employee_id)
				VALUES (?, ?)
				""";

		jdbcTemplate.update(sql, teamId, employeeId);
	}

	public List<Team> getTeamsByManager(int managerId) {

		String sql = """
				SELECT id, team_name, created_by
				FROM team
				WHERE created_by = ?
				ORDER BY id DESC
				""";

		return jdbcTemplate.query(sql, (rs, rowNum) -> {

			Team team = new Team();

			team.setId(rs.getInt("id"));
			team.setTeamName(rs.getString("team_name"));
			team.setCreatedBy(rs.getInt("created_by"));

			return team;
		}, managerId);
	}
}