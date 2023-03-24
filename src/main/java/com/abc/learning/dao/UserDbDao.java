package com.abc.learning.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.abc.learning.model.UserModel;

public class UserDbDao {
	private JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public List<UserModel> userList() {
		String query = "SELECT * FROM userTable";
		List<UserModel> userList = new ArrayList<>();
		List<Map<String, Object>> map = template.queryForList(query);
		map.forEach(t -> {
			UserModel userModel = new UserModel();
			userModel.setId((int) t.get("id"));
			userModel.setName((String) t.get("name"));
			userModel.setCountry((String) t.get("country"));
			userModel.setAge((int) t.get("age"));
			userModel.setGender((String) t.get("gender"));
			userModel.setMobile((String) t.get("mobile"));
			userList.add(userModel);
		});
		return userList;
	}

	public int addUser(UserModel userModel) {
		String query = "INSERT INTO userTable  (name,country,age,mobile,gender) values('" + userModel.getName() + "','"
				+ userModel.getCountry() + "','" + userModel.getAge() + "','" + userModel.getMobile() + "','"
				+ userModel.getGender() + "')";

		return resultbyQuery(query);
	}

	public UserModel findUserById(int id) {
		String query = "SELECT * FROM userTable WHERE id=" + id + "";

		Map<String, Object> map = template.queryForMap(query);

		UserModel userModel = new UserModel();
		userModel.setId((int) map.get("id"));
		userModel.setName((String) map.get("name"));
		userModel.setAge((int) map.get("age"));
		userModel.setCountry((String) map.get("country"));
		userModel.setGender((String) map.get("gender"));
		userModel.setMobile((String) map.get("mobile"));

		return userModel;
	}

	public int updateUserById(int id, UserModel userModel) {
		String query = "UPDATE userTable SET name = '" + userModel.getName() + "',age = '" + userModel.getAge()
				+ "',country = '" + userModel.getCountry() + "',gender = '" + userModel.getGender() + "',mobile = '"
				+ userModel.getMobile() + "' WHERE id = " + id + "";

		return resultbyQuery(query);
	}

	public int deleteUserById(int id) {
		String query = "DELETE FROM userTable WHERE id = " + id + "";

		return resultbyQuery(query);
	}

	public int resultbyQuery(String query) {
		try {
			int result = template.update(query);

			return result;
		} catch (Exception e) {
			System.out.println("Exception occurred");
			return -1;
		}
	}
}
