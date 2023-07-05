package com.mtica.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.mtica.bean.User;


public class UserDao {
	public static Connection getConnection() {
		Connection con=null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@10.199.20.3:1521:mother","mtcaa2230","mtcaa2230");
		}
		catch(Exception e) {System.out.println(e);}
		System.out.println("new con created. ");
		return con;
	}
	public static int save(User u) {
		int status=0;
		try
		{
			Connection con=getConnection();
			System.out.println("con open in save");
			PreparedStatement ps=con.prepareStatement("insert into studentdetails(rollno,stuname,gender,stuaadharno,mname,maadharno,fname,faadharno,occupation,income,dob,bloodgroup,nationality,cor,caste,address,mobileno,email) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, u.getRollno());
			ps.setString(2, u.getStuname());
			ps.setString(3, u.getGender());
			ps.setInt(4, u.getStuaadharno());
			ps.setString(5, u.getMname());
			ps.setInt(6, u.getMaadharno());
			ps.setString(7, u.getFname());
			ps.setInt(8, u.getFaadharno());
			ps.setString(9, u.getOccupation());
			ps.setInt(10, u.getIncome());
			ps.setString(11, u.getDob());
			ps.setString(12, u.getBloodgroup());
			ps.setString(13, u.getNationality());
			ps.setString(14, u.getCor());
			ps.setString(15, u.getCaste());
			ps.setString(16, u.getAddress());
			ps.setInt(17, u.getMobileno());
			ps.setString(18, u.getEmail());
			status=ps.executeUpdate();
			con.close();
			System.out.println("con closed from save");
		}
		catch(Exception e) {System.out.println(e);}
		return status;
	}


	//	public static int update(User u) {
	//		int status=0;
	//		try {
	//			Connection con=getConnection();
	//			PreparedStatement ps=con.prepareStatement("update register set name=?,sex=?,password=?,course=?,email=? where id=?");
	//
	//			ps.setString(1,u.getName());
	//			ps.setString(2,u.getPassword());
	//			ps.setInt(6, u.getId());
	//			ps.setString(3, u.getSex());
	//			ps.setString(4, u.getCourse());
	//			ps.setString(5, u.getEmail());
	//			status=ps.executeUpdate();
	//			con.close();
	//			System.out.println("con closed FROM get record from id ");
	//		}catch(Exception e) {System.out.println(e);}
	//		return status;
	//	}
	//	public static int delete(User u) {
	//		int status=0;
	//		try {
	//			Connection con=getConnection();
	//			PreparedStatement ps=con.prepareStatement("delete from register where id=?");
	//			ps.setInt(1,u.getId());
	//			status=ps.executeUpdate();
	//			con.close();
	//			System.out.println("con closed from delete ");
	//		}catch(Exception e) {System.out.println(e);}
	//		return status;
	//	}

	public static List<User>getAllRecords(){
		List<User> list=new ArrayList<User>();
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from studentdetails");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				User u=new User();
				u.setRollno(rs.getInt("rollno"));
				u.setStuname(rs.getString("stuname"));
				u.setGender(rs.getString("gender"));
				u.setStuaadharno(rs.getInt("stuaadharno"));
				u.setMname(rs.getString("mname"));
				u.setMaadharno(rs.getInt("maadharno"));
				u.setFname(rs.getString("fname"));
				u.setFaadharno(rs.getInt("faadharno"));
				u.setOccupation(rs.getString("occupation"));
				u.setIncome(rs.getInt("income"));
				u.setDob(rs.getString("dob"));
				u.setBloodgroup(rs.getString("bloodgroup"));
				u.setNationality(rs.getString("nationality"));
				u.setCor(rs.getString("cor"));
				u.setCaste(rs.getString("caste"));
				u.setAddress(rs.getString("address"));
				u.setMobileno(rs.getInt("mobileno"));
				u.setEmail(rs.getString("email"));

				list.add(u);
			}
			con.close();
			System.out.println("con closed from getAllRecords ");

		}
		catch(Exception e) {System.out.println(e);
		}
		return list;
	}


	//	public static User getRecordById(int id) {
	//		User u=null;
	//		try {
	//			Connection con=getConnection();
	//			PreparedStatement ps=con.prepareStatement("select * from register where id=?");
	//			ps.setInt(1,id);
	//			ResultSet rs=ps.executeQuery();
	//			while(rs.next()) {
	//				u=new User();
	//				u.setId(rs.getInt("id"));
	//				u.setName(rs.getString("name"));
	//				u.setPassword(rs.getString("password"));
	//				u.setSex(rs.getString("sex"));
	//				u.setCourse(rs.getString("course"));
	//				u.setEmail(rs.getString("email"));
	//			}
	//			con.close();
	//			System.out.println("con closed from get record from id ");
	//		}catch(Exception e) {System.out.println(e);}
	//		return u;
	//	}

}