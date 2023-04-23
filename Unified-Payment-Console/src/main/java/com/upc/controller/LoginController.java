package com.upc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.upc.service.LoginService;

@Controller
public class LoginController {
	
	Logger logger = LoggerFactory.getLogger(LoginController.class);
	
    @Autowired
    LoginService service;

    @RequestMapping(value = "/Login", method = RequestMethod.GET)
    public String showLoginPage() {
    logger.info("In Login GET Method");
	return "Login";
    }
    

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String loginPage() {
    logger.info("In Universal Login GET Method");
	return "Login";
    }
    
    @RequestMapping(value = "/Login", method = RequestMethod.POST)
    public String showWelcomePage(ModelMap model, 
    @RequestParam String login, @RequestParam String password) {
    logger.info("In ShowWelcomePage Method");
   
  	
    	
	boolean isValidUser = service.validateUser(login, password);
	if (!isValidUser) {
            model.put("errorMessage", "Invalid Credentials");
            logger.error("Invalid Credentials for Login ID-->"+login);
            model.addAttribute("error", "Invalid Credentials for Login ID");
            return "Login";
	}
	 logger.info(login+"<--Is Logged");
	model.put("name", login);
	model.put("password", password);
	return "Home";
    }
}