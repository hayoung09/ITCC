package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import user.UserDTO;



public class UserDAO {
	private UserDAO() {
		
	}
	
	 private static UserDAO instance = new UserDAO();
	   
	   public static UserDAO getInstance() {
	      return instance;
	   }
	   
	   
	   
	   public Connection getConnection() throws Exception {
	      Connection conn = null;
	      
	      Context init = new InitialContext();
	      Context env = (Context)init.lookup("java:/comp/env");
	      DataSource ds = (DataSource)env.lookup("jdbc/cbt");
	      conn = ds.getConnection();
	      return conn;
	      
	   }
	   
	   public int userCheck(String userid, String pwd) {
		      int result = -1;
		      String sql = "select pwd from userInf where id=?";
		      Connection conn = null;
		      PreparedStatement pstmt = null;
		      ResultSet rs = null;
		      System.out.println(userid + "   " + pwd);
		      
		      try {
		         conn = getConnection();
		         pstmt = conn.prepareStatement(sql);
		         pstmt.setString(1, userid);
		         rs = pstmt.executeQuery();
		         if(rs.next()) {
		            if(rs.getString("pwd") != null && rs.getString("pwd").equals(pwd)) {
		               result = 1;  // 아이디와 패스워드가 일치
		            }else {
		               result = 0; // 아이디는 있는데 패스워드가 일치하지 않을때
		            }
		         }else {
		            result = -1;  // 아이디도 존재하지 않을때
		            
		         }
		         
		         
		      }catch(Exception e) {
		         e.printStackTrace();
		      }finally {
		         try {
		            if(rs != null)
		               rs.close();
		            if(pstmt != null)
		               pstmt.close();
		            if(conn != null)
		               conn.close();
		         }catch(Exception e) {
		            e.printStackTrace();
		         }
		      }
		      return result;
		   
		   }
	   
	   public UserDTO getUser(String userid) {
		   UserDTO uDto = null;
		   String sql="select * from userInf where id=?";
		   Connection conn = null;
		   PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   try {
			   conn= getConnection();
			   pstmt = conn.prepareStatement(sql);
			   pstmt.setString(1, userid);
			   rs=pstmt.executeQuery();
			   if(rs.next()) {
				   uDto = new UserDTO();
				   uDto.setId(rs.getString("id"));
				   uDto.setPwd(rs.getString("pwd"));
				   uDto.setUsername(rs.getString("username"));
			   }
			   
		   }catch(Exception e) {
			   e.printStackTrace();
		   }finally {
			   try {
				   if(rs!=null)
					   rs.close();
				   if(pstmt!=null)
					   pstmt.close();
				   if(conn!=null)
					   conn.close();
			   }catch(Exception e) {
				   
			   }
			   
		   }
		   return uDto;
	   }
	   
	   public int confirm(String userid) {
		   int result = -1;
		   String sql = "select id from userInf where id=?";
		   Connection conn = null;
		   PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   
		   try {
			   conn = getConnection();
			   pstmt = conn.prepareStatement(sql);
			   pstmt.setString(1, userid);
			   rs= pstmt.executeQuery();
			   
			   if(rs.next()) {
				   result=1; //아이디가 존재할 때
			   }else {
				   result=-1; //아이디가 존재하지 않을 때
			   }
		   }catch(Exception e){
			   e.printStackTrace();
		   }finally {
			   try {
				   if(rs!= null)
					   rs.close();
				   if(pstmt!= null)
					   pstmt.close();
				   if(conn!= null)
					   conn.close();
			   }catch(Exception e){
				   e.printStackTrace();
			   }finally {
				   
			   }
		   }
		   return result;
	   }
	   
	   
	   
