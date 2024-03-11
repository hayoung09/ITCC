package user;

import java.sql.Timestamp;

public class UserDTO {
	private String id;
	private String pwd;
	private String username;
	private String userid;
	private Timestamp testday;
	private int testscore;

	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public Timestamp getTestday() {
        return testday;
    }

    public void setTestday(Timestamp testday) {
        this.testday = testday;
    }

    public int getTestscore() {
        return testscore;
    }

    public void setTestscore(int testscore) {
        this.testscore = testscore;
    }
	
	@Override
	public String toString() {
		return "UserDTO [id=" + id + ", pwd=" + pwd + ", username=" + username + ", userid=" + userid + 
				", testday=" + testday + ", testscore=" + testscore + "]";
	}

	
	
	
}
