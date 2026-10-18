package com.nt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.dao.AdminDao;
import com.nt.entity.Employee;

@Service
public class AdminService {

	@Autowired
	private AdminDao adminDao;

	public List<Employee> getAllUsers() {
		return adminDao.getAllUsers();
	}

	public List<Employee> getUsersByRole(String role) {
		return adminDao.getUsersByRole(role);
	}

	public int getTotalUsers() {
		return adminDao.getTotalUsers();
	}

	public int getTotalEmployees() {
		return adminDao.getTotalEmployees();
	}

	public int getTotalHR() {
		return adminDao.getTotalHR();
	}

	public int getTotalManagers() {
		return adminDao.getTotalManagers();
	}

	public int getTotalAdmins() {
		return adminDao.getTotalAdmins();
	}

	public Employee getUserById(int id) {
		return adminDao.getUserById(id);
	}

	public boolean deleteUser(int id) {
		return adminDao.deleteUser(id) > 0;
	}
}