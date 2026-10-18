package com.nt.entity;

public class Team {

	private int id;
	private String teamName;
	private int createdBy;

	private int[] employeeIds;

	public Team() {
	}

	public Team(int id, String teamName, int createdBy) {
		this.id = id;
		this.teamName = teamName;
		this.createdBy = createdBy;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public int getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}

	public int[] getEmployeeIds() {
		return employeeIds;
	}

	public void setEmployeeIds(int[] employeeIds) {
		this.employeeIds = employeeIds;
	}
}