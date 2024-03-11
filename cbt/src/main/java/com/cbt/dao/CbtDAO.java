package com.cbt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cbt.dto.CbtVO;

import util.DBManager;





public class CbtDAO {
	private CbtDAO() {

	}

	private static CbtDAO instance = new CbtDAO();

	public static CbtDAO getInstance() {
		return instance;
	}

	public List<CbtVO> selectAllBoards() {
		String sql = "select * from cbt_question order by qcode Asc";
		List<CbtVO> list = new ArrayList<CbtVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				CbtVO cbtVO = new CbtVO();
				cbtVO.setSubject(rs.getString("subject"));
				cbtVO.setQsubject(rs.getString("qsubject"));
				cbtVO.setQcode(rs.getInt("qcode"));
				cbtVO.setQuestion(rs.getString("question"));
				cbtVO.setAns1(rs.getString("ans1"));
				cbtVO.setAns2(rs.getString("ans2"));
				cbtVO.setAns3(rs.getString("ans3"));
				cbtVO.setAns4(rs.getString("ans4"));
				cbtVO.setImg(rs.getString("img"));
				list.add(cbtVO);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}

	public void insertCbt(CbtVO cbtVO) {
		String sql = "insert into cbt_question(" + "subject, qsubject, qcode, question, ans1, ans2, ans3, ans4, img) "
				+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cbtVO.getSubject());
			pstmt.setString(2, cbtVO.getQsubject());
			pstmt.setInt(3, cbtVO.getQcode());
			pstmt.setString(4, cbtVO.getQuestion());
			pstmt.setString(5, cbtVO.getAns1());
			pstmt.setString(6, cbtVO.getAns2());
			pstmt.setString(7, cbtVO.getAns3());
			pstmt.setString(8, cbtVO.getAns4());
			pstmt.setString(9, cbtVO.getImg());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public CbtVO selectOneCbtByNum(String num) {
		String sql = "select * from cbt_question where qcode = ?";
		CbtVO cbtVO = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				cbtVO = new CbtVO();
				cbtVO.setSubject(rs.getString("subject"));
				cbtVO.setQsubject(rs.getString("qsubject"));
				cbtVO.setQcode(rs.getInt("qcode"));
				cbtVO.setQuestion(rs.getString("question"));
				cbtVO.setAns1(rs.getString("ans1"));
				cbtVO.setAns2(rs.getString("ans2"));
				cbtVO.setAns3(rs.getString("ans3"));
				cbtVO.setAns4(rs.getString("ans4"));
				cbtVO.setImg(rs.getString("img"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return cbtVO;
	}

	public void updateCbt(CbtVO cbtVO) {
		String sql = "update cbt_question set subject=?, qsubject=?,"
				+ " question=?, ans1=?, ans2=?, ans3=?, ans4=?, img=? where qcode=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, cbtVO.getSubject());
			pstmt.setString(2, cbtVO.getQsubject());
			pstmt.setString(3, cbtVO.getQuestion());
			pstmt.setString(4, cbtVO.getAns1());
			pstmt.setString(5, cbtVO.getAns2());
			pstmt.setString(6, cbtVO.getAns3());
			pstmt.setString(7, cbtVO.getAns4());
			pstmt.setString(8, cbtVO.getImg());
			pstmt.setInt(9, cbtVO.getQcode());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public void deleteCbt(String qcode) {
		String sql = "delete cbt_question where qcode=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, qcode);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
