package com.romantic.factor.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class DBLink {
	private Connection conn;
	private Statement stmt;
	private ResultSet rs = null;

	/**
	 * 静态代码块
	 */
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	/**
	 * 获得Connection
	 */
	public Connection getConn() {
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	/**
	 * 使用Statement操作查询
	 * @param sql
	 * @param columnName 列名
	 * @return 返回某列的值
	 * */
	public String query(String sql,String columnName) {
		String result="";
		try {
			stmt = getConn().createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				result=rs.getString(columnName);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			colse();
		}
		return result;
	}

	/**
	 * 执行数据更新的方法
	 * @param sql String 的SQL语句
	 * @return Integer 类型的数据 表示受影响的行数
	 */
	public int update(String sql) {
		try {
			stmt = getConn().createStatement();
			return stmt.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		} finally {
			colse();
		}
	}

	/**
	 * 数据库关闭操作
	 * */
	public void colse() {
		if (rs != null) {try {rs.close();} catch (SQLException e) {e.printStackTrace();}}
		if (stmt != null) {try {stmt.close();} catch (Exception e) {e.printStackTrace();}}
		if (conn != null) {try {conn.close();} catch (Exception e) {e.printStackTrace();}
		}
	}
}