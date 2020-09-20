package com.employee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.employee.dao.Employee_Dao;
import com.employee.model.Employee;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

@Controller
public class Employee_Controller {
	
	@Autowired
	Employee_Dao dao;

	@RequestMapping(value = "/employee",method =  RequestMethod.GET)
	public String displayForm(Model m) {
		m.addAttribute("command", new Employee());
		return "employee";
		
	}
	
	@RequestMapping(value = "/save_emp", method = RequestMethod.POST)
	public String save_emp(@ModelAttribute("emp") Employee emp) {
		dao.add_emp(emp);
		return "redirect:/view_emp";
	}
	
	@RequestMapping(value = "/view_emp")
	public String view_emp(Model m) {
		List<Employee> list = dao.get_allEmp();
		m.addAttribute("list",list);
		return "view_emp";
	}
	
	@RequestMapping(value = "/edit_emp/{id}")
		public String edit_emp(@PathVariable int id, Model m) {
			Employee emp = dao.get_empById(id);
			m.addAttribute("command",emp);
			return "edit_emp_form";
		}
	
	@RequestMapping(value = "edit_save_emp",method = RequestMethod.POST)
	public String edit_save_emp(@ModelAttribute("emp") Employee emp) {
		dao.update_emp(emp);
		return "redirect:/view_emp";
	}
	
	@RequestMapping(value = "/delete_emp/{id}", method = RequestMethod.GET)
	public String delete_emp(@PathVariable int id) {
		dao.delete_emp(id);
		return "redirect:/view_emp";
	}
	
}
