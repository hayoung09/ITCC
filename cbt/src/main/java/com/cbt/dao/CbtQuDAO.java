package com.cbt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cbt.dto.CbtQuVO;
import com.cbt.dto.CbtVO;
import com.cbt.dto.CorrectVO;

import util.DBManager;
import util.DBManeger;

public class CbtQuDAO {
   private CbtQuDAO() {

   }

   private static CbtQuDAO instance = new CbtQuDAO();

   public static CbtQuDAO getInstance() {
      return instance;
   }

   // 페이징

   public List<CbtVO> selectEvenCbt(int pageNum, int amount) {

      List<CbtVO> evenlist = new ArrayList<>();
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      String sql = "select * "
            +     "from (select rownum rn,"
            +                " a.* "
            +          "from (select *"
            +              " from cbt_question order by qcode asc) a ) "
            +     "where rn > ? and rn <= ? and Mod(qcode,2)=0 ";
      

      try {
         conn = DBManeger.getConnection(); // 연결

         pstmt = conn.prepareStatement(sql); // sql준비
         pstmt.setInt(1, (pageNum - 1) * amount);
         pstmt.setInt(2, pageNum * amount);

         rs = pstmt.executeQuery(); // sql문 실행

         while (rs.next()) {
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

            evenlist.add(vo);
         }

      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         DBManeger.close(conn, pstmt, rs);
      }

      return evenlist;
   }

   public List<CbtVO> selectOddCbt(int pageNum, int amount) {

      List<CbtVO> oddlist = new ArrayList<>();
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      String sql = "select * "
            +     "from (select rownum rn,"
            +                " a.* "
            +          "from (select *"
            +              " from cbt_question order by qcode asc) a ) "
            +     "where rn > ? and rn <= ? and Mod(qcode,2)=1 ";

      

      try {
         conn = DBManeger.getConnection(); // 연결

         pstmt = conn.prepareStatement(sql); // sql준비
         pstmt.setInt(1, (pageNum - 1) * amount);
         pstmt.setInt(2, pageNum * amount);

         rs = pstmt.executeQuery(); // sql문 실행

         while (rs.next()) {
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

            oddlist.add(vo);
         }

      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         DBManeger.close(conn, pstmt, rs);
      }

      return oddlist;
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
   
   public List<CbtQuVO> selectAnswerCheck() {
      String sql = "select * from cbt_question order by qcode asc";
      
      List<CbtQuVO> cbtchecklist = new ArrayList<CbtQuVO>();
      
      Connection conn = null;
      Statement stmt = null;
      ResultSet rs = null;
      
      try {
         conn = DBManager.getConnection();
         stmt = conn.createStatement();
         rs = stmt.executeQuery(sql);
         
         while (rs.next()) {
            CbtQuVO cbtQuVO = new CbtQuVO();
            cbtQuVO.setSubject(rs.getString("subject"));
            cbtQuVO.setQsubject(rs.getString("qsubject"));
            cbtQuVO.setQcode(rs.getInt("qcode"));
            cbtQuVO.setQuestion(rs.getString("question"));
            cbtQuVO.setAns1(rs.getString("ans1"));
            cbtQuVO.setAns2(rs.getString("ans2"));
            cbtQuVO.setAns3(rs.getString("ans3"));
            cbtQuVO.setAns4(rs.getString("ans4"));
            cbtQuVO.setImg(rs.getString("qimg"));
            cbtQuVO.setInfo(rs.getString("info"));
            cbtQuVO.setAnswer(rs.getInt("answer"));
            cbtQuVO.setTestdate(rs.getTimestamp("testdate"));
            cbtchecklist.add(cbtQuVO);
         }
         

      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         DBManeger.close(conn, stmt, rs);
      }
      return cbtchecklist;
   }
   
   
   public List<CbtQuVO> getList(int pageNum, int amount){
      
      List<CbtQuVO> list = new ArrayList<>();
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      
      String sql = "select * "
            +     "from (select rownum rn,"
            +                " a.* "
            +          "from (select *"
            +              " from cbt_question order by qcode asc) a ) "
            +     "where rn > ? and rn <= ?";
      
      try {
         conn = DBManager.getConnection(); // 연결
         
         pstmt = conn.prepareStatement(sql); // sql준비
         pstmt.setInt(1, (pageNum - 1) * amount);
         pstmt.setInt(2, pageNum * amount);
         
         rs = pstmt.executeQuery(); // sql문 실행
         
         while(rs.next()) {
            // 한바퀴 회전당 VO를 하나씩 생성
            CbtQuVO vo = new CbtQuVO();
            
            vo.setSubject(rs.getString("subject"));
            vo.setQsubject(rs.getString("qsubject"));
            vo.setQcode(rs.getInt("qcode"));
            vo.setQuestion(rs.getString("question"));
            vo.setAns1(rs.getString("ans1"));
            vo.setAns2(rs.getString("ans2"));
            vo.setAns3(rs.getString("ans3"));
            vo.setAns4(rs.getString("ans4"));
            vo.setImg(rs.getString("qimg"));
            vo.setInfo(rs.getString("info"));
            vo.setAnswer(rs.getInt("answer"));
            vo.setTestdate(rs.getTimestamp("testdate"));

            
            list.add(vo);
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         DBManager.close(conn, pstmt, rs);
      }
      
      return list;
   }
   
   
   
   

}