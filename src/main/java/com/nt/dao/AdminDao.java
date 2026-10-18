package com.nt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.nt.entity.Department;
import com.nt.entity.Employee;

@Repository
public class AdminDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<Employee> getAllUsers() {

		String sql = """
				SELECT id,
				       name,
				       salary,
				       userName,
				       role,
				       password,
				       department_id,
				       department_name,
				       department_description
				FROM `user`
				ORDER BY id DESC
				""";

		return jdbcTemplate.query(sql, (rs, rowNum) -> {

			Employee employee = new Employee();

			employee.setId(rs.getInt("id"));
			employee.setName(rs.getString("name"));
			employee.setSalary(rs.getFloat("salary"));
			employee.setUserName(rs.getString("userName"));
			employee.setRole(rs.getString("role"));
			employee.setPassword(rs.getString("password"));

			Department department = new Department();

			department.setId(rs.getInt("department_id"));

			department.setName(rs.getString("department_name"));

			department.setDescription(rs.getString("department_description"));

			employee.setDepartment(department);

			return employee;
		});
	}

	public List<Employee> getUsersByRole(String role) {

		String sql = """
				SELECT id,
				       name,
				       salary,
				       userName,
				       role,
				       password,
				       department_id,
				       department_name,
				       department_description
				FROM `user`
				WHERE UPPER(role) = UPPER(?)
				ORDER BY id DESC
				""";

		return jdbcTemplate.query(sql, (rs, rowNum) -> {

			Employee employee = new Employee();

			employee.setId(rs.getInt("id"));

			employee.setName(rs.getString("name"));

			employee.setSalary(rs.getFloat("salary"));

			employee.setUserName(rs.getString("userName"));

			employee.setRole(rs.getString("role"));

			employee.setPassword(rs.getString("password"));

			Department department = new Department();

			department.setId(rs.getInt("department_id"));

			department.setName(rs.getString("department_name"));

			department.setDescription(rs.getString("department_description"));

			employee.setDepartment(department);

			return employee;
		}, role);
	}

	public int getTotalUsers() {

		String sql = "SELECT COUNT(*) FROM `user`";

		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	public int getTotalEmployees() {

		String sql = """
				SELECT COUNT(*)
				FROM `user`
				WHERE UPPER(role) = 'EMPLOYEE'
				""";

		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	public int getTotalHR() {

		String sql = """
				SELECT COUNT(*)
				FROM `user`
				WHERE UPPER(role) = 'HR'
				""";

		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	public int getTotalManagers() {

		String sql = """
				SELECT COUNT(*)
				FROM `user`
				WHERE UPPER(role) = 'MANAGER'
				""";

		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	public int getTotalAdmins() {

		String sql = "SELECT COUNT(*) FROM `admin`";

		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	public Employee getUserById(int id) {

		String sql = """
				SELECT id,
				       name,
				       salary,
				       userName,
				       role,
				       password,
				       department_id,
				       department_name,
				       department_description
				FROM `user`
				WHERE id = ?
				""";

		return jdbcTemplate.queryForObject(sql, (rs, rowNum) -> {

			Employee employee = new Employee();

			employee.setId(rs.getInt("id"));

			employee.setName(rs.getString("name"));

			employee.setSalary(rs.getFloat("salary"));

			employee.setUserName(rs.getString("userName"));

			employee.setRole(rs.getString("role"));

			employee.setPassword(rs.getString("password"));

			Department department = new Department();

			department.setId(rs.getInt("department_id"));

			department.setName(rs.getString("department_name"));

			department.setDescription(rs.getString("department_description"));

			employee.setDepartment(department);

			return employee;
		}, id);
	}

	public int deleteUser(int id) {

		String sql = "DELETE FROM `user` WHERE id = ?";

		return jdbcTemplate.update(sql, id);
	}
}