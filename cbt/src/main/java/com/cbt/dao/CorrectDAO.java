package com.cbt.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cbt.dto.CorrectVO;

import util.DBManeger;

public class CorrectDAO {

	private CorrectDAO() {
		
	}
	
	private static CorrectDAO instance = new CorrectDAO();

	public static CorrectDAO getInstance() {
		return instance;
	}
	
	public List<CorrectVO> selectCorrect() {   //정답 번호 가져오기
		String sql = "select * from correct order by qcode asc";

		List<CorrectVO> correctlist = new ArrayList<CorrectVO>();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManeger.getConnection(); 
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql); 

			while (rs.next()) {
				CorrectVO co = new CorrectVO();
				co.setQcode(rs.getInt("qcode"));
				co.setAnswer(rs.getInt("answer"));			
				correctlist.add(co);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManeger.close(conn, stmt, rs);
		}

		return correctlist;
	}
	
}
