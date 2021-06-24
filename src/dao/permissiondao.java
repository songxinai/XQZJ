package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.permission;
import util.DBUtil;

public class permissiondao {
	public static ArrayList<permission> getUser(int permission)
	{
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		ResultSet rs=null;
		String sql="select * from permission where permission ='" + permission + "'";
		ArrayList<permission> list1=new ArrayList<>();
		try {
			connection=DBUtil.conn();
			preparedStatement=connection.prepareStatement(sql);
			rs=preparedStatement.executeQuery();
			while(rs.next())
			{
				permission p=new permission();
				p.setPermission(rs.getInt("permission"));
				p.setPermissionid(rs.getInt("permissionid"));
				list1.add(p);
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		finally {
			DBUtil.close(preparedStatement, connection);
		}
		return list1;
	}
}