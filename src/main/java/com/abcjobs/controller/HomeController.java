package com.abcjobs.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abcjobs.model.User;
import com.abcjobs.service.AdminService;
import com.abcjobs.service.UserService;


@Controller
public class HomeController {
	@Autowired
	private UserService userService;
	@Autowired
	private AdminService AS;
	

	@RequestMapping(value = "/")
	public ModelAndView index(Model model) {
		
		
		
		return new ModelAndView("redirect:/home");
	}
	
	@RequestMapping(value ="/home")
	public ModelAndView home(HttpServletResponse res, HttpServletRequest req, 
			@CookieValue(value = "email", defaultValue = "") String email,
			@CookieValue(value = "userId", defaultValue = "") String userId,
			HttpSession session) {
		List<Object[]> collectedData = AS.listAllUser();
		Object[] data = collectedData.get(0);
		
		System.out.println(data[5]);
		
		if(!email.equals("")) {
			// add session
			session.setAttribute("email", email);
			session.setAttribute("userId", userId);
			session.setAttribute("isLogin", true);
		}
		return new ModelAndView("index");
	}
	
	@RequestMapping(value="/registration")
	public ModelAndView registration(HttpSession session) throws Exception {
		return new ModelAndView("registration/registration"); 
	}
	
	@RequestMapping(value="/registration", method = RequestMethod.POST)
	public String registration(
			@RequestParam("name") String name,
			@RequestParam("email") String email,
			@RequestParam("address") String address,
			@RequestParam("age") int age,
			@RequestParam("username") String username,
			@RequestParam("password") String password,
			User user, Model model) throws Exception {
		try {
			user.setName(name);
			user.setEmail(email);
			user.setAddress(address);
			user.setAge(age);
			user.setUsername(username);
			user.setPassword(password);
					
			
			
			User userID = userService.register(user);
			
			userService.insertInformation(userID.getUser_id());
	
			return "registration/thankyou";
		} catch (Exception e) {
			System.out.println(e);
		}
		model.addAttribute("errMsg", "Email has already taken");
		return "registration/registration";
	}
	
	@RequestMapping(value="/verified")
	public String verified() throws Exception {
		return "registration/verified";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) throws Exception {
		return new ModelAndView("login/login"); 
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST) // login process
	public ModelAndView login( @RequestParam("email") String email,@RequestParam("password") String password, 
			@ModelAttribute("login") User user, Model model, 
			HttpServletRequest req, HttpServletResponse res) {
	
		HttpSession session = req.getSession();
		User isLogin = userService.login(email, password);
		
		if(isLogin != null) {
			
			
			session.setAttribute("email", isLogin.getEmail());
			session.setAttribute("userId", isLogin.getUser_id());
			session.setAttribute("isLogin", true);
			
			return new ModelAndView("redirect:/dashboard");
		}
		
		model.addAttribute("emailNotReg", email);
		String msg = "Credentials is incorrect !";
		model.addAttribute("message", msg);
		return new ModelAndView("/login/NotRegistrationYet");
	}
	
	@RequestMapping(value="/forgot-password")
	public ModelAndView forgotPassword(HttpServletResponse res) throws Exception {
		return new ModelAndView("password/forgot-password");  
	}
	
	@RequestMapping(value="/forgot-password", method = RequestMethod.POST) // forgot password logic
	public String forgotPassword(@RequestParam("emailAddress") String email, Model model, HttpServletRequest req) throws Exception {
		HttpSession session = req.getSession();
		String checkEmail = userService.checkEmail(email);
		
		if(checkEmail != null) {
			session.setAttribute("isReset", true);
			session.setAttribute("email", email);
			return "password/reset-password";
		}
				
		String msg = "Email not found";
		model.addAttribute("message", msg);
		return "password/forgot-password";
	}
	
