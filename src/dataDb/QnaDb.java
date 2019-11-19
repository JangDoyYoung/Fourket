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
		String sql="insert into qna (num,nickname,title,content,write_date,reply_date) values (seq_mini.nextval,?,?,?,sysdate,sysdate)";
		
		Connection conn=db.getWooConnection();
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
	
	public void updateReply(String recontent, String num)
	{
		String sql="update qna set recontent=?,replyok=0,reply_date=sysdate where num=?";
		
		Connection conn=db.getWooConnection();
		PreparedStatement pstmt=null;
		
		try
		{
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, recontent);
			pstmt.setString(2, num);
			
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
		String sql="select * from qna order by num desc";
		
		Connection conn=db.getWooConnection();
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
				dto.setReplyok(rs.getString("replyok"));
				
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
	
	// 클릭 시 해당 글 데이타 출력
	public List<qnaDto> getData(String num)
	{
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<qnaDto> list=new Vector<qnaDto>();
		
		String sql="select * from qna where num=?";
		
		conn=db.getWooConnection();
		try
		{
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, num);
			
			rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				qnaDto dto=new qnaDto();
				dto.setNum(rs.getString("num"));
				dto.setNickname(rs.getString("nickname"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setRecontent(rs.getString("recontent"));
				dto.setReplyok(rs.getString("replyok"));
				dto.setWrite_date(rs.getTimestamp("write_date"));
				dto.setReply_date(rs.getTimestamp("reply_date"));
				
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
	
	// 아이디에 해당하는 닉네임 반환
		  public String getNickname(String id)
		  {
			  String nickname="";
			  String sql="select nickname from member where id=?";
			  
			  Connection conn=db.getWooConnection();
			  PreparedStatement pstmt=null;
			  ResultSet rs=null;
			  
			  try 
			  {
				pstmt=conn.prepareStatement(sql);
				
				pstmt.setString(1, id);
				
				rs=pstmt.executeQuery();
				
				if(rs.next())
					nickname=rs.getString(1);
					
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
			  
			  return nickname;
		  }

}
