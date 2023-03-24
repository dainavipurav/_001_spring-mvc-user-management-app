package com.abc.learning.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.abc.learning.model.UserModel;


@Controller
@RequestMapping("/api")
public class UserController {

	private List<UserModel> userList = new ArrayList<>();

	@RequestMapping("/register")
	public String registerUser(Model model) {
		System.out.println("Enterred");
		UserModel userModel = new UserModel();
		model.addAttribute("user", userModel);
		model.addAttribute("action", "Register");
		model.addAttribute("actionUrl", "registerProcess");
		return "form";
	}

	@RequestMapping("/registerProcess")
	public String registerProcessing(@ModelAttribute("user") UserModel userModel) {
		userList.add(userModel);
		for(UserModel user : userList) {
			System.out.println(user.toString());
		}
		
		return "redirect:showAllUsers";
	}
	
	@RequestMapping("/update/{id}")
	public String updateUser(@PathVariable("id") int id,Model model) {
		System.out.println("Enterred");
		UserModel userModel = userList.stream().filter(t -> t.getId() == id).findFirst().get();
		model.addAttribute("user", userModel);
		model.addAttribute("action", "Update");
		model.addAttribute("actionUrl", "../updateProcess");
		return "form";
	}
	
	@RequestMapping("/updateProcess")
	public String updateProcessing(@ModelAttribute("user") UserModel userModel) {
		System.out.println("User Details : "+userModel.toString());
		for(int i=0;i<userList.size();i++) {
			if(userList.get(i).getId() == userModel.getId()) {
				System.out.println("Id Matched");
				userList.get(i).setAge(userModel.getAge());
				userList.get(i).setCountry(userModel.getCountry());
				userList.get(i).setName(userModel.getName());
				userList.get(i).setGender(userModel.getGender());
				userList.get(i).setMobile(userModel.getMobile());
			}
			System.out.println(userList.get(i).toString());
		}
		return "redirect:showAllUsers";
	}
	
	@RequestMapping("/view/{id}")
	public String viewUser(@PathVariable("id") int id,Model model) {
		System.out.println("Enterred");
		UserModel userModel = userList.stream().filter(t -> t.getId() == id).findFirst().get();
		model.addAttribute("user", userModel);
		
		return "view-user";
	}
	
	@RequestMapping("/showAllUsers")
	public String showAllUsers(Model model) {
		model.addAttribute("userList", userList);
		return "user-list";
	}
	
	@RequestMapping("/delete/{id}")
	public String deleteUser(@PathVariable("id") int id,Model model) {
		System.out.println("Enterred Delete");
		for(int i=0;i<userList.size();i++) {
			System.out.println(userList.get(i).toString());
			if(userList.get(i).getId() == id) {
				System.out.println("Id Matched");
				userList.remove(i);
			}
		}
		return "redirect:../showAllUsers";
	}
}