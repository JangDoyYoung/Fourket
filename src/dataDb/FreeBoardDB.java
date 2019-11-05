package dataDb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.oracle.DbConnect;
import dataDto.FreeBoardDto;

public class FreeBoardDB {
	DbConnect db = new DbConnect();
	
	public void insertfree(String subject)
	{
		String sql = "insert into freeboard (num,subject,writeday) values (seq_num.nextval,?,sysdate)";
		
		Connection conn = db.getWooConnection();
		PreparedStatement pstmt = null;
		
		try 
		{
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString( 1, subject);
			
			pstmt.execute();
		}
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally 
		{
			db.dbClose(pstmt, conn);
		}
	}
	
	public List<FreeBoardDto> getList()
	{
		String sql = "select * from freeboard";
		
		List<FreeBoardDto> list = new Vector<>();
		
		Connection conn = db.getWooConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try 
		{
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while ( rs.next() )
			{
				FreeBoardDto dto = new FreeBoardDto();
				dto.setNum( rs.getString("num") );
				dto.setSubject( rs.getString("subject") );
				dto.setWriteday( rs.getTimestamp("writeday") );
				
				list.add(dto);
			}
		}
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally 
		{
			db.dbClose(rs, pstmt, conn);
		}
		
		return list;
	}
}
