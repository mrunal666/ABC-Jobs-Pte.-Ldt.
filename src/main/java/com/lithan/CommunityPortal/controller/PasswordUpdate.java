package com.lithan.CommunityPortal.controller;

import java.util.List;

import com.lithan.CommunityPortal.Dao.UserDao;
import com.lithan.CommunityPortal.Dao.UserDaoImpl;
import com.lithan.ComunityPortal.modal.User;
import com.opensymphony.xwork2.ActionSupport;

public class PasswordUpdate extends ActionSupport{

List<User> list=null;


public List<User> getList() {
return list;
}


public void setList(List<User> list) {
this.list = list;
}

User user=new User();


public User getUser() {
return user;
}
public void setUser(User user) {
this.user = user;
}
@Override
public String execute() throws Exception {
UserDao dao=new UserDaoImpl();
boolean result=dao.Passwordupdate(user);
if(result)
return SUCCESS;
else
return ERROR;
}
}

