package com.lithan.CommunityPortal.controller;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.lithan.CommunityPortal.Dao.UserDao;
import com.lithan.CommunityPortal.Dao.UserDaoImpl;
import com.lithan.ComunityPortal.modal.User;


public class UpdateAction implements SessionAware {
private SessionMap<String,Object> sessionMap;
	
	public SessionMap<String, Object> getSessionMap() {
		return sessionMap;
	}
	
	public void setSessionMap(SessionMap<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
	}
	
	User user =new User();
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public void setSession(Map<String, Object> map) {  
	    sessionMap=(SessionMap)map;}
	    
	public String execute() throws Exception {
		UserDao dao=new UserDaoImpl();
		boolean result=dao.updateUser(user);
	 
	if(result = true) {
		sessionMap.put("fname",user.getFname());
	    sessionMap.put("lname",user.getLname());
	    sessionMap.put("email",user.getEmail());
	    sessionMap.put("dob",user.getDob());
	    sessionMap.put("city",user.getCity());
	    sessionMap.put("phone",user.getPhone());
	    sessionMap.put("country",user.getCountry());
	    sessionMap.put("about_me",user.getAbout_me());
	    sessionMap.put("company",user.getCompany());
	    sessionMap.put("job_title",user.getJob_title());
	    sessionMap.put("qualification",user.getQualification());
	    sessionMap.put("year_of_study",user.getYear_of_study());
	    sessionMap.put("university",user.getUniversity());
	    sessionMap.put("job_des",user.getJob_des());
	    sessionMap.put("years_of_experience",user.getYears_of_experience());
	    sessionMap.put("company_name",user.getCompany_name());
		return "success";
		}
	else
		return "error";
}
}
