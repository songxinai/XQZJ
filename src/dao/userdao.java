package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.user;
import util.DBUtil;

public class userdao {

		public static boolean add(user user)
		{
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			try 
			{
				con=DBUtil.conn();
				String sql="insert into user(username,password,xm,sfzh,xb,gj,ss,gzdw,zzjgdm,zyfx,szhy,jycd,zc,txdz,yzbm,sj,gddh,yx,qq) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, user.getUsername());
				pstmt.setString(2, user.getPassword());
				pstmt.setString(3, user.getXm());
				pstmt.setString(4, user.getSfzh());
				pstmt.setString(5, user.getXb());
				pstmt.setString(6, user.getGj());
				pstmt.setString(7, user.getSs());
				pstmt.setString(8, user.getGzdw());
				pstmt.setString(9, user.getZzjgdm());
				pstmt.setString(10, user.getZyfx());
				pstmt.setString(11, user.getSzhy());
				pstmt.setString(12, user.getJycd());
				pstmt.setString(13, user.getZc());
				pstmt.setString(14, user.getTxdz());
				pstmt.setString(15, user.getYzbm());
				pstmt.setString(16, user.getSj());
				pstmt.setString(17, user.getGddh());
				pstmt.setString(18, user.getYx());
				pstmt.setString(19, user.getQq());
				pstmt.executeUpdate();
				return true;
			}
			catch (SQLException e) {
				System.out.println("注册失败");
				e.printStackTrace();
			}
			finally {
				DBUtil.close(rs, pstmt, con);
			}
			return false;
		}
		
		public static boolean getAllUser(String username,String password)
		{
			Connection conn=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			try {
				conn=DBUtil.conn();
				String sql_query="select * from user where username = '"+username+"' and password = '"+password+"'";
				System.out.println(sql_query);
				pstmt=conn.prepareStatement(sql_query);
				rs=pstmt.executeQuery();
				if(rs.next()==false)
				{
					System.out.println("用户名或密码错误");
					return false;
				}
				else
				{
					System.out.println("用户名及密码正确");
					return true;
				}
			}
			catch (SQLException e) {
				System.out.println("未连接");
				e.printStackTrace();
			}
			finally {
				DBUtil.close(rs, pstmt, conn);
			}
			return false;
		}
		
		public static user getUser(String username)
		{
			Connection connection=null;
			PreparedStatement preparedStatement=null;
			ResultSet rs=null;
			String sql="select * from user where username ='" + username + "'";
			user user1=null;
			try {
				connection=DBUtil.conn();
				preparedStatement=connection.prepareStatement(sql);
				rs=preparedStatement.executeQuery();
				while(rs.next())
				{
					String password=rs.getString("password");
					int permission = rs.getInt("permission");
					user1=new user(username,password,permission);
				}
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			finally {
				DBUtil.close(preparedStatement, connection);
			}
			System.out.print(user1);
			return user1;
		}
		
		public static ArrayList<user> getPermission()
		{
			Connection connection=null;
			PreparedStatement preparedStatement=null;
			ResultSet rs=null;
			String sql="select * from user";
			ArrayList<user> list=new ArrayList<>();
			try {
				connection=DBUtil.conn();
				preparedStatement=connection.prepareStatement(sql);
				rs=preparedStatement.executeQuery();
				while(rs.next())
				{
					user user=new user();
					user.setUsername(rs.getString("username"));
					user.setPassword(rs.getString("password"));
				    user.setPermission(rs.getInt("permission"));
					list.add(user);
				}
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			finally {
				DBUtil.close(preparedStatement, connection);
			}
			System.out.print(list);
			return list;
		}
}