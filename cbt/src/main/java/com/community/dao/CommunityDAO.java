package com.community.dao;

import java.sql.*;
import java.util.ArrayList;

import com.community.dto.CommunityVO;

import util.DBManager;

public class CommunityDAO {
	
	private CommunityDAO() {
		
	}
	
	private static CommunityDAO instance = new CommunityDAO();
	
	public static CommunityDAO getInstance() {
	    return instance;
	}
	
	public ArrayList<CommunityVO> listCommunity(String id) {
	    ArrayList<CommunityVO> qnaList = new ArrayList<CommunityVO>();
	    String sql = "select * from community order by num asc";

	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    try {
	      conn = DBManager.getConnection();
	      pstmt = conn.prepareStatement(sql);
	      rs = pstmt.executeQuery();
	      while (rs.next()) {
	        CommunityVO communityVO = new CommunityVO();
	        communityVO.setId(rs.getString("id"));
	        communityVO.setNum(Integer.parseInt(rs.getString(("num"))));
	        communityVO.setContent(rs.getString("content"));
	        communityVO.setTitle(rs.getString("title"));
	        communityVO.setWritedate(rs.getTimestamp("writedate"));
	        communityVO.setReadcount(rs.getInt("readcount"));
	        communityVO.setComments(rs.getString("comments"));
	        qnaList.add(communityVO);
	      }
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
	    return qnaList;
	}
	
	
	public CommunityVO getCommunity(int seq) {
		CommunityVO communityVO = null;
	    String sql = "select * from community where num=?";
	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    try {
	      conn = DBManager.getConnection();
	      pstmt = conn.prepareStatement(sql);
	      pstmt.setInt(1, seq);
	      rs = pstmt.executeQuery();
	      
	      if (rs.next()) {
	    	 communityVO = new CommunityVO();
	    	 communityVO.setNum(seq);
	    	 communityVO.setTitle(rs.getString("title"));
	    	 communityVO.setContent(rs.getString("content"));
	    	 communityVO.setWritedate(rs.getTimestamp("writedate"));
	    	 communityVO.setReadcount(rs.getInt("readcount"));
	    	 communityVO.setId(rs.getString("id"));
	      }
	    } catch (Exception e) {
	      e.printStackTrace();
	    } finally {
	      DBManager.close(conn, pstmt);
	    }
	    return communityVO;
	}
	
	
	public void insertCommunity(CommunityVO communityVO, String session_id) {
	    String sql = "insert into community (num, id, title, content) values(community_seq.nextval, ?, ?, ?)";

	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    try {
	      conn = DBManager.getConnection();
	      pstmt = conn.prepareStatement(sql);
	      pstmt.setString(1, session_id);
	      pstmt.setString(2, communityVO.getTitle());
	      pstmt.setString(3, communityVO.getContent());
	      pstmt.executeUpdate();
	    } catch (Exception e) {
	      e.printStackTrace();
	    } finally {
	      DBManager.close(conn, pstmt);
	    }
	}
	
	
	//update 게시판 조회수 카운트 모듈
	public void updateReadCount(int num) {
		String sql = "update community set readcount=readcount+1 where num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
}
