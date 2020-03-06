package com.lithan.CommunityPortal.controller;

import java.util.List;

import com.lithan.CommunityPortal.Dao.UserDao;
import com.lithan.CommunityPortal.Dao.UserDaoImpl;
import com.lithan.ComunityPortal.modal.User;
import com.opensymphony.xwork2.ActionSupport;

public class ViewUserAction  extends ActionSupport {


List<User> list=null;


public List<User> getList() {
return list;
}


public void setList(List<User> list) {
this.list = list;
}


@Override
public String execute() throws Exception {
UserDao dao=new UserDaoImpl();
list=dao.getAllUsers();
if(list!=null)
return SUCCESS;
else
return ERROR;
}

}
