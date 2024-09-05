package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.EmployeeRepository;
import com.klef.jfsd.springboot.repository.DoctorRepository;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired// used for bean communication in between 2 beans
	private AdminRepository adminRepository;
	
	@Autowired
	  private EmployeeRepository employeeRepository;
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	  private DoctorRepository doctorRepository;
	
	public List<Employee> viewallemployees()
	{
		return employeeRepository.findAll();
	}

	@Override
	public String deleteemployee(int eid) 
	{
		Optional<Employee> obj =  employeeRepository.findById(eid);
        
        String msg = null;
        
        if(obj.isPresent())
        {
          Employee emp = obj.get();
          
          employeeRepository.delete(emp);
          
          msg = "Employee Deleted Successfully";
        }
        else
        {
          msg = "Employee Not Found";
        }
        
        return msg;
	}

	@Override
	public Employee viewemployeebyid(int eid) 
	{
		Optional<Employee> obj =  employeeRepository.findById(eid);
        
        if(obj.isPresent())
        {
          Employee emp = obj.get();
          
          return emp;
        }
        else
        {
          return null;
        }
	}

	@Override
	public Admin checkadminlogin(String uname, String pwd)
	{
		return adminRepository.checkadminlogin(uname, pwd);
	
	}

	@Override
	public String addcustomer(Customer c) {
		
		 customerRepository.save(c);
		 return "Customer Added Successfully";
	}

	@Override
	public long empcount() {

			return employeeRepository.count();
	}

	@Override
	public long customercount() {
		
		return customerRepository.count();
	}

	@Override
	public int updatestatus(boolean status, int eid) 
	{
		return adminRepository.updatestatus(status, eid);
	}

	@Override
	public List<Doctor> viewalldoctors() {
		return doctorRepository.findAll();
	}

	

}
