package com.abc.learning.model;

public class UserModel {

	private int id;

//	@Size(min = 1, message = "Name required")
	private String name;

//	@NotNull(message = "Country required")
	private String country;

//	@NotNull(message = "Age required")
//	@Min(value = 18, message = "Minimum age limit is 18")
	private int age;

//	@Size(min = 1, message = "Name required")
//	@Size(max = 10, min = 1, message = "Mobile num should be atleast 10 digits")
	private String mobile;

//	@NotNull(message = "Age required")
//	@Min(value = 18, message = "Minimum age limit is 18")
	private String gender;

	public UserModel() {
	}

	public UserModel(String name, String country, int age, String mobile, String gender) {
		super();
		this.name = name;
		this.country = country;
		this.age = age;
		this.mobile = mobile;
		this.gender = gender;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "UserModel [id=" + id + ", name=" + name + ", country=" + country + ", age=" + age + ", mobile=" + mobile
				+ ", gender=" + gender + "]";
	}

}
