package com.lithan.CommunityPortal.controller;

import com.lithan.CommunityPortal.Dao.UserDao;
import com.lithan.CommunityPortal.Dao.UserDaoImpl;
import com.lithan.ComunityPortal.modal.User;
import com.opensymphony.xwork2.ActionSupport;

public class AdminPublic extends ActionSupport {
User user;
	String email;
	UserDao dao = new UserDaoImpl();
	
	
	public String execute() throws Exception{
		try {
			
			user = dao.adminpro(email);
			if (user!=null) {
				System.out.println(email);
			}
			else {
				System.out.println("SOME ERROR");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "success";
	
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}
