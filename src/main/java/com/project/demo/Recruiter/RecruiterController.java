package com.project.demo.Recruiter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.demo.Student.*;





@Controller
public class RecruiterController {
	@Autowired
	RecruiterService recservice;
	
	@Autowired
	AddJobService addjobservice;
	
	@Autowired
	StudentService studservice;
	
	@Autowired
	StudentEducationalService studeduservice;
	
	@Autowired
	RecFeebackService recfeedbackservice;
	
	@GetMapping("/recruiterlogin")
	public ModelAndView recruiterlogin() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("rec", new Recruiter());
		mv.setViewName("recruiter_login.jsp");
		return mv;
	}
	@RequestMapping("/submitreclogindata")
	public ModelAndView submitstudlogindata(@ModelAttribute("rec") Recruiter recruiter , HttpServletRequest request) {
		if(recservice.loginrecruiter(recruiter)) {
			String email=recruiter.getRecEmail().toString();
			HttpSession session = request.getSession(true);
			session.setAttribute("email", email);
			System.out.println(recruiter);
			ModelAndView mv=new ModelAndView();
			mv.addObject("email",email);
			mv.setViewName("redirect:/addjob");
			return mv;
		}
		else {
			ModelAndView mv=new ModelAndView();
			mv.setViewName("redirect:/recruiterlogin");
			return mv;
		}
	}
	
	@GetMapping("/addjob")
	public ModelAndView addjob() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("job", new AddJob());
		mv.setViewName("addjob.jsp");
		return mv;
	}

	@RequestMapping("/submitjob")
	public ModelAndView submitjob(@ModelAttribute("job") AddJob addjob,@RequestParam("file") MultipartFile image,HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		HttpSession session = request.getSession(true);
		String email=(String)session.getAttribute("email");
		addjob.setRecEmail(email);
		System.out.println(addjob);
		addjobservice.savejob(addjob,image);
		mv.setViewName("jobsuccess.jsp");
		return mv;
	}
	
	@GetMapping("/viewjobs")
	public ModelAndView viewjobs() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("jobs", addjobservice.getAllJobs());
		mv.setViewName("viewjobs.jsp");
		return mv;
	}
	
	@GetMapping("/viewapplications")
	public ModelAndView viewapplications() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("jobs", addjobservice.getAllJobs());
		mv.addObject("studentstatus",studservice.getAllStudentStatus());
		mv.addObject("studentEducational",studservice.getAllStudentEducational());
		mv.setViewName("Application.jsp");
		return mv;
	}
	
	
	@GetMapping("/recruiterschedules")
	public ModelAndView recruiterschedules() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("jobs", addjobservice.getAllJobs());
		mv.setViewName("recruiterschedules.jsp");
		return mv;
	}
	
	@GetMapping("/recruiterprofile")
	public ModelAndView recruiterprofile(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		HttpSession session = request.getSession(true);
		String email=(String)session.getAttribute("email");
		System.out.println(email);
		mv.addObject("recruiter", recservice.getByRecruiterEmail(email));
		mv.addObject("rec", new Recruiter());
		mv.setViewName("recruiterprofile.jsp");
		return mv;
	}
	
	@RequestMapping("/updaterecprofile")
	public ModelAndView updaterecprofile(@ModelAttribute("rec") Recruiter recruiter){
		ModelAndView mv=new ModelAndView();
		System.out.println(recruiter);
		recservice.updaterecruiter(recruiter);
		mv.setViewName("redirect:/recruiterprofile");
		return mv;
	}
	
	@GetMapping("/viewstuddetails1/{email}")
	public ModelAndView viewstuddetails1(@PathVariable("email") String email){
		ModelAndView mv=new ModelAndView();
		System.out.println(email);
		mv.addObject("studpersonal",studservice.findByEmail(email));
		mv.addObject("studeducational", studeduservice.findByEmailEdu(email));
		mv.setViewName("viewstudentsdata.jsp");
		return mv;
	}
	
	@GetMapping("/recfeedback")
	public ModelAndView recfeedback() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("feedback", new RecFeedback());
		mv.setViewName("recfeedback.jsp");
		return mv;
	}
	
	@RequestMapping("/submitrecFeedback")
	public ModelAndView submitrecFeedback(@ModelAttribute("feedback") RecFeedback recfeedback,HttpServletRequest request){
		ModelAndView mv=new ModelAndView();
		HttpSession session = request.getSession(true);
		String email=(String)session.getAttribute("email");
		recfeedback.setRecEmail(email);
		recfeedbackservice.addFeedback(recfeedback);
		mv.setViewName("recfeedbacksuccess.jsp");
		return mv;
	}
}
