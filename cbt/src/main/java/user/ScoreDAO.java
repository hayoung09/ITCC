package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class ScoreDAO {
	private ScoreDAO() {
		
	}
	
	 private static ScoreDAO instance = new ScoreDAO();
	   
	   public static ScoreDAO getInstance() {
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

	 
	 public List<UserDTO> getTestScores(String userid) {
		    List<UserDTO> userScores = new ArrayList<>();
		    Connection conn = null;
		    PreparedStatement pstmt = null;
		    ResultSet rs = null;

		    try {
		    	
		        // 데이터베이스 연결 설정
		        conn = getConnection();
		        System.out.println("연결됨 ");
		        String sql = "SELECT score.testday, score.testscore FROM score LEFT JOIN userInf ON score.userid = userInf.id WHERE score.userid = ?";

		        pstmt = conn.prepareStatement(sql);
		        pstmt.setString(1, userid); // 사용자 ID 설정
		        rs = pstmt.executeQuery();

		        while (rs.next()) {
		            UserDTO userDTO = new UserDTO();
		            userDTO.setTestday(rs.getTimestamp("testday"));
		            userDTO.setTestscore(rs.getInt("testscore"));
		            userScores.add(userDTO);
		        }

		    } catch (Exception e) {
		       System.out.println(e.getMessage());
		    } finally {
		        try {
		        	if(rs!=null)
		        		rs.close();
		        	if(pstmt!=null)
		        		pstmt.close();
		        	if(conn!=null)
		        		conn.close();
		        }
		        catch(Exception e) {
		        	e.printStackTrace();
		        }
		    }
		    
		    return userScores;
		}
    
    
}