package com.dao;

import java.util.ArrayList;
import java.util.List;


import com.domain.Employee;

public class SqliteDaoImpl implements DataDao {

	 

	@Override
	public int insertRow(Employee employee) {
		 
		return (Integer) 1;
	}

	@Override
	public List<Employee> getList() {
		 
		List<Employee> employeeList = new ArrayList<Employee>();
				 
		return employeeList;
	}

	@Override
	public Employee getRowById(int id) {
		 
		Employee employee = new Employee();
		return employee;
	}

	@Override
	public int updateRow(Employee employee) {
		 
		return (Integer) 1;
	}

	@Override
	public int deleteRow(int id) {
		 
		return (Integer) 1;
	}

}