		/*
		 * public int userscore(String userid, Timestamp testday, int testscore) { int
		 * userScores = -1; String sql = "SELECT score.testday, score.testscore " +
		 * "FROM score " + "LEFT JOIN userInf ON score.userid = userInf.id " +
		 * "WHERE score.userid = ? AND score.testday = ? AND score.testscore = ?";
		 * Connection conn = null; PreparedStatement pstmt = null; ResultSet rs = null;
		 * System.out.println("디비연동완료");
		 * 
		 * try { conn = getConnection(); pstmt = conn.prepareStatement(sql);
		 * pstmt.setString(1, userid); pstmt.setTimestamp(2, testday); pstmt.setInt(3,
		 * testscore); rs = pstmt.executeQuery();
		 * 
		 * if(rs.next()) { userScores =1; // 시험점수가 존재할 때 }else { userScores =-1; //
		 * 시험점수가 존재하지 않을 때 } } catch(Exception e) { e.printStackTrace(); } finally { try
		 * { if(rs!=null) rs.close(); if(pstmt!=null) pstmt.close(); if(conn!=null)
		 * conn.close(); } catch(Exception e) { e.printStackTrace(); } } return
		 * userScores;
		 * 
		 * 
		 * }
		 */
	   
	   
	   
	   
	 //회원가입 메소드
	   public int insertMember(UserDTO uDto) {
		   int result=-1;
		   String sql="insert into userInf values(?,?,?)";
		   Connection conn = null;
		   PreparedStatement pstmt = null;
		   try {
			   conn= getConnection();
			   pstmt= conn.prepareStatement(sql);
			   pstmt.setString(1, uDto.getId());
			   pstmt.setString(2, uDto.getPwd());
			   pstmt.setString(3, uDto.getUsername());
			   result = pstmt.executeUpdate();
			   System.out.println("가입완료");
		   }catch(Exception e){
			   e.printStackTrace();
			   
		   }finally {
			   try {
				   if(pstmt!= null)
					   pstmt.close();
				   if(conn!=null)
					   conn.close();
			   }catch(Exception e) {
				   
			   }
		   }
		   return result;
	   }
	   
	   //회원 정보 수정에 대한 메소드
	   public int updateMember(String userid, String currentPwd, String newPwd) {
		   int result = -1;
		   String sql= "UPDATE userInf SET pwd = ? WHERE id = ? AND pwd = ?";
		   Connection conn = null;
		   PreparedStatement pstmt = null;
		   try {
			   System.out.println("사용자가 입력한 값 : " + userid+ ", " + currentPwd + ", " + newPwd);
			   conn= getConnection();
			   pstmt= conn.prepareStatement(sql);
			   pstmt.setString(1, newPwd);
			   pstmt.setString(2, userid);
			   pstmt.setString(3, currentPwd);
			   System.out.println("연결완료");
			   result = pstmt.executeUpdate();
			   System.out.println("결과 : " + result);
		   }catch(Exception e) {
			   e.printStackTrace();
		   }finally {
			   try {
				   if(pstmt!= null)
					   pstmt.close();
				   if(conn!=null)
					   conn.close();
			   }catch(Exception e) {
				   
			   }
		   }
		   return result;
	   }
	   
	   
	   
	   //회원 탈퇴에 대한 메소드
	   public int deleteMember(String userid, String pwd) {
		   int result = -1;
		   String sql = "delete from userInf where id = ? AND pwd = ?";
		   Connection conn = null;
		   PreparedStatement pstmt = null;
		   try {
			   conn = getConnection();
			   System.out.println("계정 값 : " + userid+ ", " + pwd);
			   pstmt = conn.prepareStatement(sql);
			   pstmt.setString(1, userid);
			   pstmt.setString(2, pwd);
			   result = pstmt.executeUpdate();
		   }
		   catch(Exception e) {
			   e.printStackTrace();
		   }
		   finally {
			   try {
				   if(pstmt!=null)
					   pstmt.close();
				   if(conn!=null)
					   conn.close();
			   }
			   catch(Exception e) {
				   
			   }
		   }
		   return result;
	   }
	   

	   
	   
	   public int confirmNick(String nickname) {
			int result = -1;
			String sql = "select username from userInf where username=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				conn=getConnection();
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, nickname);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					result = 1; //id가 존재
				}else {
					result = -1; //id가 존재하지 않음
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if(rs != null)
						rs.close();
					if(pstmt != null)
						pstmt.close();
					if(conn != null)
						conn.close();
				}catch (Exception e) {
					e.printStackTrace();
				}finally {
					
				}	
			}
			return result;
			
		}
	
}