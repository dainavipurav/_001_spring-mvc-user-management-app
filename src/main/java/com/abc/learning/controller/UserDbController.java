package com.abc.learning.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.abc.learning.dao.UserDbDao;
import com.abc.learning.model.UserModel;

@Controller
@RequestMapping("/db")
public class UserDbController {
	
	@Autowired
	UserDbDao userDbDao;

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
		int result = userDbDao.addUser(userModel);
		if (result > 0) {
			return "redirect:showAllUsers";
		} else {
			System.out.println("Error");
			return "redirect:registerUser";
		}
	}

	@RequestMapping("/showAllUsers")
	public String showAllUsers(Model model) {
		List<UserModel> userList = userDbDao.userList();
		model.addAttribute("userList", userList);
		return "user-list";
	}

	@RequestMapping("/view/{id}")
	public String viewUser(@PathVariable("id") int id, Model model) {
		System.out.println("Enterred");
		UserModel userModel = userDbDao.findUserById(id);
		model.addAttribute("user", userModel);

		return "view-user";
	}

	@RequestMapping("/update/{id}")
	public String updateUser(@PathVariable("id") int id,Model model) {
		System.out.println("Enterred");
		UserModel userModel = userDbDao.findUserById(id);
		model.addAttribute("user", userModel);
		model.addAttribute("action", "Update");
		model.addAttribute("actionUrl", "../updateProcess");
		return "form";
	}
	
	@RequestMapping("/updateProcess")
	public String updateProcessing(@ModelAttribute("user") UserModel userModel) {
		
		int result = userDbDao.updateUserById(userModel.getId(), userModel);
		
		if(result > 0) {
			return "redirect:showAllUsers";
		}else {
			return "redirect:updateUser";
		}
	}

	@RequestMapping("/delete/{id}")
	public String deleteUser(@PathVariable("id") int id,Model model) {
		userDbDao.deleteUserById(id);
		return "redirect:../showAllUsers";
	}

}
