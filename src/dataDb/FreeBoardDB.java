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
	
	public void insertfree(FreeBoardDto dto)
	{
		String sql = "insert into freeboard values (seq_mini.nextval,?,sysdate,0,?,?,?)";
		
		Connection conn = db.getWooConnection();
		PreparedStatement pstmt = null;
		
		try 
		{
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString( 1, dto.getSubject() );
			pstmt.setString( 2, dto.getFreecontent() );
			pstmt.setString( 3, dto.getWriter_nickname() );
			pstmt.setString( 4, dto.getM_id() );
			
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
	
	public void deletefree(String num)
	{
		String sql = "delete from freeboard where num = ?";
		
		Connection conn = db.getWooConnection();
		PreparedStatement pstmt = null;
		
		try 
		{
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString( 1, num);
			
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
	
	public void updatefree(FreeBoardDto dto)
	{
		String sql = "update freeboard set subject= ?, freecontent = ? where num = ? ";
		
		Connection conn = db.getWooConnection();
		PreparedStatement pstmt = null;
		
		try 
		{
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString( 1, dto.getSubject() );
			pstmt.setString( 2, dto.getFreecontent() );
			pstmt.setString( 3, dto.getNum() );
			
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
	
	public List<FreeBoardDto> getList(int start, int end)
	{
		String sql="select a.* from (select ROWNUM as RNUM,b.* from (select * from freeboard order by num desc)b)a where a.RNUM >= ? and a.RNUM <= ?";
		
		List<FreeBoardDto> list = new Vector<>();
		
		Connection conn = db.getWooConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try 
		{
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt( 1, start );
			pstmt.setInt( 2, end );
			
			rs = pstmt.executeQuery();
			
			while ( rs.next() )
			{
				FreeBoardDto dto = new FreeBoardDto();
				dto.setNum( rs.getString("num") );
				dto.setSubject( rs.getString("subject") );
				dto.setReadcount( rs.getString("readcount") );
				dto.setWriteday( rs.getTimestamp("writeday") );
				dto.setWriter_nickname( rs.getNString("writer_nickname") );
				
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
	
	public void updateReadCount(String num) 
	{
		
		String sql = "update freeboard set readcount = readcount + 1 where num = ?";
		Connection conn = db.getWooConnection();
		PreparedStatement pstmt = null;
		
		try 
		{
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString( 1, num);
			
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
	
	public List<FreeBoardDto> getNumList(String num)
	{
		String sql = "select * from freeboard where num = ?";
		
		List<FreeBoardDto> list = new Vector<>();
		
		Connection conn = db.getWooConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try 
		{
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString( 1 , num);
			
			rs = pstmt.executeQuery();
			
			while ( rs.next() )
			{
				FreeBoardDto dto = new FreeBoardDto();
				dto.setNum( rs.getString("num") );
				dto.setSubject( rs.getString("subject") );
				dto.setWriteday( rs.getTimestamp("writeday") );
				dto.setFreecontent( rs.getString("freecontent") );
				dto.setWriter_nickname( rs.getNString("writer_nickname") );
				dto.setReadcount( rs.getString("readcount") );
				dto.setM_id( rs.getString("m_id") );
				
				
				
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
	
	public String getName(String id)
	{
		String name = "";
		String sql = "select nickname from member where id = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		conn = db.getWooConnection();
		
		try
		{
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString( 1, id);
			
			rs = pstmt.executeQuery();
			
			if( rs.next( ) )
			{
				name = rs.getString(1);
			}
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
		
		
		return name;
	}
	
	public String getCNickame(String num)
	{
		String name = "";
		String sql = "select writer_nickname from freeboard where num = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		conn = db.getWooConnection();
		
		try
		{
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString( 1, num);
			
			rs = pstmt.executeQuery();
			
			if( rs.next( ) )
			{
				name = rs.getString(1);
			}
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
		
		
		return name;
	}
	
	public int getTotalCount()
	{
		String sql = "select count(*) from freeboard";
		Connection conn = db.getWooConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int max = 0;
		
		try 
		{
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if( rs.next() )
			{
				max = rs.getInt(1);
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
		
		return max;
	}
	
	
}