	@RequestMapping(value="/reset")
	public ModelAndView reset(Model model, HttpSession session) throws Exception {
		if((Boolean) session.getAttribute("isReset")) {
			return new ModelAndView("password/reset-password");  
		}
	
		String msg = "Email required";
		model.addAttribute("message", msg);
		return new ModelAndView("password/forgot-password"); 
	}
	
	@RequestMapping(value="/reset", method = RequestMethod.POST) // reset password
	public String reset(@RequestParam("password") String password, Model model, HttpSession session) throws Exception {
		try {
			userService.updatePassword(password, (String) session.getAttribute("email"));
			
			String msg = "Password has been changed";
			model.addAttribute("scMessage", msg);
			session.invalidate();
		} catch (Exception e) {
			System.out.println(e);
			return "password/reset-password";
		}
		
		return "login/login";
	}
	
	@RequestMapping(value= "/dashboard")
	public ModelAndView dashboard(HttpSession session, Model model) throws Exception {
		
		try {
			this.setModel(model, session);
			
			return new ModelAndView("dashboard/dashboard");  
		} catch (Exception e) {
			System.out.println(e);
			String msg = "Login required";
			model.addAttribute("message", msg);
			return new ModelAndView("login/login");
		}
	}
	
	
	@RequestMapping(value= "/profile")
	public ModelAndView profile(HttpSession session, Model model) throws Exception {
		this.setModel(model, session);

		return new ModelAndView("dashboard/profile");
	}
	
	
	
	private void setModel(Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		String[] userDetails = userService.getDetailsById(userId).replaceAll("null", "-").split(",");
		String[] userInformation = userService.getInformationById(userId).replaceAll("null", "-").split(",");
		
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
	
	
	
	@RequestMapping(value ="/update", method = RequestMethod.GET)
	public ModelAndView update(HttpSession session, Model model) throws Exception {
		this.setModel(model, session);
		return new ModelAndView("dashboard/update"); 
	}
	
	@RequestMapping(value="/update", method = RequestMethod.POST) // update profile POST
	public ModelAndView up(
			@RequestParam("name") String name,
			@RequestParam("email") String email,
			@RequestParam("username") String username,
			@RequestParam("age") int age,
			@RequestParam("address") String address,
			HttpSession session, Model model) {
		
		Long id = (Long) session.getAttribute("userId");
		System.out.println(id);
		userService.updateProfil(id, name, email, address, age, username);
		
		this.setModel(model, session);
		
		return new ModelAndView("dashboard/profile");  
	}

	@RequestMapping(value="/update_information", method = RequestMethod.POST)
	public String updateInformation(
			@RequestParam("about") String about,
			@RequestParam("company") String company,
			@RequestParam("title") String title,
			@RequestParam("website") String website, Model model, HttpSession session) {
		
		System.out.println("masuk update");
		Long userId = (Long) session.getAttribute("userId");

		userService.updateInformation(userId, about, company, title, website);
		
		this.setModel(model, session);
		model.addAttribute("message","information is updated");
		return "dashboard/update";
	}
	
	
	
	@RequestMapping(value="/add_education", method = RequestMethod.POST)
	public String addAducation(
			@RequestParam("universityName") String university_name,
			@RequestParam("year") int year,
			@RequestParam("degree") String degree,
			@RequestParam("grades") String grades, 
			@RequestParam("achievement") String achievement, Model model, HttpSession session
			) {
		Long userId = (Long) session.getAttribute("userId");
		
		userService.addEdu(userId, university_name, year, degree, grades, achievement);
		
		this.setModel(model, session);
		model.addAttribute("message","information is updated");
		return "dashboard/update";
		
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpServletResponse res, HttpSession session) throws Exception {
		session.invalidate();

		Cookie eCookie = new Cookie("email", "");
		eCookie.setMaxAge(0); // 10 minute
		res.addCookie(eCookie);
		
		Cookie iCookie = new Cookie("userId", "");
		iCookie.setMaxAge(0);
		res.addCookie(iCookie);
		
		return "login/login"; 
	}
	
}


