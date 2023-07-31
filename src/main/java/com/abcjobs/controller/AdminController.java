package com.abcjobs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abcjobs.model.Administration;
import com.abcjobs.model.User;
import com.abcjobs.service.AdminService;
import com.abcjobs.service.UserService;

@Controller
public class AdminController {
	@Autowired
	AdminService AS;
	
	@Autowired
	UserService US;
	
	@RequestMapping(value="/adminLogin", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) throws Exception {
		return new ModelAndView("/login/loginAdmin"); 
	}
	
	@RequestMapping( value = "/adminLogin", method = RequestMethod.POST)
	public ModelAndView login( @RequestParam("name") String name,@RequestParam("password") String password, 
			Model model, 
			HttpServletRequest req, HttpServletResponse res) {
	
		HttpSession session = req.getSession();
		Administration isLogin = AS.login(name, password);
		
		if(isLogin != null) {
			
			
			session.setAttribute("name", isLogin.getName());
			session.setAttribute("adminId", isLogin.getAdmin_id());
			session.setAttribute("isLogin", true);
			
			model.addAttribute("adminName", isLogin.getName());
			
			this.setModel(model, req);
			return new ModelAndView("admin/dashboard-admin");
		}
		
		
		String msg = "Credentials is incorrect !";
		model.addAttribute("message", msg);
		return new ModelAndView("/login/adminLogin");
	} 

	private void setModel(Model model, HttpServletRequest request) {
	    List<Object[]> collectedData = AS.listAllUser();
	    model.addAttribute("collectedData", collectedData);
	}
	
	
	private void setUserModel(Long userId,Model model) {
		String[] userDetails = US.getUserObject(userId).replaceAll("null", "-").split(",");
		String[] userInformation = US.getInformationById(userId).replaceAll("null", "-").split(",");
		
		model.addAttribute("f", userDetails[1].charAt(0));
		model.addAttribute("user_id", userId);
		model.addAttribute("name", userDetails[1]);
		model.addAttribute("email", userDetails[2]);
		model.addAttribute("password", userDetails[3]);
		model.addAttribute("address", userDetails[4]);
		model.addAttribute("age", userDetails[5]);
		model.addAttribute("username", userDetails[6]);
		
		
		model.addAttribute("about", userInformation[0]);
		model.addAttribute("company", userInformation[1]);
		model.addAttribute("title", userInformation[2]);
		model.addAttribute("website", userInformation[3]);
	}
	
	
	
	@RequestMapping(value="/deleteUser")
	public ModelAndView deleteData(
			@RequestParam("selectedId") Long id,Model model, 
			HttpServletRequest req, HttpSession session) throws Exception {
		String adminName = (String) session.getAttribute("name");
		System.out.println(id);
		AS.deleteUser(id);
		
		model.addAttribute("adminName", adminName);
		this.setModel(model, req);

		return new ModelAndView("/admin/dashboard-admin"); 
	}
	
	
	@RequestMapping(value ="/editByAdmin", method = RequestMethod.GET)
	public ModelAndView update(@RequestParam("selectedId") Long selectedId, Model model) throws Exception {
		this.setUserModel(selectedId,model);
		return new ModelAndView("admin/updateByAdmin"); 
	}
	
	@RequestMapping(value="/editedByAdmin", method = RequestMethod.POST) // update profile POST
	public ModelAndView up(
			@RequestParam("idUser") Long id,
			@RequestParam("name") String name,
			@RequestParam("email") String email,
			@RequestParam("username") String username,
			@RequestParam("age") int age,
			@RequestParam("address") String address,
			HttpSession session, Model model, HttpServletRequest req) {
		
		String adminName = (String) session.getAttribute("name");

		
		
		US.updateProfil(id, name, email, address, age, username);
		
		
		model.addAttribute("adminName", adminName);

		this.setModel(model, req);		
		return new ModelAndView("admin/dashboard-admin");
	}
	
	@RequestMapping(value="/update_informationByAdmin", method = RequestMethod.POST)
	public ModelAndView updateInformation(
			@RequestParam("id") Long id,
			@RequestParam("about") String about,
			@RequestParam("company") String company,
			@RequestParam("title") String title,
			@RequestParam("website") String website, Model model, HttpSession session) {
		
		System.out.println("masuk update");

		US.updateInformation(id, about, company, title, website);
		
		this.setUserModel(id, model);
		model.addAttribute("message","information is updated");
		return new ModelAndView("admin/updateByAdmin"); 
	}
}
