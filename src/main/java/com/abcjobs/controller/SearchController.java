package com.abcjobs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abcjobs.model.User;
import com.abcjobs.service.UserService;

@Controller
public class SearchController {
	
	@Autowired
	UserService US;
	
	
	@RequestMapping(value="/search" )
	public ModelAndView search(HttpServletRequest req, Model model) throws Exception {
		String q = req.getParameter("q");
		
		
		if(q != null && !q.equals("")) {
			q = q.split(" ")[0];
			List<User> selectedUser = US.searchByKey(q);
			
			for (User user : selectedUser) {
				System.out.println(user.getName());
			}
			
			System.out.println("masuk ke sini");
			
			model.addAttribute("selected", selectedUser);
			
			if(selectedUser.size() == 0) {
				model.addAttribute("notFound", true);
			}
		}
		
		
		return new ModelAndView("search/search");  

	}
	
	
	
	
	@RequestMapping(value="/result", method= RequestMethod.POST)
	public ModelAndView viewProfil(@RequestParam("userId") long userId, Model model) {
		this.setModel(model, userId);
		
		
		return new ModelAndView("search/result");  
	}

	private void setModel(Model model,long userId) {
		String[] userDetails = US.getDetailsById(userId).replaceAll("null", "-").split(",");
		String[] userInformation = US.getInformationById(userId).replaceAll("null", "-").split(",");
		
		System.out.println(userDetails[0]);
		model.addAttribute("f", userDetails[0].charAt(0));
		
		model.addAttribute("name", userDetails[0]);
		model.addAttribute("email", userDetails[1]);
		
		model.addAttribute("address", userDetails[2]);
		model.addAttribute("age", userDetails[3]);
		model.addAttribute("username", userDetails[4]);
		
		
		model.addAttribute("about", userInformation[0]);
		model.addAttribute("company", userInformation[1]);
		model.addAttribute("title", userInformation[2]);
		model.addAttribute("website", userInformation[3]);
	
	}
	 
	
	
	
	
}
