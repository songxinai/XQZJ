package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.xuqiu;
import util.DBUtil;

public class xuqiudao {

		public static boolean add(xuqiu x)
		{
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			try 
			{
				con=DBUtil.conn();
				String sql="insert into t_dcwjxx(WJID,JGMC,TXDZ,DWWZ,DZYX,FRDB,YZBM,LXR,GDDH,YDDH,CZ,JGSX,JGJJ,JSXQMC,ZDKJXQGS,GJZ,YJLX,XKFL,XQJSSSLY,XQJSYYHY,JSXQHZMS,JHZTZ,QTJSMS,SFSH,QSXQNF,JZXQNF,GKGLBM,SZDY) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				pstmt=con.prepareStatement(sql);
				pstmt.setLong(1, x.getWjid());
				pstmt.setString(2, x.getJgmc());
				pstmt.setString(3, x.getTxdz());
				pstmt.setString(4, x.getDwwz());
				pstmt.setString(5, x.getDzyx());
				pstmt.setString(6, x.getFrdb());
				pstmt.setString(7, x.getYzbm());
				pstmt.setString(8, x.getLxr());
				pstmt.setString(9, x.getGddh());
				pstmt.setString(10, x.getYddh());
				pstmt.setString(11, x.getCz());
				pstmt.setString(12, x.getJgsx());
				pstmt.setString(13, x.getJgjj());
				pstmt.setString(14, x.getJsxqmc());
				pstmt.setString(15, x.getZdkjxqgs());
				pstmt.setString(16, x.getGjz());
				pstmt.setString(17, x.getYjlx());
				pstmt.setString(18, x.getXkfl());
				pstmt.setString(19, x.getXqjsssly());
				pstmt.setString(20, x.getXqjsyyhy());
				pstmt.setString(21, x.getJsxqhzms());
				pstmt.setInt(22, x.getJhztz());
				pstmt.setString(23, x.getQtjsms());
				pstmt.setInt(24, x.getSfsh());
				pstmt.setInt(25, x.getQsxqnf());
				pstmt.setInt(26, x.getJzxqnf());
				pstmt.setString(27, x.getGkglbm());
				pstmt.setString(28, x.getSzdy());
				pstmt.executeUpdate();
				return true;
			}
			catch (SQLException e) {
				System.out.println("登记失败");
				e.printStackTrace();
			}
			finally {
				DBUtil.close(rs, pstmt, con);
			}
			return false;
		}

		public static ArrayList<xuqiu> getAllXuqiu()
				{
					Connection connection=null;
					PreparedStatement preparedStatement=null;
					ResultSet rs=null;
					String sql="select * from t_dcwjxx";
					ArrayList<xuqiu> list=new ArrayList<>();
					try {
						connection=DBUtil.conn();
						preparedStatement=connection.prepareStatement(sql);
						rs=preparedStatement.executeQuery();
						while(rs.next())
						{
							xuqiu x=new xuqiu();
							x.setJgmc(rs.getString("JGMC"));
							x.setGkglbm(rs.getString("GKGLBM"));
							x.setTxdz(rs.getString("TXDZ"));
							x.setSzdy(rs.getString("SZDY"));
							x.setDwwz(rs.getString("DWWZ"));
							x.setDzyx(rs.getString("DZYX"));
							x.setFrdb(rs.getString("FRDB"));
							x.setYzbm(rs.getString("YZBM"));
							x.setLxr(rs.getString("LXR"));
							x.setGddh(rs.getString("GDDH"));
							x.setYddh(rs.getString("YDDH"));
							x.setCz(rs.getString("CZ"));
							x.setJgsx(rs.getString("JGSX"));
							x.setJgjj(rs.getString("JGJJ"));
							x.setJsxqmc(rs.getString("JSXQMC"));
							x.setQsxqnf(rs.getInt("QSXQNF"));
							x.setJzxqnf(rs.getInt("JZXQNF"));
							x.setZdkjxqgs(rs.getString("ZDKJXQGS"));
							x.setGjz(rs.getString("GJZ"));
							x.setJhztz(rs.getInt("JHZTZ"));
							x.setJsxqhzms(rs.getString("JSXQHZMS"));
							x.setYjlx(rs.getString("YJLX"));
							x.setXkfl(rs.getString("XKFL"));
							x.setXqjsssly(rs.getString("XQJSSSLY"));
							x.setXqjsyyhy(rs.getString("XQJSYYHY"));
							list.add(x);
						}
					} catch (SQLException e) {
						// TODO 自动生成的 catch 块
						e.printStackTrace();
					}
					finally {
						DBUtil.close(preparedStatement, connection);
					}
					return list;
				}
}