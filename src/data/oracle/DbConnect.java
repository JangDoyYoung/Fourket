package data.oracle;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbConnect {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";

	String user="angel2";
	String pass="a1234";

	public DbConnect()
	{
		try
		{
			Class.forName(driver);
		} 
		catch (ClassNotFoundException e) 
		{
			// TODO Auto-generated catch block
			System.out.println("오라클 드라이버 실패" + e.getMessage() );
		}
	}
	
	public Connection getConnection()
	{
		// db server 에 연결 시도 
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, user, pass);
		}
		catch (SQLException e)
		{
			System.out.println( "오라클 연결 실패 : " + e.getMessage() );
		}
		return conn;
	}
	
	public void dbClose(PreparedStatement pstmt, Connection conn)
	{
		try 
		{
			pstmt.close();
			conn.close();
		}
		catch(SQLException e) {}
	}
	
	public void dbClose(ResultSet rs, PreparedStatement pstmt, Connection conn)
	{
		try 
		{
			rs.close();
			pstmt.close();
			conn.close();
		}
		catch(SQLException e) {}
	}
	
	public void dbClose(Statement stmt, Connection conn)
	{
		try 
		{
			stmt.close();
			conn.close();
		}
		catch(SQLException e) {}
	}
	
	public void dbClose(ResultSet rs, Statement stmt, Connection conn)
	{
		try 
		{
			rs.close();
			stmt.close();
			conn.close();
		}
		catch(SQLException e) {}
	}
	
}
