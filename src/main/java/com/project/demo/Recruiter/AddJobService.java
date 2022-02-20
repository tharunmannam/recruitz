package com.project.demo.Recruiter;

import java.io.IOException;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;




@Service
public class AddJobService {
		@Autowired
		AddJobRepository addjobrepo;
	
		public void savejob(AddJob addjob,MultipartFile file) {
		
			String fileName = StringUtils.cleanPath(file.getOriginalFilename());
			if(fileName.contains(".."))
			{
				System.out.println("not a a valid file");
			}
			try {
				addjob.setComLogo(Base64.getEncoder().encodeToString(file.getBytes()));
			} catch (IOException e) {
				e.printStackTrace();
			}
			addjobrepo.save(addjob);
	   }
		public List<AddJob> getAllJobs()
		{
			return addjobrepo.findAll();
		}
		public List<AddJob> getByJobId(String id){
			return addjobrepo.findByJobId(id);
		}
		
		public void deleteByJobId(String id) {
			addjobrepo.deleteByJobId(id);
		}
		
		
}
