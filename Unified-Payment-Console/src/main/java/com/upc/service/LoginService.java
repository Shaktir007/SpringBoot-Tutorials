package com.upc.service;

import org.springframework.stereotype.Service;

@Service
public class LoginService {
    public boolean validateUser(String userid, String password) {
	return userid.equalsIgnoreCase("skr") 
	&& password.equalsIgnoreCase("skr");
    }
}