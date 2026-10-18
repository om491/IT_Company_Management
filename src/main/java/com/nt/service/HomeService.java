package com.nt.service;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.dao.HomeDAO;
import com.nt.email.EmailUtil;
import com.nt.entity.Employee;

@Service
public class HomeService {

	@Autowired
	private HomeDAO homeDao;

	public boolean registerUser(Employee e) {

		String password = RandomStringUtils.random(8, "ABCDEFGHItuvwxyz0123456789!@");

		e.setPassword(password);

		boolean status = homeDao.registerUser(e);

		if (status) {
			EmailUtil.sendRegistrationEmail(e);
		}

		return status;
	}

	public boolean adminLogin(String userName, String password) {
		return homeDao.adminLogin(userName, password);
	}

	public Employee loginUser(String userName, String password) {
		return homeDao.loginUser(userName, password);
	}

	public String getPassword(Employee e) {
		return homeDao.getPassword(e);
	}

}