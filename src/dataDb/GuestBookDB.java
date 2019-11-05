package dataDb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.oracle.DbConnect;
import dataDto.GuestBookDto;

public class GuestBookDB {
	DbConnect db = new DbConnect();
	
	//추가
	public void insertGuest(String subject)
	{
		String sql = "insert into guestbook values (seq_num.nextval,?,sysdate)";
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		try
		{
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString( 1, subject );
			
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
	
	
	// 페이지 하는 메서드 
	public List<GuestBookDto> getList()
	{
		String sql = "select * from guestbook";
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<GuestBookDto> list = new Vector<>();
		
		try 
		{
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while ( rs.next() )
			{
				GuestBookDto dto = new GuestBookDto();
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
	
	//출력 하는메서드
	public GuestBookDto getData(String num)
	{
		GuestBookDto dto = new GuestBookDto();
		
		String sql = "select * from guest where num = ?";
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try 
		{
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString( 1, num);
			
			rs = pstmt.executeQuery();
			
			if( rs.next() )
			{
				dto.setNum( rs.getString("num") );
				dto.setSubject( rs.getString("subject") );
				dto.setWriteday( rs.getTimestamp("writeday") );
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
		
		return dto;
		
	}
	
}


