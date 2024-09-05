package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.EmployeeService;
import com.klef.jfsd.springboot.service.DoctorService;
import com.klef.jfsd.springboot.service.EmailService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
	@Autowired
	private AdminService adminservice;
	
	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private DoctorService doctorService;
	
	@Autowired
	private EmailService emailService;
	
	
	
	@GetMapping("/")
	public String main() // by using tomcat jasper  
	{
		return "index";
	}
	
	
	@GetMapping("empreg")
	   public ModelAndView empreg()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("empreg");
	     return mv;
	   }
	   
	@PostMapping("insertemp")
	public ModelAndView insert(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String msg=null;
		
		try
		{
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			String dob = request.getParameter("dob");
			
			String email = request.getParameter("email");
			String pwd = request.getParameter("pwd");
			String location = request.getParameter("location");
			String contact = request.getParameter("contact");
			Employee emp=new Employee();
			
			emp.setName(name);
			emp.setGender(gender);
			emp.setDateofbirth(dob);
			emp.setEmail(email);
			emp.setPassword(pwd);
			emp.setLocation(location);
			emp.setContact(contact);
			emp.setActive(true);
			
		msg=employeeService.addemployee(emp);
	 emailService.sendEmail(emp.getEmail(), "Demo mail", "Hi we are testing");
		mv.setViewName("displaymsg");
		
		mv.addObject("message", msg);
		
			
		}
		catch(Exception e)
		{
			msg=e.getMessage();
			
			mv.setViewName("dispayerror");
			
			mv.addObject("message", msg);
			
		}
		return mv;
	}
	
	
	   @GetMapping("emplogin") // URI & method name can be different
	   public ModelAndView emplogin()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("emplogin");
	     return mv;
	   }
	   
	   @GetMapping("aboutus") // URI & method name can be different
	   public ModelAndView aboutus()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("Aboutus");
	     return mv;
	   }
	   
	   
	   @GetMapping("services") // URI & method name can be different
	   public ModelAndView services()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("services");
	     return mv;
	   }
	   @PostMapping("checkemplogin")
	   public ModelAndView checkemplogin(HttpServletRequest request)
	   {
	     ModelAndView mv = new ModelAndView();
	     
	     String email = request.getParameter("email");
	     String pwd = request.getParameter("pwd");
	     
	       Employee emp = employeeService.checkemplogin(email, pwd);
	       
	       if(emp!=null)
	       {
	         //session
	    	   
	    	   HttpSession session=request.getSession();
	    	   
	    	   session.setAttribute("eid", emp.getId());//eid is a session variable
	    	   // emp.getId() is used to get the value
	    	   session.setAttribute("ename", emp.getName());//ename is session variable
	    	   
	    	   
	    	   //session
	    	   
	         mv.setViewName("emphome");
	       }
	       else
	       {
	         mv.setViewName("emplogin");
	         mv.addObject("message", "Login Failed");
	       }
	       
	       return mv;
	   }
	   
	   @GetMapping("emphome")
	   public ModelAndView emphome(HttpServletRequest request)
	   {
		 //session
    	   
    	   HttpSession session=request.getSession();
    	   
    	  int eid=(int) session.getAttribute("eid"); //eid is session variable
    	 String ename=(String)  session.getAttribute("ename");//ename is a session variable
    	   
		   //session.getattribute() will return an object
    	 // so we have typecased and stored in a integer variable
    	 
		   
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("emphome");
	     
	     mv.addObject("eid", eid);
	     mv.addObject("ename", ename);
	     return mv;
	   }
	   
	   
	   
	   @GetMapping("adminlogin")
	   public ModelAndView adminlogin()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminlogin");
	     return mv;
	   }
	   
	   @PostMapping("checkadminlogin")
	   public ModelAndView checkadminlogin(HttpServletRequest request)
	   {
		   ModelAndView mv=new ModelAndView();
		   
		   
		   String uname=request.getParameter("uname");
		   String pwd=request.getParameter("pwd");
		   
		   Admin a= adminservice.checkadminlogin(uname, pwd);
		   
		   if(a!=null)
		   {
			   	mv.setViewName("adminhome");
			   	
			   	long ecount=adminservice.empcount();
			       long  ccount=adminservice.customercount();
			       
			       
				     mv.addObject("ecount", ecount);
				     mv.addObject("ccount", ccount);
		   }
		   else
		   {
			   mv.setViewName("adminlogin");
			   mv.addObject("message", "Login Failed");
		   }
		   return mv;
		   
	   }
	   
	   @GetMapping("viewallemps")
	   public ModelAndView viewallemps()
	   {
		   ModelAndView mv=new ModelAndView();
		   mv.setViewName("viewallemps");
		   List<Employee>  emplist= adminservice.viewallemployees();
		   mv.addObject("empdata", emplist);
		   return mv;
	   }
	   
	   
	   @GetMapping("adminhome")
	   public ModelAndView adminhome()
	   {
		   long ecount=adminservice.empcount();
	       long  ccount=adminservice.customercount();
	       
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminhome");
	     
	     mv.addObject("ecount", ecount);
	     mv.addObject("ccount", ccount);
	     return mv;
	   }
	   
	   @GetMapping("deleteemp")
	   public ModelAndView deleteemp()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("deleteemp");
	     
	     List<Employee> emplist = adminservice.viewallemployees();
	     
	     mv.addObject("empdata", emplist);
	     
	     return mv;
	   }
	   @GetMapping("view")
	   public ModelAndView viewempdemo(@RequestParam("id") int eid)
	   {
	     Employee emp = adminservice.viewemployeebyid(eid);
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("viewempbyid");
	     mv.addObject("emp", emp);
	     return mv;
	   }
	   
	   
	   @GetMapping("viewalldoctors")
	   public ModelAndView viewalldoctors()
	   {
		   ModelAndView mv=new ModelAndView();
		   mv.setViewName("viewalldoctors");
		   List<Doctor>  doclist= adminservice.viewalldoctors();
		   mv.addObject("empdata", doclist);
		   return mv;
	   }
	   
	   
	   @GetMapping("delete/{id}")
	    public String deleteaction(@PathVariable("id") int eid)
	    {
	      adminservice.deleteemployee(eid);
	      return "redirect:/deleteemp";
	    }
	   
	   @GetMapping("updateprofile")
	    public ModelAndView updateemp(HttpServletRequest request)
	    {
	      ModelAndView mv = new ModelAndView();
	      
	      HttpSession session = request.getSession();
	      
	      mv.setViewName("updateprofile");
	      
	      mv.addObject("eid", session.getAttribute("eid"));
	      mv.addObject("ename", session.getAttribute("ename"));
	      
	      int id = (int) session.getAttribute("eid");
	      
	      Employee emp = employeeService.viewempbyid(id);
	      
	      mv.addObject("emp", emp);
	      
	      return mv;
	    }
	    
	    @PostMapping("update")
	    public ModelAndView updateaction(HttpServletRequest request)
	    {
	      String msg = null;
	      
	      ModelAndView mv = new ModelAndView();
	      
	        HttpSession session = request.getSession();
	      
	      mv.addObject("eid", session.getAttribute("eid"));
	      mv.addObject("ename", session.getAttribute("ename"));
	      
	      int id = (int) session.getAttribute("eid");
	      
	     try
	     {
	       String name = request.getParameter("name");
	       String dob = request.getParameter("dob");
	       String email = request.getParameter("email");
	       String pwd = request.getParameter("pwd");
	       String location = request.getParameter("location");
	       String contact = request.getParameter("contact");
	       
	       Employee emp = new Employee();
	        emp.setId(id);
	        emp.setName(name);
	        emp.setDateofbirth(dob);
	        emp.setEmail(email);
	        emp.setPassword(pwd);
	        emp.setLocation(location);
	        emp.setContact(contact);
	        
	        
	        msg = employeeService.updateemployee(emp);
	        
	        //after updation redirect to login
	        mv.setViewName("emplogin");
	        mv.addObject("message",msg);
	       
	     }
	     catch(Exception e)
	     {
	       msg = e.getMessage();
	       
	       mv.setViewName("updateerror");
	        mv.addObject("message",msg);
	     }
	      
	     
	      return mv;

	    }
	   
	    
	    // <---- Model Attribute --->
	    @GetMapping("addcustomer")
	    public String addcustomer(Model m)
	    {
	    	m.addAttribute("customer", new Customer()); 
	    	return "addcustomer";	
	    }
	    
	    @PostMapping("insertcustomer")
	    public ModelAndView insertcustomeraction(@ModelAttribute("customer") Customer c) // customer odel object is given in form(addcustomer)
	    {
	    	ModelAndView mv=new ModelAndView();
	    	mv.setViewName("customermessage");
	    	
	    	String msg=adminservice.addcustomer(c);
	    	
	    	mv.addObject("message", msg);
	    	return mv;
	    	}
	    
	    @GetMapping("updatestatus")
	      public ModelAndView updatestatus()
	      {
	       ModelAndView mv = new ModelAndView();
	       
	      mv.setViewName("updatestatus");
	      
	      List<Employee> emplist =  adminservice.viewallemployees();
	      
	      mv.addObject("empdata", emplist);
	      
	      return mv;
	      
	      }
	    
	    @GetMapping("setstatus")
	      public ModelAndView setstatusaction(@RequestParam("id") int eid,@RequestParam("status") boolean status)
	      {
	        String msg = null;
	        
	         
	        int n = adminservice.updatestatus(status, eid);
	        
	        
	          List<Employee> emplist =  adminservice.viewallemployees();
	                    
	        
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("updatestatus");
	        mv.addObject("empdata", emplist);
	       
	        
	        if(n>0)
	        {
	          msg = "Status Updated Successfully";
	          mv.addObject("message", msg);
	        }
	        else
	        {
	          msg = "Failed to Update Status";
	          mv.addObject("message", msg);
	        }
	        
	        return mv;
	      }
	    
	    @GetMapping("emplogout")
	    public ModelAndView emplogout()
	    {
	    	ModelAndView mv=new ModelAndView();
	    	mv.setViewName("emplogin");
	    	mv.addObject("message", "Logout Successfully");
	    	return mv;
	    }
	    
	    @GetMapping("calbmi")
	    public ModelAndView showBMIForm() {
	        return new ModelAndView("calbmi");
	    }


	    @PostMapping("bmiResult")
	    public ModelAndView calculateBMI(double weight, double height) {
	        ModelAndView mv = new ModelAndView();
	        double bmi = calculateBMIValue(weight, height);
	        mv.addObject("bmi", bmi);

	        // Determine if the person is underweight or overweight
	        boolean isUnderweight = bmi < 18.5;
	        boolean isOverweight = bmi > 25.0;
	        mv.addObject("underweight", isUnderweight);
	        mv.addObject("overweight", isOverweight);

	        mv.setViewName("bmiResult"); // JSP view to display the result
	        return mv;
	    }

	    private double calculateBMIValue(double weight, double height) {
	        return weight / (height * height);
	    }
	    
	    @GetMapping("calories")
	       public ModelAndView calories()
	       {
	         ModelAndView mv = new ModelAndView();
	         mv.setViewName("calories");
	         return mv;
	       }
	    @GetMapping("Appointment")
        public ModelAndView Appointment()
        {
          ModelAndView mv = new ModelAndView();
          mv.setViewName("Appointment");
          return mv;
        }
	    
	    public void appointEmail(String email) {
	    	emailService.sendEmail(email, "Registration mail", "Hi welcome to health and nutrionist consultancy system !!! You have successfully registered ");
	    }
	    
      
       }



