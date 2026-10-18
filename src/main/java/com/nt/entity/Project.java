package com.nt.entity;

public class Project {

	private int projectId;
	private String projectName;
	private String description;
	private String startDate;
	private String endDate;
	private String status;
	private int managerId;

	public Project() {

	}

	public Project(int projectId, String projectName, String description, String startDate, String endDate,
			String status, int managerId) {

		this.projectId = projectId;
		this.projectName = projectName;
		this.description = description;
		this.startDate = startDate;
		this.endDate = endDate;
		this.status = status;
		this.managerId = managerId;
	}

	public int getProjectId() {
		return this.projectId;
	}

	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}

	public String getProjectName() {
		return this.projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStartDate() {
		return this.startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return this.endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getManagerId() {
		return this.managerId;
	}

	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}
	@Override
	public String toString() {
		return this.getProjectId()+" "+this.getProjectName()+" "+this.getDescription()+" "+this.getStartDate()+" "+this.getEndDate()+" "+this.getStatus()+" "+this.getManagerId();
	}

}
