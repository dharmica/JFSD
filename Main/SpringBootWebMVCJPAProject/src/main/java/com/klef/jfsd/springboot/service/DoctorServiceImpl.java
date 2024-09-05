package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.repository.EmployeeRepository;
import com.klef.jfsd.springboot.repository.DoctorRepository;

@Service
public class DoctorServiceImpl implements DoctorService{

	@Autowired
	  private DoctorRepository doctorRepository;
	
	@Autowired
	  private EmployeeRepository employeeRepository;
	
	
	@Override
	public List<Employee> viewallemployees() {
		return employeeRepository.findAll();
	}

	@Override
	public String deleteemployee(int eid) {
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
	public Doctor viewemployeebyid(int eid) {
		
		return null;
	}

}
