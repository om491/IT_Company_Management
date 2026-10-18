package com.nt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.nt.entity.Department;
import com.nt.entity.Employee;

@Repository
public class HomeDAO {

	@Autowired
	private JdbcTemplate template;

	public boolean registerUser(Employee e) {

		String sql = "INSERT INTO `user` " + "(name, salary, userName, role, password, "
				+ "department_id, department_name, department_description) " + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

		Object args[] = { e.getName(), e.getSalary(), e.getUserName(), e.getRole(), e.getPassword(),
				e.getDepartment().getId(), e.getDepartment().getName(), e.getDepartment().getDescription() };

		int result = template.update(sql, args);

		if (result == 1) {
			return true;
		} else {
			return false;
		}
	}

	public boolean adminLogin(String userName, String password) {

		String sql = "SELECT COUNT(*) FROM admin WHERE userName = ? AND password = ?";

		int result = template.queryForObject(sql, Integer.class, userName, password);

		if (result == 1) {
			return true;
		} else {
			return false;
		}
	}

	public Employee loginUser(String userName, String password) {

	    String sql =
	            "SELECT id, name, salary, userName, role, password, "
	          + "department_id, department_name, department_description "
	          + "FROM user "
	          + "WHERE userName = ? AND password = ?";

	    List<Employee> list = template.query(
	            sql,
	            (rs, rowNum) -> {

	                Employee employee = new Employee();

	                employee.setId(rs.getInt("id"));
	                employee.setName(rs.getString("name"));
	                employee.setSalary(rs.getFloat("salary"));
	                employee.setUserName(rs.getString("userName"));
	                employee.setRole(rs.getString("role"));
	                employee.setPassword(rs.getString("password"));

	                Department department = new Department();

	                department.setId(
	                        rs.getInt("department_id")
	                );

	                department.setName(
	                        rs.getString("department_name")
	                );

	                department.setDescription(
	                        rs.getString("department_description")
	                );

	                employee.setDepartment(department);

	                return employee;
	            },
	            userName,
	            password
	    );

	    if (list.isEmpty()) {
	        return null;
	    }

	    return list.get(0);
	}

	public String getPassword(Employee e) {

		String userName = e.getUserName();

		String query = "SELECT password FROM user WHERE userName = ?";

		String result = template.queryForObject(query, String.class, userName);

		return result;
	}

}