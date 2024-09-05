package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.Doctor;


public interface AdminService
{
	public List<Employee> viewallemployees();
	public List<Doctor> viewalldoctors();
	public String deleteemployee(int eid);
	public Employee viewemployeebyid(int eid);
	
	public Admin checkadminlogin(String uname,String pwd);
	
	public String addcustomer(Customer c);
	public long empcount(); // count(*)
	public long customercount(); //count(*)
	public int updatestatus(boolean status,int eid);
}
