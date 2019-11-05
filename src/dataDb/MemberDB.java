package dataDb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.oracle.DbConnect;
import dataDto.MemberDto;

public class MemberDB {
	DbConnect db = new DbConnect();

public	void insertMember(MemberDto dto)
	{
		String sql="insert into member values (seq_mini.nextval,?,?,?,?,?,?,sysdate)";
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
	
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,dto.getName());
			pstmt.setString(2, dto.getNickname());
			pstmt.setString(3, dto.getId());
			pstmt.setString(4, dto.getPass());
			pstmt.setString(5, dto.getEmail1());
			pstmt.setString(6, dto.getEmail2());
		
			pstmt.execute();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	public boolean idSearch(String id)
	{
		boolean find = false;
		String sql = "select * from member where id=?";
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs=pstmt.executeQuery();
			
			if(rs.next())
				find=true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return find;
	}
	public List<MemberDto> getAllMember()
	{
		String sql="select * from member order by num asc";
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<MemberDto> list=new Vector<MemberDto>();
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				MemberDto dto = new MemberDto();
				
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setNickname(rs.getString("nickname"));
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setEmail1(rs.getString("email1"));
				dto.setEmail2(rs.getString("email2"));
				dto.setGaipday(rs.getTimestamp("gaipday"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return list;
		
	}
public MemberDto getData(String num)
{
	MemberDto dto = new MemberDto();
	Connection conn = db.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs=null;
	String sql="select * from member where num=?";
	
	try {
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, num);
		
		rs=pstmt.executeQuery();
		
		if(rs.next())
		{
			dto.setNum(rs.getString("num"));
			dto.setName(rs.getString("name"));
			dto.setNickname(rs.getString("nickname"));
			dto.setId(rs.getString("id"));
			dto.setPass(rs.getString("pass"));
			dto.setEmail1(rs.getString("email1"));
			dto.setEmail2(rs.getString("email2"));
			dto.setGaipday(rs.getTimestamp("gaipday"));
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		db.dbClose(rs, pstmt, conn);
	}
		return dto;
}

public void updateMember(MemberDto dto)
{
	Connection conn = db.getConnection();
	PreparedStatement pstmt = null;
	String sql="update member set name=?,nickname=?,pass=?,email1=?,email2=? where num=?";
	
	try {
		pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, dto.getName());
		pstmt.setString(2, dto.getNickname());
		pstmt.setString(3, dto.getPass());
		pstmt.setString(4, dto.getEmail1());
		pstmt.setString(5, dto.getEmail2());
		pstmt.setString(6, dto.getNum());
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		db.dbClose(pstmt, conn);
	}
}
public boolean isEqualPass(String num, String pass)
{
	boolean b=false;
	Connection conn = db.getConnection();
	PreparedStatement pstmt = null;
	String sql="select count(*) from member where num=? and pass=?";
	ResultSet rs = null;
	
	try {
		pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, num);
		pstmt.setString(2, pass);
		
		rs=pstmt.executeQuery();
		
		if(rs.next())
		{
			if(rs.getInt(1)==1)
				
				b=true;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		db.dbClose(rs, pstmt, conn);
	}	
		return b;
}
public boolean islogin(String id, String pass)
{
	boolean b=false;
	Connection conn = db.getConnection();
	PreparedStatement pstmt = null;
	String sql="select * from member where id=? and pass=?";
	ResultSet rs = null;
	
	try {
		pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		pstmt.setString(2, pass);
		
		rs=pstmt.executeQuery();
		
		if(rs.next())
		{
			b=true;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		db.dbClose(rs, pstmt, conn);
	}
		return b;
}
public void deleteMember(String num)
{
	String sql = "delete from member where num";
	Connection conn = db.getConnection();
	PreparedStatement pstmt = null;
	
	try {
		pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, num);
		
		pstmt.execute();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		db.dbClose(pstmt, conn);
	}
  }
}
