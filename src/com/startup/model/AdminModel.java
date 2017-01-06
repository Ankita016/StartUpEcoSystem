package com.startup.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.startupecosystem.bean.AddClientBean;
import com.startupecosystem.bean.AddProjectSales;
import com.startupecosystem.bean.LoginBean;

public class AdminModel {

	private Connection con = null;
	private ResultSet rs = null;

  public Connection getDbConnection() throws ClassNotFoundException, SQLException
	{
		con = null;
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/startup", "root", "root");
		return con;
	}
    
	public ResultSet roleAdmin() throws ClassNotFoundException, SQLException
	{
		con  = getDbConnection();
    	PreparedStatement ps = con.prepareStatement("select distinct role from role; ");
    	ResultSet rs = ps.executeQuery();
    	System.out.println("success mdel");
    	return rs;
	}
	
	
/*	public ResultSet adminLogin(Bean b) throws ClassNotFoundException, SQLException
	{
		System.out.println("...."+b.getId()+"....."+b.getPassword());
		Connection con = getDbConnection();
		PreparedStatement ps = con.prepareStatement("select id,password from role where id = ? and password = ?");
		ps.setString(1, b.getId());
		ps.setString(2, b.getPassword());		
		rs = ps.executeQuery();
			System.out.println("..mode succ..");
		
		return rs;
	}
*/
	public ResultSet adminLogin(LoginBean lb) throws ClassNotFoundException, SQLException
	{
		Connection con = getDbConnection();
		PreparedStatement ps = con.prepareStatement("select *from role where id = ? and password = ? and role = ?");
		ps.setString(1,lb.getId());
		ps.setString(2,lb.getPassword());
		ps.setString(3, lb.getRoleopt());
		ResultSet rs = ps.executeQuery();
		
		return rs;
	}
	public ResultSet financeLogin(LoginBean b) throws ClassNotFoundException, SQLException
	{
		System.out.println("...."+b.getId()+"....."+b.getPassword());
		Connection con = getDbConnection();
		PreparedStatement ps = con.prepareStatement("select id,password from role where id = ? and password = ?");
		ps.setString(1, b.getId());
		ps.setString(2, b.getPassword());		
	    rs = ps.executeQuery();
		System.out.println("..true.."+rs);
		return rs;
	}
	public ResultSet HrLogin(LoginBean b) throws ClassNotFoundException, SQLException
	{
		System.out.println("...."+b.getId()+"....."+b.getPassword());
		Connection con = getDbConnection();
		PreparedStatement ps = con.prepareStatement("select *id,password from admin where id = ? and password = ?");
		ps.setString(1, b.getId());
		ps.setString(2, b.getPassword());		
		rs = ps.executeQuery();
		return rs;
	}
	public ResultSet SalesLogin(LoginBean b) throws ClassNotFoundException, SQLException
	{
		System.out.println("...."+b.getId()+"....."+b.getPassword());
		Connection con = getDbConnection();
		PreparedStatement ps = con.prepareStatement("select * from admin where id = ? and password = ?");
		ps.setString(1, b.getId());
		ps.setString(2, b.getPassword());		
		rs = ps.executeQuery();
		return rs;
	}
	public int yearlyHolidayDecide(String holiday) throws ClassNotFoundException, SQLException
	{
		int i = 0;
		Connection con = getDbConnection();
		PreparedStatement ps = con.prepareStatement("update leaves set total_leave = ? , balance_leave = ? where department_name = 'EMPLOYEE'");
		ps.setString(1, holiday);
		ps.setString(2, holiday);
		i = ps.executeUpdate();
		return i;
	}
	
	public int addClient(AddClientBean acb) throws ClassNotFoundException, SQLException
	{
		int i = 0;
		Connection con = getDbConnection();
		PreparedStatement ps=con.prepareStatement("insert into client values(?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, acb.getCid());
		ps.setString(2, acb.getName());
		ps.setString(3, acb.getEmail());
		ps.setString(4, acb.getAge());
		ps.setString(5, acb.getSkype());
		ps.setString(6, acb.getContact());
		ps.setString(7, acb.getAddress());
		ps.setString(8, acb.getCountry());
		ps.setString(9, acb.getCity());
		ps.setString(10, acb.getGender());
		ps.setString(11, acb.getOrder());
		ps.setString(12,acb.getService());
		
		i = ps.executeUpdate();
		return i;
	}
	// sales part 
	public int removeClient(String cid) throws ClassNotFoundException, SQLException
	{
		int i = 0;
		Connection con = getDbConnection();
		PreparedStatement ps=con.prepareStatement("delete from client where cid=? ");
		ps.setString(1, cid);
		i=ps.executeUpdate();
		return i;
	}
	
	// not work direct by servlet
	public int AddProjectsSales(AddProjectSales aps) throws ClassNotFoundException, SQLException
	{
		int j = 0,i=0 ;
		String cpid = null;
		Connection con = getDbConnection();
		PreparedStatement ps=con.prepareStatement("insert into project values(?,?,?,?,?,?,?,?,?)");
		PreparedStatement ps1=con.prepareStatement("insert into clientproject values(?,?,?)");
		PreparedStatement ps2=con.prepareStatement("insert into income(cpid) values(?)");
		
		ps.setString(1, aps.getPid());
		ps.setString(2, aps.getProject_name());
		ps.setString(3, aps.getProject_type());
		ps.setString(4, aps.getTechnology());
		ps.setString(5, aps.getProject_cost());
		ps.setString(6, aps.getDuration());
		ps.setString(7, aps.getEntrydate());
		ps.setString(8, aps.getDuedate());
		ps.setString(9, aps.getCid());
		
		
		cpid=aps.getPid() +"-"+aps.getCid();

		ps1.setString(1, cpid);
		ps1.setString(2, aps.getCid());
		ps1.setString(3, aps.getPid());
		

		ps2.setString(1, cpid);
		
		j=ps1.executeUpdate();
		j=ps2.executeUpdate();
		i=ps.executeUpdate();
		return i;
	}
	
	
	
	
}
