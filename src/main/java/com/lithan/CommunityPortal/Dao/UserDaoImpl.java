package com.lithan.CommunityPortal.Dao;

import java.sql.Connection;  

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.lithan.CommunityPortal.config.DBconfig;
import com.lithan.ComunityPortal.modal.User;

public class UserDaoImpl implements UserDao{
	Connection con = null;
	public boolean addUser(User user) {
		boolean flag = false;
		con = DBconfig.ConnectionToDataBase();
		try{
			PreparedStatement pst= con .prepareStatement
					("insert into user(fname,lname,email,password,userName) values (?,?,?,?,?)");
			pst.setString(1, user.getFname());
			pst.setString(2, user.getLname());
			pst.setString(3, user.getEmail());
			pst.setString(4, user.getPassword());
			pst.setString(5, user.getUname());
			
			int x=pst.executeUpdate();
			if(x>0)
				System.out.println("inserted");
				flag = true; 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	public User validateUser(String uname, String password) {
		con = DBconfig.ConnectionToDataBase();
		User u = null;
		String query="select * from user where password=? and userName=?";
		try {
			PreparedStatement stmt=con.prepareStatement(query);
			stmt.setString(1, password);
			stmt.setString(2, uname);
			
			ResultSet result=stmt.executeQuery();
			
			while(result.next())
			{
				u=new User();
				u.setFname(result.getString(4));
				u.setEmail(result.getString(6));
				u.setLname(result.getString(5));
				u.setDob(result.getString(7));
				u.setPhone(result.getInt(8));
				u.setCity(result.getString(9));
				u.setCountry(result.getString(10));
				u.setJob_title(result.getString(11));
				u.setCompany(result.getString(12));
				u.setAbout_me(result.getString(13));
				u.setQualification(result.getString(14));
				u.setYear_of_study(result.getInt(15));
				u.setUniversity(result.getString(16));
				u.setCompany_name(result.getString(17));
				u.setJob_des(result.getString(18));
				u.setYears_of_experience(result.getInt(19));
				u.setType(result.getInt(20));
			}
		} catch (SQLException e) {
			System.out.println("ERROR");
		}
		
		
		return u;	
	}
	
	public List<User> searchUser(String search) {
		con=DBconfig.ConnectionToDataBase();
		User s=null;
		List<User> list = new ArrayList<User>();
		System.out.println(search);
		String query="select * from user where fname like \""+search+"\" or lname like \""+search+"\" or company like \"" +search+"\" or city like \"" +search+"\" or country like \"" +search+"\" ";

		try {
		PreparedStatement stmt=con.prepareStatement(query);


		ResultSet result=stmt.executeQuery();

		while(result.next())
		{
		s=new User();
		s.setFname(result.getString(4));
		s.setEmail(result.getString(6));
		s.setLname(result.getString(5));
		s.setCity(result.getString(9));
		s.setCountry(result.getString(10));
		s.setJob_title(result.getString(11));
		s.setCompany(result.getString(12));
		list.add(s); }
		} catch (SQLException e) {
		e.printStackTrace();
		}

		return list;
		}	

	public boolean updateUser(User user) {
		int count=0;
		con = DBconfig.ConnectionToDataBase();
		
		try{
			PreparedStatement pst= con .prepareStatement
("update user set fname=?,lname=?,dob=?,phone=?,city=?,country=?,job_title=?,company=?,about_me=?,qualification=?,year_of_study=?,university=?,company_name=?,job_des=?,years_of_experience=? WHERE email=?;");
			
			
			pst.setString(1,user.getFname());
			pst.setString(2, user.getLname());
			pst.setString(3,user.getDob());
			pst.setInt(4,user.getPhone());
			pst.setString(5,user.getCity());
			pst.setString(6,user.getCountry());
			pst.setString(7,user.getJob_title());
			pst.setString(8,user.getCompany());
			pst.setString(9,user.getAbout_me());
			pst.setString(10,user.getQualification());
			pst.setInt(11,user.getYear_of_study());
			pst.setString(12,user.getUniversity());
			pst.setString(13,user.getCompany_name());
			pst.setString(14,user.getJob_des());
			pst.setInt(15,user.getYears_of_experience());
			pst.setString(16,user.getEmail());
			
			
			int x=pst.executeUpdate();
			if(x>0)
				System.out.println("record updated");
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return (count>0); 
	}
	
	
	public User resetpassword(String checkemail) {

		con = DBconfig.ConnectionToDataBase();
		User fp=null;
		// List<User> list = new ArrayList<User>();
		try{
		PreparedStatement stmt=con.prepareStatement("select * FROM user where email=?");
		stmt.setString(1, checkemail);

		ResultSet result = stmt.executeQuery();
		while (result.next()) {
		{
			fp=new User();
			fp.setEmail(result.getString(6));
		}

		}
		}
		catch(SQLException e) {
		e.printStackTrace();

		}
		return fp;
		}
	
	public boolean Passwordupdate(User user) {
		boolean use = false;
		con = DBconfig.ConnectionToDataBase();
		try{
		PreparedStatement stmt=con.prepareStatement
		("update user set password = ? where email = ?");

		stmt.setString(1, user.getPassword());
		stmt.setString(2, user.getEmail());

		int x=stmt.executeUpdate();
		if(x>0)
		use=true;
		} catch (Exception e) {
		e.printStackTrace();
		}
		return use;
		}

	public List<User> getAllUsers() {
		con = DBconfig.ConnectionToDataBase();
		User s=null;
		List<User> list = new ArrayList<User>();
		String query="select * from user";
		try {
		PreparedStatement stmt=con.prepareStatement(query);


		ResultSet result=stmt.executeQuery();

		while(result.next())
		{
		s=new User();
		s.setFname(result.getString(4));
		s.setUname(result.getString(2));
		s.setPassword(result.getString(3));
		s.setEmail(result.getString(6));
		s.setLname(result.getString(5));
		s.setCity(result.getString(9));
		s.setCountry(result.getString(10));
		s.setJob_title(result.getString(11));
		s.setCompany(result.getString(12));
		list.add(s); }
		} catch (SQLException e) {
		e.printStackTrace();
		}

		return list;
		}
	
	
	public int deleteUser(String email) {
		con = DBconfig.ConnectionToDataBase();
		int i = 0;
		try {
		String sql = "delete from user where email=?";
		PreparedStatement stmt=con.prepareStatement(sql);
		stmt.setString(1, email);
		i = stmt.executeUpdate();
		return i;
		} catch (Exception e) {
		e.printStackTrace();
		return 0;
		}
		}

	public User viewprofile(String email) {
		con = DBconfig.ConnectionToDataBase();
		User u = null;
		try {
		String sql = "select * from user where email=?";
		PreparedStatement stmt=con.prepareStatement(sql);
		stmt.setString(1,email);
		
		ResultSet result=stmt.executeQuery();
		if(result.next())
		{
		u=new User();
		u.setFname(result.getString(4));
		u.setEmail(result.getString(6));
		u.setLname(result.getString(5));
		u.setDob(result.getString(7));
		u.setPhone(result.getInt(8));
		u.setCity(result.getString(9));
		u.setCountry(result.getString(10));
		u.setJob_title(result.getString(11));
		u.setCompany(result.getString(12));
		u.setAbout_me(result.getString(13));
		u.setQualification(result.getString(14));
		u.setYear_of_study(result.getInt(15));
		u.setUniversity(result.getString(16));
		u.setCompany_name(result.getString(17));
		u.setJob_des(result.getString(18));
		u.setYears_of_experience(result.getInt(19));
		}
		} catch (SQLException e) {
		e.printStackTrace();
		}

		return u;
		}

	
	public User adminpro(String email) {
		con = DBconfig.ConnectionToDataBase();
		User u = null;
		try {
		String sql = "select * from user where email=?";
		PreparedStatement stmt=con.prepareStatement(sql);
		stmt.setString(1,email);
		
		ResultSet result=stmt.executeQuery();
		if(result.next())
		{
		u=new User();
		u.setFname(result.getString(4));
		u.setEmail(result.getString(6));
		u.setLname(result.getString(5));
		u.setDob(result.getString(7));
		u.setPhone(result.getInt(8));
		u.setCity(result.getString(9));
		u.setCountry(result.getString(10));
		u.setJob_title(result.getString(11));
		u.setCompany(result.getString(12));
		u.setAbout_me(result.getString(13));
		u.setQualification(result.getString(14));
		u.setYear_of_study(result.getInt(15));
		u.setUniversity(result.getString(16));
		u.setCompany_name(result.getString(17));
		u.setJob_des(result.getString(18));
		u.setYears_of_experience(result.getInt(19));
		}
		} catch (SQLException e) {
		e.printStackTrace();
		}

		return u;
		}

		}

