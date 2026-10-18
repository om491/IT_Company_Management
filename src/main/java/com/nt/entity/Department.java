package com.nt.entity;

public class Department{

	private int id;
	private String name;
	private String description;

	public Department() {

	}

	public Department(int id, String name, String description) {
		this.id = id;
		this.name = name;
		this.description = description;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getId() {
		return this.id;
	}

	public String getName() {
		return this.name;
	}

	public String getDescription() {
		return this.description;
	}

	@Override
	public String toString() {
		return this.getId()+ " " + this.getName() + " " + this.getDescription();
	}
}