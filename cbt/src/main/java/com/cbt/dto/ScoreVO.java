package com.cbt.dto;

import java.sql.Timestamp;

public class ScoreVO {

	private String userid;
	private Timestamp testday;
	private int testscore;
	
	public String getUserId() {
		return userid;
	}
	public void setUserId(String userid) {
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
		return "ScoreVO [userid=" + userid + ", testday=" + testday + ", testscore=" + testscore + "]";
	}
		
}
