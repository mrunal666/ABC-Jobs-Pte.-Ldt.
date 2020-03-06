package com.lithan.CommunityPortal.controller;

import java.util.List;

import com.lithan.CommunityPortal.Dao.*;

import com.lithan.ComunityPortal.modal.*;
import com.opensymphony.xwork2.ActionSupport;

public class SearchAction extends ActionSupport{

List<User> list=null;

public List<User> getList() {
return list;
}
public void setList(List<User> list) {
this.list = list;
}

 private String search;
 
public String getSearch() {
return search;
}
public void setSearch(String search) {
this.search = search;
}

@Override
public String execute() throws Exception {
UserDao dao=new UserDaoImpl();
list=dao.searchUser(search);
if(list!=null)
{
System.out.println(list);
return SUCCESS;
}
else
return ERROR;
}

}