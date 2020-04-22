package com.ict.db;

public class VO {
	private String employee_id, first_name, hire_date, job_id, salary, department_id ;

	public VO() {}
	public VO(String employee_id, String first_name, String hire_date, String job_id, String salary,
			String department_id) {
		super();
		this.employee_id = employee_id;
		this.first_name = first_name;
		this.hire_date = hire_date;
		this.job_id = job_id;
		this.salary = salary;
		this.department_id = department_id;
	}
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getHire_date() {
		return hire_date;
	}
	public void setHire_date(String hire_date) {
		this.hire_date = hire_date;
	}
	public String getJob_id() {
		return job_id;
	}
	public void setJob_id(String job_id) {
		this.job_id = job_id;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(String department_id) {
		this.department_id = department_id;
	}
}
