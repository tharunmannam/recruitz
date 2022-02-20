package com.project.demo.Student;

import java.awt.PageAttributes.MediaType;
import java.net.http.HttpHeaders;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.demo.Recruiter.*;

import org.springframework.http.*;



@Controller
public class StudentController {
	@Autowired
	StudentService studservice;
	
	@Autowired
	StudentEducationalService studserviceedu;
	
	@Autowired
	AddJobService addjobservice;
	
	@GetMapping("/studentlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("student", new StudentPersonal());
		mv.setViewName("student_login.jsp");
		return mv;
	}
	@RequestMapping("/submitstudlogindata")
	public ModelAndView submitstudlogindata(@ModelAttribute("student") StudentPersonal student , HttpServletRequest request) {
		if(studservice.loginstudent(student)) {
			String email=student.getStudEmail().toString();
			HttpSession session = request.getSession(true);
			session.setAttribute("email", email);
			System.out.println(student);
			ModelAndView mv=new ModelAndView();
			mv.addObject("email",email);
			mv.setViewName("redirect:/studdashboard");
			return mv;
		}
		else {
			ModelAndView mv=new ModelAndView();
			mv.setViewName("redirect:/studentlogin");
			return mv;
		}
	}
	
	@GetMapping("/studdashboard")
	public ModelAndView studdashboard() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("jobs",addjobservice.getAllJobs());
		mv.addObject("studstatus",studservice.getAllStatus());
		mv.setViewName("studentdashboard.jsp");
		return mv;
	}
	@GetMapping("/studprofile")
	public ModelAndView studprofile(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		HttpSession session = request.getSession(true);
		String email=(String)session.getAttribute("email");
		System.out.println(email);
		mv.addObject("studpersonal", new StudentPersonal());
		mv.addObject("studpersonal1", studservice.findByEmail(email));
		mv.addObject("studeducation", new StudentEducational());
		mv.addObject("studeducation1", studserviceedu.findByEmailEdu(email));
		mv.setViewName("studentprofile.jsp");
		return mv;
	}
	
	@RequestMapping("/submitstudpersonal")
	public ModelAndView submitstudpersonal(@ModelAttribute("studpersonal") StudentPersonal studpersonal,@RequestParam("file") MultipartFile image) {
		ModelAndView mv=new ModelAndView();
		System.out.println("Enteednv");
		System.out.println(studpersonal);
		studservice.savestudpersonal(studpersonal,image);
		mv.setViewName("redirect:/studprofile");
		return mv;
	}
	
	@PostMapping("/submitstudeducational")
	public ModelAndView submitstudeducational(@ModelAttribute("studeducation") StudentEducational studeducational,@RequestParam("files") MultipartFile files,HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		System.out.println("Enteednv");
		HttpSession session = request.getSession(true);
		String email=(String)session.getAttribute("email");
		System.out.println(email);
		studeducational.setStudEmail(email);
		System.out.println(studeducational);
		
		studserviceedu.savestudeducational(studeducational,files);
		mv.setViewName("redirect:/studprofile");
		return mv;
	}
	
	@GetMapping("/applyjob/{id}/{email}")
	public ModelAndView applyJob(@PathVariable("id") String id,@PathVariable("email") String email){
		ModelAndView mv=new ModelAndView();
		mv.addObject("id", id);
		mv.addObject("email", email);
		mv.setViewName("redirect:/jobdashboard/{id}");
		return mv;
	}
	
	@GetMapping("/jobdashboard/{id}")
	public ModelAndView applyJob(@PathVariable("id") String id){
		ModelAndView mv=new ModelAndView();
		mv.addObject("job", addjobservice.getByJobId(id));
		mv.setViewName("jobdashboard.jsp");
		return mv;
	}
	
	@GetMapping("/applystudjob/{id}/{email}")
	public ModelAndView applystudjob(@PathVariable("id") String id,@PathVariable("email") String email){
		ModelAndView mv=new ModelAndView();
		studservice.applyJob(id,email);
		mv.setViewName("redirect:/studdashboard");
		return mv;
	}
	
	@GetMapping("/jobprofile")
	public ModelAndView jobprofile() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("jobs",addjobservice.getAllJobs());
		mv.addObject("studstatus",studservice.getAllStatus());
		mv.setViewName("jobprofile.jsp");
		return mv;
	}
	
	@GetMapping("/withdraw/{email}/{id}")
	public ModelAndView delete(@PathVariable("email") String email,@PathVariable("id") String id) {
		ModelAndView mv=new ModelAndView();
		studservice.deleteByEmailAndJobId(email,id);
		mv.setViewName("redirect:/jobprofile");
		return mv;
	}
	
	@GetMapping("/studentschedules")
	public ModelAndView studentschedules() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("jobs", addjobservice.getAllJobs());
		mv.setViewName("studentschedules.jsp");
		return mv;
	}
	
//	@GetMapping("/downloadFile/{fileId}")
//	  public ResponseEntity<ByteArrayResource> downloadFile(@PathVariable String email){
//	     StudentEducational se= studserviceedu.getFile(email).get();
//	    return ResponseEntity.ok()
//	        .contentType(MediaType.parseMediaType(se.getResumeType())
//	        .header(HttpHeaders.CONTENT_DISPOSITION,"attachment:filename=\""+se.getResumeName()+"\"")
//	        .body(new ByteArrayResource(se.getResume()));
//	  }
	
	@GetMapping("/downloadFile/{studEmail}")
	public void downloadFile(@PathVariable String studEmail,HttpServletResponse res) throws Exception
	{
		List<StudentEducational> result =  studserviceedu.findByEmailEdu(studEmail);
		StudentEducational stud = result.get(0);
		res.setContentType("application/octet-stream");
		String headerKey = "Content-Disposition";
		String headerValue = "attachment; filename="+stud.getResumeName();
		res.setHeader(headerKey,headerValue);
		ServletOutputStream output = res.getOutputStream();
		output.write(stud.getResume());
		output.close();
		
	}
}
