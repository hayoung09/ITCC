package com.community.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.community.dto.CommentsVO;

import util.DBManager;

public class CommentsDAO {
	
	private CommentsDAO() {
		
	}
	
	private static CommentsDAO instance = new CommentsDAO();
	
	public static CommentsDAO getInstance() {
	    return instance;
	}
	
	
	public ArrayList<CommentsVO> listComments(String id) {
	    ArrayList<CommentsVO> commentsList = new ArrayList<CommentsVO>();
	    String sql = "select * from comments order by num asc";

	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    try {
	      conn = DBManager.getConnection();
	      pstmt = conn.prepareStatement(sql);
	      rs = pstmt.executeQuery();
	      
	      while (rs.next()) {
	    	  CommentsVO commentsVO = new CommentsVO();
	    	  commentsVO.setId(rs.getString("id"));
	    	  commentsVO.setNum(Integer.parseInt(rs.getString(("num"))));
	    	  commentsVO.setComments(rs.getString("comments"));
	    	  commentsList.add(commentsVO);
	      }
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
	    return commentsList;
	}
	
	
	
	//게시판 댓글달기 삽입 모듈
	public void insertComments(CommentsVO commentsVO, String session_id) {
		String sql = "insert into comments (num, id, comments) values(comments_seq.nextval, ?, ?)";

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
		  conn = DBManager.getConnection();
		  pstmt = conn.prepareStatement(sql);
		  pstmt.setString(1, session_id);
		  pstmt.setString(2, commentsVO.getComments());
		  pstmt.executeUpdate();
		} catch (Exception e) {
		  e.printStackTrace();
		} finally {
		  DBManager.close(conn, pstmt);
		}
	}
	
	
	public CommentsVO getComments(int seq) {
		CommentsVO commentsVO = null;
	    String sql = "select * from comments where num=?";
	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    try {
	      conn = DBManager.getConnection();
	      pstmt = conn.prepareStatement(sql);
	      pstmt.setInt(1, seq);
	      rs = pstmt.executeQuery();
	      
	      if (rs.next()) {
	    	  commentsVO = new CommentsVO();
	    	  commentsVO.setNum(seq);
	    	  commentsVO.setComments(rs.getString("comments"));
	    	  commentsVO.setId(rs.getString("id"));
	      }
	    } catch (Exception e) {
	      e.printStackTrace();
	    } finally {
	      DBManager.close(conn, pstmt);
	    }
	    return commentsVO;
	}
	
	
}
