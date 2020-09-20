package com.employee.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.employee.model.Employee;

public class Employee_Dao {
	
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int add_emp(Employee emp) {
		String sql = "insert into EmpDetails(id,name,salary,designation) values("+emp.getEmp_Id()+",'"+emp.getEmp_Name()+"',"+emp.getEmp_Salary()+",'"+emp.getEmp_Designation()+"')";
		return template.update(sql);
	}
	
	public int update_emp(Employee emp) {
	    String sql="update EmpDetails set name='"+emp.getEmp_Name()+"', salary="+emp.getEmp_Salary()+",designation='"+emp.getEmp_Designation()+"' where id="+emp.getEmp_Id()+"";
	    return template.update(sql);
	}
	
	public int delete_emp(int id) {
		String sql = "delete from EmpDetails where id="+id+"";
		return template.update(sql);
	}
	
	public Employee get_empById(int id) {
		String sql = "select * from EmpDetails where id=?";
		return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<Employee>(Employee.class));
	}
	
	public List<Employee> get_allEmp(){
		
		return template.query("select * from EmpDetails", new RowMapper<Employee>() {
			public Employee mapRow(ResultSet rs, int row)throws SQLException{
				Employee e = new Employee();
				e.setEmp_Id(rs.getInt(1));
				e.setEmp_Name(rs.getString(2));
				e.setEmp_Salary(rs.getFloat(3));
				e.setEmp_Designation(rs.getString(4));
				return e;
				
			}
		});
		
	}
}
