package dataDb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.oracle.DbConnect;
import dataDto.qnaDto;

public class QnaDb {
	 
	DbConnect db=new DbConnect();
	
	public void insertQna(qnaDto dto)
	{
		String sql="insert into qna values (seq_num.nextval,?,?,?,sysdate)";
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		try
		{
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getNickname());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getContent());
			
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
	
	public void updateReply(String num)
	{
		String sql="update qna set recontent,sysdate where num=?";
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		try
		{
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, num);
			
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
	
	public List<qnaDto> getList()
	{
		String sql="select * from qna";
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		List<qnaDto> list=new Vector<qnaDto>();
		
		try {
			pstmt=conn.prepareStatement(sql);
						
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				qnaDto dto=new qnaDto();
				dto.setNum(rs.getString("num"));
				dto.setNickname(rs.getString("nickname"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setWrite_date(rs.getTimestamp("write_date"));
				dto.setRecontent(rs.getString("recontent"));
				dto.setReply_date(rs.getTimestamp("reply_date"));
				
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
