package com.lithan.ComunityPortal.modal;


public class User {

	private String fname;
	private String lname;
	private String email;
	private String password;
	private String uname;
	private int type;
	private String company;
	private String job_title;
	private String dob;
	private String city;
	private String country;
	private int phone;
	private String about_me;
	private String qualification;
	private String university;
	private int year_of_study;
	private String job_des;
	private String company_name;
	private int years_of_experience;
	
	public User()
	{
		
	}
	public User(String fname, String lname, String email, String password, String uname, int type, String company, String job_title, String dob, String city,
			String country, int phone, String about_me, String qualification, String university, int year_of_study, 
			String job_des, String company_name, int years_of_experience) {
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.password = password;
		this.uname = uname;
		this.type=type;
		this.company = company;
		this.job_title= job_title;
		this.dob=dob;
		this.city=city;
		this.country=country;
		this.phone=phone;
		this.about_me=about_me;
		this.qualification=qualification;
		this.university=university;
		this.year_of_study=year_of_study;
		this.job_des=job_des;
		this.years_of_experience=years_of_experience;
		
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getFname() {
		return fname;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getJob_title() {
		return job_title;
	}
	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getAbout_me() {
		return about_me;
	}
	public void setAbout_me(String about_me) {
		this.about_me = about_me;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getUniversity() {
		return university;
	}
	public void setUniversity(String university) {
		this.university = university;
	}
	public int getYear_of_study() {
		return year_of_study;
	}
	public void setYear_of_study(int year_of_study) {
		this.year_of_study = year_of_study;
	}
	public String getJob_des() {
		return job_des;
	}
	public void setJob_des(String job_des) {
		this.job_des = job_des;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public int getYears_of_experience() {
		return years_of_experience;
	}
	public void setYears_of_experience(int years_of_experience) {
		this.years_of_experience = years_of_experience;
	}
	
}
