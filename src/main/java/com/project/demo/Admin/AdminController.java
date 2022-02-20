package com.project.demo.Admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.project.demo.Student.*;
import com.project.demo.Recruiter.*;


@Controller
public class AdminController {
	@Autowired
	AdminService adminservice;
	
	@Autowired
	StudentService studservice;
	
	@Autowired
	RecruiterService recservice;
	
	@Autowired
	AddJobService addjobservice;
	
	@Autowired
	StudentEducationalService ses;
	
	@Autowired
	RecFeebackService recfeedbackservice;
	
	@GetMapping("/home")
	public ModelAndView home() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("Homepage.html");
		return mv;
	}
	
	@GetMapping("/adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("admin", new Admin());
		mv.setViewName("admin_login.jsp");
		return mv;
	}
	
	@RequestMapping("/submitlogindata")
	public ModelAndView submitlogindata(@ModelAttribute("admin") Admin admin , HttpServletRequest request) {
		if(adminservice.loginadmin(admin)) {
			String email=admin.getEmail().toString();
	        request.getSession().setAttribute("email", email);
			return new ModelAndView("redirect:/adminhome");
		}
		else {
			ModelAndView mv=new ModelAndView();
			mv.setViewName("redirect:/adminlogin");
			return mv;
		}
	}
	
	@GetMapping("/adminhome")
	public ModelAndView adminhome() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("regcount", studservice.getAllStudents().size());
		mv.addObject("reccount", recservice.getAllRecruiters().size());
		mv.addObject("jobcount", addjobservice.getAllJobs().size());
		mv.addObject("studjobcount", studservice.getAllStudentStatus().size());
		int size=recfeedbackservice.getAllRecFeedback().size();
		mv.addObject("size",size);
		
		int skval=(recfeedbackservice.sksum()*100)/(size*5);
		mv.addObject("skval",skval);
		
		int cpval=(recfeedbackservice.cpsum()*100)/(size*5);
		mv.addObject("cpval",cpval);
		
		int apval=(recfeedbackservice.apsum()*100)/(size*5);
		mv.addObject("apval",apval);
		
		int overall=(recfeedbackservice.overallsum()*100)/(size*5);
		mv.addObject("overall",overall);
		
		
		mv.setViewName("adminhome.jsp");
		return mv;
	}
	
	@GetMapping("/addstudent")
	public ModelAndView addstudent() {
		return new ModelAndView("addstudent.jsp","stud",new StudentPersonal());
	}
	@PostMapping("/submitstuddata")
	public ModelAndView submitstuddata(@ModelAttribute("stud") StudentPersonal stud) {
		studservice.registerstudent(stud);
		ses.insertEmail(stud.getStudEmail());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studregister_success.jsp");
		mv.addObject("id",stud.getStudId());
		return mv;
	}
	
	@RequestMapping("/getstudents")
	public ModelAndView getStudents() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("students",studservice.getAllStudents());
		mv.setViewName("studentdetails.jsp");
		return mv;
	}
	
	@GetMapping("/delete/{email}")
	public ModelAndView delete(@PathVariable("email") String email) {
		ModelAndView mv=new ModelAndView();
		int value=studservice.deleteByEmail(email);
		mv.addObject("students",studservice.getAllStudents());
		mv.setViewName("redirect:/getstudents");
		return mv;
	}
	
	@GetMapping("/logout")
	public ModelAndView logout(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		 HttpSession session=request.getSession();  
         session.invalidate();  
         mv.setViewName("redirect:/home");
		return mv;
	}
	
	@GetMapping("/addrecruiter")
	public ModelAndView addrecruiter() {
		return new ModelAndView("addrecruiter.jsp","rec",new Recruiter());
	}
	@PostMapping("/submitrecdata")
	public ModelAndView submitrecdata(@ModelAttribute("rec") Recruiter rec) {
		recservice.registerrecruiter(rec);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("recregister_success.jsp");
		mv.addObject("cname",rec.getComName());
		return mv;
	}
	
	@GetMapping("/adminschedules")
	public ModelAndView adminschedules() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("jobs", addjobservice.getAllJobs());
		mv.setViewName("adminschedules.jsp");
		return mv;
	}
	
	
	@GetMapping("/deletejob/{id}")
	public ModelAndView deletejob(@PathVariable("id") String id) {
		ModelAndView mv=new ModelAndView();
		addjobservice.deleteByJobId(id);
		mv.setViewName("redirect:/adminschedules");
		return mv;
	}
	
	@GetMapping("/updatestudent/{id}")
	public ModelAndView updatestudent(@PathVariable("id") long id) {
		ModelAndView mv=new ModelAndView();
		mv.addObject("student", studservice.getByStudentId(id));
		mv.addObject("stud", new StudentPersonal());
		mv.setViewName("updatestudent.jsp");
		return mv;
	}
	
	@RequestMapping("/updatestuddata")
	public ModelAndView updatestuddata(@ModelAttribute("stud") StudentPersonal studpersonal){
		ModelAndView mv=new ModelAndView();
		System.out.println(studpersonal);
		studservice.updatestudpersonal(studpersonal);
		mv.setViewName("redirect:/getstudents");
		return mv;
	}
	
	@RequestMapping("/getrecruiters")
	public ModelAndView getRecruiters() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("recruiters",recservice.getAllRecruiters());
		mv.setViewName("recruiterdetails.jsp");
		return mv;
	}
	
	@GetMapping("/updaterecruiter/{email}")
	public ModelAndView updaterecruiter(@PathVariable("email") String email) {
		ModelAndView mv=new ModelAndView();
		mv.addObject("recruiter", recservice.getByRecruiterEmail(email));
		mv.addObject("rec", new Recruiter());
		mv.setViewName("updaterecruiter.jsp");
		return mv;
	}
	
	@RequestMapping("/updaterecdata")
	public ModelAndView updaterecdata(@ModelAttribute("rec") Recruiter recruiter){
		ModelAndView mv=new ModelAndView();
		System.out.println(recruiter);
		recservice.updaterecruiter(recruiter);
		mv.setViewName("redirect:/getrecruiters");
		return mv;
	}
	
	@GetMapping("/deleterecruiter/{email}")
	public ModelAndView deleterecruiter(@PathVariable("email") String email) {
		ModelAndView mv=new ModelAndView();
		recservice.deleteByRecEmail(email);
		mv.setViewName("redirect:/getrecruiters");
		return mv;
	}
}

