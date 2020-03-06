package com.lithan.CommunityPortal.Dao;

import java.sql.ResultSet;
import java.util.List;

import com.lithan.ComunityPortal.modal.User;

public interface UserDao {
	
	public boolean addUser(User user);
	public User validateUser(String uname, String password);
	//public List<User> gettingusers(String listing);
	public boolean updateUser(User user);
	public List<User> searchUser(String search);
	public User resetpassword(String email);
	public boolean Passwordupdate(User user);
	public List<User> getAllUsers();
	public int deleteUser(String email);
	//public List<User> searchUser(String value);
	public User viewprofile(String email);
	public User adminpro(String email);
	
}
