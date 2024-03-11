package com.cbt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.cbt.dto.ScoreVO;
import com.community.dto.CommunityVO;

import util.DBManager;

public class ScoreDAO {

	private ScoreDAO() {
		
	}
	
	private static ScoreDAO instance = new ScoreDAO();
	
	public static ScoreDAO getInstance() {
	    return instance;
	}
	
	public ArrayList<ScoreVO> listScore(String session_id) {
	    ArrayList<ScoreVO> scoreList = new ArrayList<ScoreVO>();
	    String sql = "select * from score order by testday asc";

	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    try {
	      conn = DBManager.getConnection();
	      pstmt = conn.prepareStatement(sql);
	      rs = pstmt.executeQuery();
	      while (rs.next()) {
	    	  ScoreVO scoreVO = new ScoreVO();
	    	  scoreVO.setUserId(session_id);
	    	  scoreVO.setTestday(rs.getTimestamp("testday"));
	    	  scoreVO.setTestscore(rs.getInt("testscore"));
	    	  scoreList.add(scoreVO);
	      }
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
	    return scoreList;
	}
	
	
	
	public void insertScore(ScoreVO scoreVO, String session_id, Timestamp testday, int total) {
	    String sql = "insert into score (userid, testday, testscore) values(?, ?, ?)";

	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    try {
	      conn = DBManager.getConnection();
	      pstmt = conn.prepareStatement(sql);
	      pstmt.setString(1, session_id);
	      pstmt.setTimestamp(2, testday);
	      pstmt.setInt(3, total);
	      pstmt.executeUpdate();
	    } catch (Exception e) {
	      e.printStackTrace();
	    } finally {
	      DBManager.close(conn, pstmt);
	    }
	}
	
}
