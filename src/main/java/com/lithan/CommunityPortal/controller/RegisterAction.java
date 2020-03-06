package com.lithan.CommunityPortal.controller;

import com.lithan.CommunityPortal.Dao.UserDao;
import com.lithan.CommunityPortal.Dao.UserDaoImpl;
import com.lithan.ComunityPortal.modal.User;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
        
	User user =new User();
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String execute() throws Exception {
		UserDao dao=new UserDaoImpl();
		boolean result=dao.addUser(user);
		if(result)
			return SUCCESS;
		else
			return ERROR;
	}
}