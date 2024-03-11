package com.cbt.dto;

public class CorrectVO {

	private int qcode;
	private int answer;
	public int getQcode() {
		return qcode;
	}
	public void setQcode(int qcode) {
		this.qcode = qcode;
	}
	public int getAnswer() {
		return answer;
	}
	public void setAnswer(int answer) {
		this.answer = answer;
	}
	
	@Override
	public String toString() {
		return "CorrectVO [qcode=" + qcode + ", answer=" + answer + "]";
	}
	

	
}
