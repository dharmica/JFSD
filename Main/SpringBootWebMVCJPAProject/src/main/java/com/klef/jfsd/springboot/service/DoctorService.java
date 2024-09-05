package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Employee;


public interface DoctorService
{
	
		public List<Employee> viewallemployees();
		public String deleteemployee(int eid);
		public Doctor viewemployeebyid(int eid);
}
