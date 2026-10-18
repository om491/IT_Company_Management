package com.nt.entity;

public class Employee {

	private int id;
	private String name;
	private float salary;
	private String userName;
	private String role;
	private String password;
	private Department department = new Department();

	public Employee() {

	}

	public Employee(int id, String name, float salary, String userName, String role, String password,
			Department department) {
		this.id = id;
		this.name = name;
		this.salary = salary;
		this.userName = userName;
		this.role = role;
		this.password = password;
		this.department = department;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setSalary(float salary) {
		this.salary = salary;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public int getId() {
		return this.id;
	}

	public String getName() {
		return this.name;
	}

	public float getSalary() {
		return this.salary;
	}

	public String getUserName() {
		return this.userName;
	}

	public String getRole() {
		return this.role;
	}

	public String getPassword() {
		return this.password;
	}

	public Department getDepartment() {
		return this.department;
	}

	@Override
	public String toString() {
		return this.getId() + " " + this.getName() + " " + this.getSalary() + " " + this.getUserName() + " "
				+ this.getRole() + " " + this.getPassword() + " " + this.getDepartment();
	}
}
