package com.upc.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.upc.beans.OfflineRefundFormBean;

@Controller
public class OfflineRefundController {

	@RequestMapping(value = "/OfflineRefund", method = RequestMethod.GET)
	public String showOfflineRefundPage(ModelMap model,@ModelAttribute("OfflineRefundFormBean") OfflineRefundFormBean objOfflineRefundFormBean) {

		System.out.println("In showOfflineRefundPage");
		
		 ArrayList<OfflineRefundFormBean> departments = new ArrayList<OfflineRefundFormBean>();
		 OfflineRefundFormBean obj1=new OfflineRefundFormBean();
		 obj1.setMerchant_code("T3239");
		 obj1.setTransaction_id("Test1");
		 
		 OfflineRefundFormBean obj2=new OfflineRefundFormBean();
		 obj2.setMerchant_code("T32390");
		 obj2.setTransaction_id("Test2");
		 
	        departments.add(obj1);
	        departments.add(obj2);
	
		model.addAttribute("departmentList", departments);
		return "OfflineRefund";
	}

	@RequestMapping(value = "/OfflineRefund", method = RequestMethod.POST)
	public String submit(@ModelAttribute("OfflineRefundFormBean") OfflineRefundFormBean objOfflineRefundFormBean,
			BindingResult result, ModelMap model) {

		if (result.hasErrors()) {
			System.out.println("OfflineRefundController Error in Binding");
			model.addAttribute("error", "Binding Error.");
		}

		else {
			model.addAttribute("error", "Refund Marked Succesfully.");
		}

		return "OfflineRefund";
	}

}
