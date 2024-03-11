package com.cbt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cbt.dto.CbtVO;

import util.DBManager;

public class testDAO {
	private testDAO() {

	}

	private static testDAO instance = new testDAO();

	public static testDAO getInstance() {
		return instance;
	}
	
	public List<CbtVO> getList(int pageNum, int amount){
		
		List<CbtVO> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * "
				+ 	 "from (select rownum rn,"
				+ 				   " a.* "
				+ 			"from (select *"
				+ 				 " from cbt_question order by qcode asc) a ) "
				+ 	 "where rn > ? and rn <= ?";
		
		try {
			conn = DBManager.getConnection(); // 연결
			
			pstmt = conn.prepareStatement(sql); // sql준비
			pstmt.setInt(1, (pageNum - 1) * amount);
			pstmt.setInt(2, pageNum * amount);
			
			rs = pstmt.executeQuery(); // sql문 실행
			
			while(rs.next()) {
				// 한바퀴 회전당 VO를 하나씩 생성
				CbtVO vo = new CbtVO();
				
				vo.setSubject(rs.getString("subject"));
				vo.setQsubject(rs.getString("qsubject"));
				vo.setQcode(rs.getInt("qcode"));
				vo.setQuestion(rs.getString("question"));
				vo.setAns1(rs.getString("ans1"));
				vo.setAns2(rs.getString("ans2"));
				vo.setAns3(rs.getString("ans3"));
				vo.setAns4(rs.getString("ans4"));

				
				list.add(vo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return list;
	}
	
	public int getTotal() {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select count(*) as total from cbt_question";
		
		try {
			conn = DBManager.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt("total");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		
		return result;
	}
}	
